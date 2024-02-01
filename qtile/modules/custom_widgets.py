from libqtile.widget import CapsNumLockIndicator, base
from .utils import parse_xset_to_dict
import subprocess
import re

class CapsLockIndicator(base.ThreadPoolText):

    defaults = [("update_interval", 0.5, "Update Time in seconds.")]

    def __init__(self, **config):
        base.ThreadPoolText.__init__(self, "", **config)
        self.add_defaults(CapsLockIndicator.defaults)

    def get_indicators(self):
        """Return a dictionary with the current state of the XKB indicators."""
        try:
            output = self.call_process(["xset", "q"])
        except subprocess.CalledProcessError as err:
            output = err.output
            return {}
        if output.startswith("Keyboard"):
            return parse_xset_to_dict(output)
        else:
            return {}

    def poll(self): #type: ignore
        indicators = self.get_indicators()
        status = ""
        if indicators['Caps Lock']:
            self.foreground = "FF0000"
            status = '󰁩'
        else:
            status = '  '
        return status


class Mci(base.ThreadPoolText):
    """Really simple widget to show the current Caps/Num Lock state."""

    defaults = [("update_interval", 0.5, "Update Time in seconds.")]

    def __init__(self, **config):
        base.ThreadPoolText.__init__(self, "", **config)
        self.add_defaults(CapsNumLockIndicator.defaults)

    def get_indicators(self):
        """Return a list with the current state of the keys."""
        try:
            output = self.call_process(["xset", "q"])
        except subprocess.CalledProcessError as err:
            output = err.output
            return []
        if output.startswith("Keyboard"):
            indicators = re.findall(r"(Caps|Num)\s+Lock:\s*(\w*)", output)
            return indicators
        return []

    def poll(self): #type: ignore
        """Poll content for the text box."""
        indicators = self.get_indicators()
        status = " ".join([" ".join(indicator) for indicator in indicators])
        return status
