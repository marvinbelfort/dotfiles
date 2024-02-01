import re

# Faz parsing do comando xset para verificar teclas ativas
def parse_xset_to_dict(xset_output):
    # Regex pattern to find the XKB indicators lines
    xkb_pattern = r"(\d{2}:\s[\w\s]+):\s+(\w+)"

    # Find all matches for XKB indicators
    matches = re.findall(xkb_pattern, xset_output)

    # Extracting the name and status of each indicator and adding to dict
    indicators_status = {}
    for match in matches:
        name, status = match[0].split(":")[1].strip(), match[1].strip()
        indicators_status[name] = status == "on"

    return indicators_status
