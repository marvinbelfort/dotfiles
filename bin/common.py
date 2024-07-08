#!/usr/bin/env python

import os
import re
import json


def dotfiles_folder():
    return "/".join(os.path.dirname(os.path.abspath(__file__)).split("/")[:-1])


def home_folder():
    return os.path.expanduser("~")
