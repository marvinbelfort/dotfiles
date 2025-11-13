from libqtile.config import Group, ScratchPad, DropDown
from .keys import *
# pyright: basic

groups = [Group(i) for i in "uiop34567890"]

for i in groups:
    keys.extend(
        [
            Key(
                f"M-{i.name}",
                lazy.group[i.name].toscreen(),
                desc="Switch to group {}".format(i.name),
            ),
            Key(
                f"M-S-{i.name}",
                lazy.window.togroup(i.name, switch_group=False),
                desc=f"Switch to & move focused window to group {i.name}",
            ),
        ]
    )

groups.append(
    ScratchPad(
        "scratchpad",
        [
            DropDown("calc", "jupyter-qtconsole", width=0.4, height=0.8, x=0.3, y=0.1, opacity=1),
            DropDown("mixer", "pavucontrol", width=0.4, height=0.6, x=0.3, y=0.1, opacity=1),
        ],
    )
)

keys.extend(
    [
        Key("M-1", lazy.group["scratchpad"].dropdown_toggle("calc")),
        Key("M-2", lazy.group["scratchpad"].dropdown_toggle("mixer")),
    ]
)
