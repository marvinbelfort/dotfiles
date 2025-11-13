from libqtile import hook
import os
import subprocess

@hook.subscribe.startup_once
def autostart():
    home = os.path.expanduser('~/.config/qtile/autostart.sh')
    print(f"{home}")
    subprocess.call([home])


if __name__ == "__main__":
    autostart()
