#!/usr/bin/env python

import os
import re
import json

from common import dotfiles_folder, home_folder


debug = False
dotfiles_folder = dotfiles_folder()
home_folder = home_folder()


def find_dotfiles_symlinks_recursively(start_path):
    result = {}
    for root, dirs, files in os.walk(start_path):
        for name in files + dirs:
            full_path = os.path.join(root, name)
            if os.path.islink(full_path):
                target_path = os.readlink(full_path)
                result[full_path] = target_path
    return result


def save_to_json(filename, data):
    with open(filename, "w") as file:
        json.dump(data, file, indent=4)


def load_from_json(filename):
    with open(filename, "r") as file:
        return json.load(file)


def find_dotfiles_symlinks(directory):
    result = {}
    for name in os.listdir(directory):
        full_path = os.path.join(directory, name)
        if os.path.islink(full_path):
            target_path = os.readlink(full_path)
            result[full_path] = target_path
    return result


def replace_home(path, sub="~"):
    if home_folder in path:
        return path.replace(home_folder, sub)
    return path


def replace_dotfile_folder(path):
    pattern = re.compile(r"\.*/?\.dotfiles/")
    return re.sub(pattern, "", replace_home(path, sub=""))


def filter_dotfiles(mapa):
    return {replace_dotfile_folder(value): replace_home(key) for key, value in mapa.items() if ".dotfiles" in value}


def create_config():
    result = find_dotfiles_symlinks(home_folder)
    result.update(find_dotfiles_symlinks_recursively(f"{home_folder}/.config/"))

    result = filter_dotfiles(result)

    if debug:
        print(f"home = {home_folder}")
        print(f"dotfiles = {dotfiles_folder}")
        for k, v in result.items():
            print(f"{dotfiles_folder}/{k} : {os.path.expanduser(v)}")

    save_to_json(f"{dotfiles_folder}/config.json", result)


def recreate():
    config = load_from_json(f"{dotfiles_folder}/config.json")
    for k, v in config.items():
        target = f"{dotfiles_folder}/{k}"
        link_name = f"{os.path.expanduser(v)}"
        try:
            os.symlink(target, link_name)
        except FileExistsError:
            print(f"{target} já existe")
        except Exception as e:
            print(f"Erro {e}")


if True:
    create_config()

if False:
    recreate()
