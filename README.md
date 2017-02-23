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

### gitcp.sh

`gitcp` stands for `git commit push`

The function adds all files to tracking, commits then and then pushes the commit to remote url.

Add the function to your `.bashrc` to add the function `gitcp` ***OR*** Add the file path to `$PATH` after running `chmod a+x gitcp.sh` to make it executable

## Contribution

Improvements, suggestions and new scripts are always welcome. Fork, push, submit a Pull Request.

## LICENCE
<pre>
Copyright 2017 Kartik Arora

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