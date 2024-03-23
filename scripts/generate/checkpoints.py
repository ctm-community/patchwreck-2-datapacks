import errno
import json
import os
import textwrap
from dataclasses import dataclass
from pathlib import Path
from typing import Any, Self

from scripts.mcuuid import MCUUID


class Coordinates(tuple[int, int, int]):
    def __new__(cls, x: int, y: int, z: int) -> Self:
        return super().__new__(cls, (x, y, z))

    @property
    def x(self) -> int:
        return self[0]

    @property
    def y(self) -> int:
        return self[1]

    @property
    def z(self) -> int:
        return self[2]

    def __repr__(self) -> str:
        return f"{self.__class__.__name__}(x={self[0]}, y={self[1]}, z={self[2]})"


class Rotation(tuple[int, int]):
    def __new__(cls, yaw: int, pitch: int) -> Self:
        return super().__new__(cls, (yaw, pitch))

    @property
    def yaw(self) -> int:
        return self[0]

    @property
    def pitch(self) -> int:
        return self[1]

    def __repr__(self) -> str:
        return f"{self.__class__.__name__}(yaw={self[1]}, pitch={self[2]})"


@dataclass(frozen=True)
class Checkpoint:
    name: str
    coordinates: Coordinates
    rotation: Rotation


Checkpoints = list[Checkpoint]
Dimension = str


def generate_checkpoints(mcfunction: Path, data: dict[Dimension, Checkpoints]):
    checkpoint_id = 1
    entity_data_template = textwrap.dedent(
        """
        {{
        Tags: ["patchwreck.checkpoint"], 
        CustomName: '{{"text":"{name}","color":"green"}}', 
        Pos: [{x}.0d, {y}.0d, {z}.0d], 
        Rotation: [{yaw}.0f, 0.0f], 
        transformation: {{translation: [{dx}.0f, 0.0f, {dy}.0f]}}, 
        block_state: {{Name: "minecraft:respawn_anchor", Properties: {{charges: "4"}}}}
        }}
        """
    ).replace("\n", "")
    with mcfunction.open("w") as file:
        file.write("#> patchwreck:load/checkpoints\n")
        for dimension, checkpoints in data.items():
            for checkpoint in checkpoints:
                mcuuid = MCUUID()

                # Translate block display based on calculated displacement from yaw storage
                yaw = checkpoint.rotation.yaw
                dx = -1 if yaw <= -90 else 0
                dy = -1 if yaw >= 90 or yaw < -90 else 0

                entity_data = entity_data_template.format(
                    name=checkpoint.name,
                    x=(x := checkpoint.coordinates.x),
                    y=(y := checkpoint.coordinates.y) - 1,
                    z=(z := checkpoint.coordinates.z),
                    yaw=checkpoint.rotation.yaw,
                    dx=dx,
                    dy=dy,
                )
                biome = (
                    "patchwreck:monument_checkpoint"
                    if dimension == "minecraft:overworld"
                    else f"{dimension}_checkpoint"
                )
                file.write(
                    textwrap.dedent(f"""
                        execute in {dimension} run fillbiome {x-1} {y-1} {z-1} {x+1} {y+1} {z+1} {biome}
                        execute in {dimension} run setblock {x} {y} {z} minecraft:light[level=12,waterlogged=false]
                        execute in {dimension} run setblock {x} {y-1} {z} minecraft:barrier[waterlogged=false]
                        execute in {dimension} positioned {x}.0 {y-1}.0 {z}.0 if loaded ~ ~ ~ run summon minecraft:block_display ~ ~ ~ {{UUID: {mcuuid.nbt}}}
                        data merge entity {mcuuid} {entity_data}
                        scoreboard players set {mcuuid} patchwreck.checkpoint {checkpoint_id}
                        scoreboard players display name {mcuuid} patchwreck.checkpoint {{"text":"{checkpoint.name}","color":"green"}}
                    """)
                )
                checkpoint_id += 1
            checkpoint_id = (checkpoint_id // 10 + 1) * 10 + 1


if __name__ == "__main__":
    workspace = Path.cwd() / "patchwreck.code-workspace"
    if not workspace.is_file():
        raise FileNotFoundError(
            errno.ENOENT,
            os.strerror(errno.ENOENT),
            workspace.as_posix(),
        )

    checkpoints_json = Path.cwd() / "checkpoints.json"
    if not checkpoints_json.is_file():
        raise FileNotFoundError(
            errno.ENOENT,
            os.strerror(errno.ENOENT),
            checkpoints_json.as_posix(),
        )

    checkpoint_id = 1

    def checkpoint_json_hook(data: dict[str, Any]) -> Checkpoint | dict[Dimension, Checkpoints]:  # fmt: skip
        global checkpoint_id
        try:
            return Checkpoint(
                data["name"],
                Coordinates(*data["coordinates"]),
                Rotation(*data["rotation"]),
            )
        except KeyError:
            return data

    with checkpoints_json.open("r") as file:
        dimension_checkpoints = json.load(file, object_hook=checkpoint_json_hook)

    mcfunction = Path.cwd() / "patchwreck" / "data" / "patchwreck" / "functions" / "load" / "checkpoints.mcfunction"  # fmt: skip
    generate_checkpoints(mcfunction, dimension_checkpoints)
