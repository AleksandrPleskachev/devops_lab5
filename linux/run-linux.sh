#!/usr/bin/env bash
set -euo pipefail

if [[ "$(uname -s)" != Linux ]]; then
  echo 'Run this script on Linux.' >&2
  exit 1
fi

source_dir=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)
lab_home="${LAB5_HOME:-$HOME/devops}"
set -x
pwd
ls -la
mkdir -p "$lab_home/lab5/git" "$lab_home/lab5/linux"
cd "$lab_home/lab5/linux"
pwd
echo 'Изученные команды Linux' > commands.txt
cat "$source_dir/commands.txt" >> commands.txt
cat commands.txt
cp "$source_dir/info.sh" ./info.sh
chmod +x info.sh
ls -l info.sh
./info.sh
find "$lab_home" -type f -name '*.txt' -print
find "$lab_home" -type f -name '*.txt' -exec grep -HnF 'Linux' {} +
cd ../git
pwd
set +x
