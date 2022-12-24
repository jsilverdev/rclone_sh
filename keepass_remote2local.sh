#!/bin/bash

source "$(dirname "$0")/utils.sh"
source "$(dirname "$0")/sync.sh"

set -x
notify "Start Download"
sync $REMOTE_PATH $LOCAL_PATH && notify "Finished Download"