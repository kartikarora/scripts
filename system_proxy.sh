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

SYSTEM_PROXY_TOGGLE=$HOME/.scripts/toggles/system_proxy_toggle

if [ $# -eq 0 ]; then
    dconf write /system/proxy/mode "'none'"
    rm -f $SYSTEM_PROXY_TOGGLE
    echo "System proxy unset"
else
    dconf write /system/proxy/http/host "'$1'"
    dconf write /system/proxy/http/port "'$2'"
    dconf write /system/proxy/mode "'manual'"
    touch $SYSTEM_PROXY_TOGGLE
    echo "System proxy set with host $1 and port $2" 
fi
