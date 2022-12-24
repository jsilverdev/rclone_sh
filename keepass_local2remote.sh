#!/bin/bash

source utils.sh
source sync.sh

set -x
notify "Start Upload"
sync ${LOCAL_PATH} ${REMOTE_PATH} && notify "Finished Upload"
