#!/usr/bin/python

# Copyright 2020 Kartik Arora

#     Licensed under the Apache License, Version 2.0 (the "License");
#     you may not use this file except in compliance with the License.
#     You may obtain a copy of the License at
#         http://www.apache.org/licenses/LICENSE-2.0
#     Unless required by applicable law or agreed to in writing, software
#     distributed under the License is distributed on an "AS IS" BASIS,
#     WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#     See the License for the specific language governing permissions and
#  limitations under the License.

import requests, subprocess

if __name__ == '__main__':
    url = 'http://whatthecommit.com/index.txt'
    resp = requests.get(url)
    p = subprocess.Popen(['git', 'add', '--all'], cwd='.')
    p.wait()
    p = subprocess.Popen(['git', 'commit', '-m', resp.text], cwd='.')
    p.wait()