#!/bin/bash

SERVICE_NAME="keepass_remote2local"

# SYNC_SCRIPT: dynamic reference to the current script path
SYNC_SCRIPT=$(realpath ${SERVICE_NAME}.sh)

set -x
mkdir -p ${HOME}/.config/systemd/user
SERVICE_FILE=${HOME}/.config/systemd/user/rclone_sync.${SERVICE_NAME}.service
if test -f ${SERVICE_FILE}; then
    echo "Unit file already exists: ${SERVICE_FILE} - Not overwriting."
else
    cat <<EOF > ${SERVICE_FILE}
[Unit]
Description=rclone_sync ${SERVICE_NAME}

[Service]
ExecStart=${SYNC_SCRIPT}

[Install]
WantedBy=default.target
EOF
fi
systemctl --user daemon-reload
systemctl --user enable --now rclone_sync.${SERVICE_NAME}
systemctl --user status rclone_sync.${SERVICE_NAME}
echo "You can watch the logs with this command:"
echo "   journalctl --user --unit rclone_sync.${SERVICE_NAME}"

