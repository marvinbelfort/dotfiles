from libqtile.layout.bsp import Bsp
from libqtile.layout.floating import Floating
from libqtile.layout.columns import Columns
from libqtile.layout.zoomy import Zoomy
from libqtile.config import Match
from .widgets import colors

layouts = [
    Columns(
        border_focus="#2ac2c9",
        border_normal="#665c54",
        border_on_single=True,
        border_width=2,
        margin=4,
    ),
    # layout.Max(),
    # Try more layouts by unleashing below layouts.
    # layout.Stack(num_stacks=2),
    # Bsp(),
    # layout.Matrix(),
    # layout.MonadTall(),
    # layout.MonadWide(),
    # layout.RatioTile(),
    # layout.Tile(),
    # layout.TreeTab(),
    # layout.VerticalTile(),
    Zoomy(
        border_focus="#2ac2c9",
        border_normal="#665c54",
        border_on_single=True,
        border_width=2,
        margin=4,
    ),
]


floating_layout = Floating(
    float_rules=[
        *Floating.default_float_rules,
        Match(wm_class="confirmreset"),  # gitk
        Match(wm_class="makebranch"),  # gitk
        Match(wm_class="maketag"),  # gitk
        Match(wm_class="ssh-askpass"),  # ssh-askpass
        Match(wm_class="gucharmap"),
        Match(wm_class="pick-colour-picker"),
        Match(title="branchdialog"),  # gitk
        Match(title="pinentry"),  # GPG key password entry
        Match(title="Blender Preferences"),  # GPG key password entry
        Match(title="Copy file(s)"),  # GPG key password entry
        Match(wm_class="VirtualBox Machine"),  # Vm virtualbox
        Match(wm_class="font-manager"),  # Vm virtualbox
        Match(wm_class="copyq"),  # Vm virtualbox
    ]
)
