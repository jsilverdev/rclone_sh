export $( grep -vE "^(#.*|\s*)$" $(dirname "$0")/.env )

notify() {
    MESSAGE=$1
    if test ${NOTIFY_ENABLE} = "true"; then
        notify-send "rclone ${RCLONE_REMOTE}" "${MESSAGE}"
    fi
}