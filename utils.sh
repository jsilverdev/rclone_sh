notify() {
    MESSAGE=$1
    if test ${NOTIFY_ENABLE} = "true"; then
        notify-send "rclone ${RCLONE_REMOTE}" "${MESSAGE}"
    fi
}

sync() {
    RCLONE_CMD="rclone sync -v -u $1 $2"

    if ! ps ax | grep -v grep | grep "rclone sync" > /dev/null; then
        ${RCLONE_CMD}
    else
        notify "Sync command is already running, try later"
        exit 1
    fi
}

if test ${DEBUG} = "true"; then
    set -x
fi