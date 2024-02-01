from dataclasses import dataclass

def init_colors():
    return [["#2e3440", "#2e3440"], # color 0  dark grayish blue
            ["#2e3440", "#2e3440"], # color 1  dark grayish blue
            ["#3b4252", "#3b4252"], # color 2  very dark grayish blue
            ["#434c5e", "#434c5e"], # color 3  very dark grayish blue
            ["#4c566a", "#4c566a"], # color 4  very dark grayish blue
            ["#d8dee9", "#d8dee9"], # color 5  grayish blue
            ["#e5e9f0", "#e5e9f0"], # color 6  light grayish blue
            ["#eceff4", "#eceff4"], # color 7  light grayish blue
            ["#8fbcbb", "#8fbcbb"], # color 8  grayish cyan
            ["#88c0d0", "#88c0d0"], # color 9  desaturated cyan
            ["#81a1c1", "#81a1c1"], # color 10 desaturated blue
            ["#5e81ac", "#5e81ac"], # color 11 dark moderate blue
            ["#bf616a", "#bf616a"], # color 12 slightly desaturated red
            ["#d08770", "#d08770"], # color 13 desaturated red
            ["#ebcb8b", "#ebcb8b"], # color 14 soft orange
            ["#a3be8c", "#a3be8c"], # color 15 desaturated green
            ["#b48ead", "#b48ead"]] # color 16 grayish magenta




@dataclass
class Colors:
    border_focus: str = "#00ffff"
    border_normal: str = "#81a1c1"
    other_screen_border: str = border_normal
    this_current_screen_border: str = border_focus
    other_current_screen_border: str = "#404040"
    this_screen_border: str = "#1d5457"
    active: str = border_focus
    inactive: str = "#777700"
    background: str = "#2e3440"
    foreground: str = "#4c566a"

colors = Colors()


widget_defaults = dict(
    font='Ubuntu Nerd Font',
    fontsize=12,
    padding=3,
    background=colors.background,
    foreground=colors.foreground
)

extension_defaults = widget_defaults.copy()
