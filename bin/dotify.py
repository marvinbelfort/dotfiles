#!/usr/bin/env python

import os
import sys
import shutil

from common import dotfiles_folder, home_folder

arguments = sys.argv[1:]

if len(arguments) == 0:
    print("Usage:")
    print(f"{sys.argv[0]} <folder_or_file>")
    exit(1)

absolute_path = os.path.abspath(arguments[0])
folder_name = absolute_path.split("/")[-1]

try:
    destiny = f"{dotfiles_folder()}/{folder_name}"
    shutil.move(absolute_path, destiny)
    os.symlink(destiny, absolute_path)
except Exception as e:
    print(f"erro: {e}")
