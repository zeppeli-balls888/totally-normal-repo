import baseXX
from pathlib import Path
import re

def encode():
    words = passage.split()
    lines = []

    for i in range(0, len(words), 4):
        chunk = " ".join(words[i:i + 4])
        encoded = Xencode(chunk.encode("utf-8")).decode("ascii")
        lines.append(encoded)

    Path("the_napkins.txt").write_text("\n".join(lines) + "\n", encoding="utf-8")