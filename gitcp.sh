#!/bin/bash

# Copyright 2017 Kartik Arora

#    Licensed under the Apache License, Version 2.0 (the "License");
#    you may not use this file except in compliance with the License.
#    You may obtain a copy of the License at

#        http://www.apache.org/licenses/LICENSE-2.0

#    Unless required by applicable law or agreed to in writing, software
#    distributed under the License is distributed on an "AS IS" BASIS,
#    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#    See the License for the specific language governing permissions and
# limitations under the License.

function gitcp {
    if [[ $# -eq 0 || $# -eq 1 ]]; then
        echo "Usage: gitcp <commit_message> <remote> [branch]"
        echo "    eg gitcp init origin master"
    else
        git add --all
        git commit -m $1
        if [[ -z "$3" && ! -z "$2" ]]; then
            git push $2
        elif [[ ! -z "$3" && ! -z "$2" ]]; then
            git push $2 $3
        fi
    fi
}
