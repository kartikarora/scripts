#!/bin/bash

# Copyright 2016 Kartik Arora

#    Licensed under the Apache License, Version 2.0 (the "License");
#    you may not use this file except in compliance with the License.
#    You may obtain a copy of the License at

#        http://www.apache.org/licenses/LICENSE-2.0

#    Unless required by applicable law or agreed to in writing, software
#    distributed under the License is distributed on an "AS IS" BASIS,
#    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#    See the License for the specific language governing permissions and
# limitations under the License.

GIT_PROXY_TOGGLE=$HOME/.scripts/toggles/git_proxy_toggle

if [ $# -eq 0 ]; then
    git config --global --unset http.proxy
    rm -f $GIT_PROXY_TOGGLE
    echo "git proxy unset"
else
    git config --global http.proxy "$1"
    touch $GIT_PROXY_TOGGLE
    echo "git proxy set to $1" 
fi