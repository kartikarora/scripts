# SCRIPTS

Some of the scripts I use on an almost daily basis

## Usage 

- Clone the repo using `git clone https://github.com/kartikarora/scripts`
- Put `export PATH=$PATH:/path/to/cloned/directory` at the end of your `~/.bashrc`
- Run `source ~/.bashrc` to load the new `$PATH`

## Scripts

### git_proxy.sh

Run `chmod a+x git_proxy.sh` to make it executable

### system_proxy.sh

Run `chmod a+x system_proxy.sh` to make it executable

Requires [dconf-tools](https://apps.ubuntu.com/cat/applications/dconf-tools/), works only on Ubuntu for now.

To install Dconf, run:
- `sudo apt-get install dconf-tools` 
- `sudo apt install dconf-tools` (16.04 and above)

If you get an error saying `touch: cannot touch '/home/<username>/.scripts/toggles/<script>': No such file or directory`

Run the following in your terminal:
- `mkdir $HOME/.scripts`
- `mkdir $HOME/.scripts/toggles`

### gitty.py

Run `chmod a+x gitty.py` to make it executable

Requires `requests` to be installed (`pip install requests`)

Run `gitty.py` and you'll get a new commit message everytime with all the files staged and committed

### git_helpers

Contains 3 helper functions for git.

**Function Name**|**Stands For**|**Description**
-----|-----|-----
`gitc`|`git commit`|This function adds all files to tracking stage and commits them.
`gitp`|`git push`|This function pushes local repo to remote url.
`gitcp`|`git commit push`|This function adds all files to tracking stage

Copy paste these functions in you `.bashrc` or `.zshrc` file to use them.

## Contribution

Improvements, suggestions and new scripts are always welcome. Fork, push, submit a Pull Request.

## LICENCE
<pre>
Copyright 2020 Kartik Arora

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at
        http://www.apache.org/licenses/LICENSE-2.0
    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
 limitations under the License.
</pre>