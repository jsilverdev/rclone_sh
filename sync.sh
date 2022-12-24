sync() {
    RCLONE_CMD="rclone sync -v -u $1 $2"

    if ! ps ax | grep -v grep | grep "rclone sync" > /dev/null; then
        ${RCLONE_CMD}
    else
        notify "Sync command is already running, try later"
        exit 1
    fi
    exit 0
}