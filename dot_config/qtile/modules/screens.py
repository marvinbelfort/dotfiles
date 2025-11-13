from .widgets import *
from libqtile.config import Screen
from libqtile import bar, widget
from .custom_widgets import CapsLockIndicator

theme_mode = "preferred"
theme_path = "/usr/share/icons/Papirus"


def parse_text(text):
    return ""


def basic_widgets():
    widgets = [
        widget.Spacer(10),
        widget.CurrentLayout(mode="icon", scale=1),
        widget.Sep(),
        CapsLockIndicator(fontsize=20),
        widget.Sep(),
        widget.Spacer(),
        widget.Sep(),
        widget.GroupBox(
            font="Charles Wright",
            other_current_screen_border=colors.other_current_screen_border,
            other_screen_border=colors.other_screen_border,
            this_current_screen_border=colors.this_current_screen_border,
            this_screen_border=colors.this_screen_border,
            active=colors.active,
            inactive=colors.inactive,
        ),
        widget.Sep(),
        widget.Spacer(),
        widget.Chord(
            chords_colors={
                "launch": ("#ff0000", "#ffffff"),
            },
            name_transform=lambda name: name.upper(),
        ),
        widget.Clock(format="%a %Y-%m-%d"),
        widget.Clock(font="Charles Wright", format="%H:%M", foreground="#ffff00", fontsize=12),
        widget.Spacer(10),
    ]

    for w in widgets:
        w.opacity = 0.5

    return widgets


def custom_bar(systray=False):
    b = bar.Bar(basic_widgets(), 24, opacity=0.5, background_color="ff0000")
    if systray:
        b.widgets.insert(-3, widget.Systray())
        b.widgets.insert(-3, widget.Sep())
    return b


screens = [
    Screen(
        bottom=custom_bar(systray=True),
    ),
    Screen(
        bottom=custom_bar(),
    ),
]
