#!/usr/bin/python
# encoding: utf-8

import json
import os
import sys
from subprocess import call, check_output

BREW_CMD = '/usr/local/bin/brew'
BUNDLE_FILE = 'brewfile.json'

def make_cache(name=''):
    cmd = [BREW_CMD]
    if name == 'tap':
        cmd.append('tap')
    elif name == 'cask':
        cmd.append('cask')
        cmd.append('list')
    else:
        cmd.append('list')
    res = check_output(cmd)
    items = res.strip().split('\n')
    return items


def manage():
    print("brew: update and upgrade...")
    call([BREW_CMD, 'update'])
    call([BREW_CMD, 'upgrade'])

    if not os.path.exists(BUNDLE_FILE):
        print("done.")
        sys.exit(0)

    print("brew: load bundle file...")
    with open(BUNDLE_FILE, 'r') as f:
        data = json.load(f)

    cache = make_cache('tap')
    if len(data['tap']):
        for item in data['tap']:
            if item in cache:
                #print("brew: skip {0} already tapped".format(item))
                continue
            print("brew: tap {0}".format(item))
            call([BREW_CMD, 'tap', item])

    cache = make_cache('brew')
    if len(data['install']):
        for item in data['install']:
            if item in cache:
                #print("brew: skip {0} already installed".format(item))
                continue
            print("brew: installing {0}...".format(item))
            call([BREW_CMD, 'install', item])

    cache = make_cache('cask')
    if len(data['cask']):
        for item in data['cask']:
            if item in cache:
                #print("brew: skip {0} already installed".format(item))
                continue
            print("brew: cask installing {0}...".format(item))
            call([BREW_CMD, 'cask', 'install', item])


if __name__ == '__main__':
    manage()

