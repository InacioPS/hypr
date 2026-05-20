#!/bin/bash
# Monta o Google Drive via rclone

MOUNTPOINT="$HOME/Rclone/dropbox"
REMOTE="dropbox:"

mkdir -p "$MOUNTPOINT"

rclone mount "$REMOTE" "$MOUNTPOINT" \
  --vfs-cache-mode writes \
  --allow-other \
  --allow-non-empty \
  --dir-cache-time 72h \
  --vfs-cache-max-age 5m \
  --vfs-read-chunk-size 128M \
  --vfs-read-chunk-size-limit 1G \
  --attr-timeout 1s \
  --poll-interval 15s \
  --log-level INFO \
  --buffer-size 64M \
  &
disown

#!/bin/bash
# Monta o Mega via rclone manualmente

MOUNTPOINT="$HOME/Rclone/Mega"
REMOTE="Mega:"

mkdir -p "$MOUNTPOINT"

rclone mount "$REMOTE" "$MOUNTPOINT" \
  --vfs-cache-mode writes \
  --allow-other \
  --allow-non-empty \
  --dir-cache-time 72h \
  --vfs-cache-max-age 5m \
  --vfs-read-chunk-size 128M \
  --vfs-read-chunk-size-limit 1G \
  --attr-timeout 1s \
  --poll-interval 15s \
  --log-level INFO \
  --buffer-size 64M \
  &
disown

#!/bin/bash
# Monta o Mega via rclone manualmente

MOUNTPOINT="$HOME/Rclone/Onedrive"
REMOTE="Onedrive:"

mkdir -p "$MOUNTPOINT"

rclone mount "$REMOTE" "$MOUNTPOINT" \
  --vfs-cache-mode writes \
  --allow-other \
  --allow-non-empty \
  --dir-cache-time 72h \
  --vfs-cache-max-age 5m \
  --vfs-read-chunk-size 128M \
  --vfs-read-chunk-size-limit 1G \
  --attr-timeout 1s \
  --poll-interval 15s \
  --log-level INFO \
  --buffer-size 64M \
  &
disown
