#!/bin/bash

source utils.sh
source sync.sh

set -x
notify "Start Download"
sync $REMOTE_PATH $LOCAL_PATH && notify "Finished Download"