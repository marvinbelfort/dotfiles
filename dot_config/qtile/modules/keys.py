from libqtile.config import EzKey as Key
from .mouse import *

# pyright: basic

# Keys reference
# https://github.com/qtile/qtile/blob/master/libqtile/backend/x11/xkeysyms.py


# terminal = "alacritty"
terminal = "alacritty"

keys = [
    Key("M-<ccedilla>", lazy.next_screen(), desc="Next Monitor"),
    Key("M-h", lazy.layout.left(), desc="Move focus to left"),
    Key("M-l", lazy.layout.right(), desc="Move focus to right"),
    Key("M-j", lazy.layout.down(), desc="Move focus down"),
    Key("M-k", lazy.layout.up(), desc="Move focus up"),
    Key("M-S-h", lazy.layout.shuffle_left(), desc="Move window to the left"),
    Key("M-S-l", lazy.layout.shuffle_right(), desc="Move window to the right"),
    Key("M-S-j", lazy.layout.shuffle_down(), desc="Move window down"),
    Key("M-S-k", lazy.layout.shuffle_up(), desc="Move window up"),
    Key("M-C-h", lazy.layout.grow_left(), desc="Grow window to the left"),
    Key("M-C-l", lazy.layout.grow_right(), desc="Grow window to the right"),
    Key("M-C-j", lazy.layout.grow_down(), desc="Grow window down"),
    Key("M-C-k", lazy.layout.grow_up(), desc="Grow window up"),
    Key("M-n", lazy.layout.normalize(), desc="Reset all window sizes"),
    Key("M-S-n", lazy.layout.reset(), desc="Reset all window sizes"),
    Key("M-<Tab>", lazy.next_layout(), desc="Toggle between layouts"),
    Key("M-f", lazy.window.toggle_fullscreen(), desc="Toggle fullscreen on the focused window"),
    Key("M-t", lazy.window.toggle_floating(), desc="Toggle floating on the focused window"),
    Key("M-m", lazy.window.toggle_maximize(), desc="Toggle maximized on the focused window"),
    Key("M-w", lazy.window.kill(), desc="Kill focused window"),
    Key("M-e", lazy.spawn("thunar"), desc="Explorer"),
    Key("<F12>", lazy.spawn("flameshot gui"), desc="Screen Shot"),
    Key("M-v", lazy.spawn("copyq toggle"), desc="history"),
    Key(
        "M-<space>",
        lazy.spawn("rofi -show combi -display-combi '  ' -display-drun '  ' -display-window ' 󰖳 ' "),
        desc="Move window focus to other window",
    ),
    Key(
        "M-<F11>",
        lazy.spawn("/home/marvin/data/bin/game_toggle.sh"),
        desc="Toggle game mode",
    ),
    Key("M-<Return>", lazy.spawn(terminal), desc="Launch terminal"),
    Key("M-C-r", lazy.reload_config(), desc="Reload the config"),
    Key("M-C-q", lazy.shutdown(), desc="Shutdown Qtile"),
]
