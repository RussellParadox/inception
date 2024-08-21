#!/bin/sh

export RESTIC_REPOSITORY=/backup

restic init || echo "Repository already initialized"

echo "Starting backup..."
restic backup /database

restic forget --keep-daily 7 --keep-weekly 4 --keep-monthly 6 --prune