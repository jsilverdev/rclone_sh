#!/bin/bash

source "$(dirname "$0")/variables.sh"
source "$(dirname "$0")/utils.sh"

notify "Start Upload"
sync ${LOCAL_PATH} ${REMOTE_PATH} && notify "Finished Upload"
