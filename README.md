
# Simple Rclone shell sync app

Simple shell script for sync from a remote folder using [rclone](https://rclone.org/)

This script is based on this [gist from muety](https://gist.github.com/muety/873980a2440b4c6692003fc23903fe5a) and this [example from EnigmaCurry’s dev blog.](https://blog.rymcg.tech/blog/linux/rclone_sync/)

## Environment Variables

To run this project, you will need to add the following environment variables to your `.env` file

`LOCAL_PATH`

`REMOTE_PATH`

`NOTIFY_ENABLE` - If can show notification (with notify-send)

`DEBUG` - Debug mode for show what happening

`SERVICE_NAME` - Name of the systemd service

All this variables are inside `.env.example` with default values

## License

[MIT](https://choosealicense.com/licenses/mit/)

