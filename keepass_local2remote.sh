#!/bin/bash

source "$(dirname "$0")/utils.sh"
source "$(dirname "$0")/sync.sh"


notify "Start Upload"
sync ${LOCAL_PATH} ${REMOTE_PATH} && notify "Finished Upload"
