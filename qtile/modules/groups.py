from libqtile.config import Group
from .keys import *


groups = [Group(i) for i in "uiop7890"]

for i in groups:
    keys.extend(
        [
            Key(f"M-{i.name}", lazy.group[i.name].toscreen(), desc="Switch to group {}".format(i.name),),
            Key(f"M-S-{i.name}", lazy.window.togroup(i.name, switch_group=False), desc=f"Switch to & move focused window to group {i.name}",),
        ]
    )
