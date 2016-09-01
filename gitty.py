#!/usr/bin/python
import requests, os, sys, subprocess
if __name__ == '__main__':
    url = 'http://whatthecommit.com/index.txt'
    resp = requests.get(url)
    p = subprocess.Popen(['git', 'add', '--all'], cwd='.')
    p.wait()
    p = subprocess.Popen(['git', 'commit', '-m', resp.text], cwd='.')
    p.wait()