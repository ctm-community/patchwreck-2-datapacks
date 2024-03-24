import errno
import json
import os
import textwrap
from dataclasses import dataclass
from pathlib import Path
from typing import Any, Self, cast

from scripts.mcuuid import MCUUID2

CAMERA_UUID = "e2fd7a71-6b0d-4012-b126-a0b021afdcca"


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
class CameraPosition:
    coordinates: Coordinates
    rotation: Rotation


@dataclass(frozen=True)
class TextDisplay:
    text: str
    coordinates: Coordinates


Dimension = str
TextDisplays = list[TextDisplay]


def generate_credits(
    mcfunction: Path,
    data: dict[Dimension, list[dict[str, CameraPosition | TextDisplays]]],
) -> None:
    with mcfunction.open("w") as file:
        file.write(
            textwrap.dedent(
                """
                #> patchwreck:monument/credits

                execute if score $credits patchwreck.timers matches 0 run title @a times 20t 160t 20t
                execute if score $credits patchwreck.timers matches 0 run title @a title {"text":"Congratulations!"}
                execute if score $credits patchwreck.timers matches 0 run title @a subtitle {"text":"Thank you for playing Patchwreck II!"}
                """
            )[1:]
        )

        dimension_name = {
            "patchwreck:gothic": "Grim and Gothic",
            "patchwreck:tomb": "Egyptian Tomb",
            "patchwreck:wasteland": "Nuclear Wasteland",
            "patchwreck:grove": "Enchanted Grove",
            "patchwreck:metropolis": "Neon Metropolis",
        }
        dimension_view = {
            "patchwreck:gothic": "75.24 49.37 137.41 -112.11 16.89",
            "patchwreck:tomb": "11.63 109.30 72.82 -105.12 3.96",
            "patchwreck:wasteland": "109.32 18.70 99.43 -45.94 13.57",
            "patchwreck:grove": "184.20 131.22 142.45 -212.31 11.13",
            "patchwreck:metropolis": "104.89 110.82 107.65 616.33 15.09",
        }
        init_dimension = textwrap.dedent(
            """
            execute if score $credits patchwreck.timers matches {timer} in {dimension} run teleport {mcuuid} {view}
            execute if score $credits patchwreck.timers matches {timer} in {dimension} run teleport @a {view}
            execute if score $credits patchwreck.timers matches {timer} run title @a times 10t 80t 10t
            execute if score $credits patchwreck.timers matches {timer} run title @a title {{"text":""}}
            execute if score $credits patchwreck.timers matches {timer} run title @a subtitle {{"text":"{dimension_name}"}}
            """
        )

        timer = 200
        cross_dimension_fixes: list[str] = [
            "# Player has to stop spectating and re-spectate display entity when crossing dimensions\n"
        ]
        for dimension, camera_angles in data.items():
            cross_dimension_fixes.append(
                f"execute if score $credits patchwreck.timers matches {timer-5}..{timer+5} as @a[gamemode=spectator] at @s run spectate\n"
            )
            file.write(
                init_dimension.format(
                    timer=timer,
                    dimension=dimension,
                    dimension_name=dimension_name[dimension],
                    mcuuid=CAMERA_UUID,
                    view=dimension_view[dimension],
                )
            )
            # Show dimension title for 100 ticks
            timer += 100

            for camera_angle in camera_angles:
                camera = cast(CameraPosition, camera_angle["camera"])
                displays = cast(TextDisplays, camera_angle["displays"])

                file.write(
                    f"\nexecute if score $credits patchwreck.timers matches {timer} in {dimension} "
                    f"run teleport {CAMERA_UUID} {camera.coordinates.x} {camera.coordinates.y} {camera.coordinates.z} {camera.rotation.yaw} {camera.rotation.pitch}\n"
                )
                timer += 20
                for display in displays:
                    file.write(
                        f"execute if score $credits patchwreck.timers matches {timer} in {dimension} "
                        f"run summon minecraft:text_display {display.coordinates.x} {display.coordinates.y} {display.coordinates.z} "
                        f'{{UUID: {MCUUID2().nbt}, billboard: "center", transformation: {{left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], translation: [0f, 0f, 0f], scale: [10f, 10f, 10f]}}, text: \'{{"text": "{display.text}"}}\'}}\n'
                    )
                    timer += 20

        file.write(
            textwrap.dedent(
                f"""
                # Force player to spectate target
                execute if score $credits patchwreck.timers matches 200..{timer} run gamemode spectator @a[gamemode=!spectator]
                execute if score $credits patchwreck.timers matches 205..{timer} as @a[gamemode=spectator] at @s run spectate e2fd7a71-6b0d-4012-b126-a0b021afdcca

                """
            )
        )
        file.writelines(cross_dimension_fixes)
        file.write(
            textwrap.dedent(
                """
                # Initialize credits timer
                execute if score $credits patchwreck.timers matches 0 run scoreboard players set $credits patchwreck.timers 1
                """
            )
        )


if __name__ == "__main__":
    workspace = Path.cwd() / "patchwreck.code-workspace"
    if not workspace.is_file():
        raise FileNotFoundError(
            errno.ENOENT,
            os.strerror(errno.ENOENT),
            workspace.as_posix(),
        )

    credits_json = Path.cwd() / "credits.json"
    if not credits_json.is_file():
        raise FileNotFoundError(
            errno.ENOENT,
            os.strerror(errno.ENOENT),
            credits_json.as_posix(),
        )

    def json_hook(data: dict[str, Any]) -> CameraPosition | TextDisplay | dict[Dimension, CameraPosition | TextDisplays]:  # fmt: skip
        try:
            return TextDisplay(
                data["text"],
                Coordinates(*data["coordinates"]),
            )
        except KeyError:
            try:
                return CameraPosition(
                    Coordinates(*data["coordinates"]),
                    Rotation(*data["rotation"]),
                )
            except KeyError:
                return data

    with credits_json.open("r") as file:
        dimension_credits = json.load(file, object_hook=json_hook)

    mcfunction = Path.cwd() / "patchwreck" / "data" / "patchwreck" / "functions" / "monument" / "credits.mcfunction"  # fmt: skip
    generate_credits(mcfunction, dimension_credits)
