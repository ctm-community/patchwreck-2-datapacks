import random
import struct
from uuid import UUID


class MCUUID(UUID):
    rng = random.Random(x="Patchwreck II")

    def __init__(self) -> None:
        super().__init__(int=self.rng.getrandbits(128), version=4)

    @property
    def nbt(self) -> str:
        return "[I; {}, {}, {}, {}]".format(
            *struct.unpack(">4i", bytes.fromhex(self.hex))
        )


if __name__ == "__main__":
    mcuuid = MCUUID()
    assert str(mcuuid) == "7583cbbd-c758-432f-b77a-fbf9503597e0"
    assert mcuuid.nbt == "[I; 1971571645, -950516945, -1216676871, 1345689568]"
