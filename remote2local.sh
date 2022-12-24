#!/bin/bash
source "$(dirname "$0")/variables.sh"
source "$(dirname "$0")/utils.sh"

notify "Start Download"
sync $REMOTE_PATH $LOCAL_PATH && notify "Finished Download"