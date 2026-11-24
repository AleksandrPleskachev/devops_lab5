#!/usr/bin/env bash
set -euo pipefail

echo "User: $(id -un)"
echo "Date: $(date '+%F %T %Z')"
echo "Host: $(hostname)"
echo 'Disk space:'
df -h .
