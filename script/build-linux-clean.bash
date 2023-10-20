#!/usr/bin/env bash

##
## Global config
##
DIRNAME_CLI=/usr/bin/dirname
PWD_CLI=/bin/pwd
UNAME_CLI=/usr/bin/uname
SYSTEM_PLATFORM=$($UNAME_CLI)

echo "[$SYSTEM_PLATFORM] Running clean (re)build ..."
MY_PROJECT_SHOULD_DISABLE_CLEAN_BUILD=OFF

SCRIPT_DIR=$(cd -- "$(${DIRNAME_CLI} "${BASH_SOURCE[0]:-${(%):-%x}}")" &> /dev/null && ${PWD_CLI})
source $SCRIPT_DIR/build-linux-preset.bash
