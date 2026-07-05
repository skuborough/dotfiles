#!/usr/bin/env bash

SCRIPT_DIR=$(dirname "$(readlink -f "$0")")
BASHRC_DIR="${HOME}/.bashrc.d/"

echo 'copying bashrc scripts...'
if [[ ! -d "${BASHRC_DIR}" ]]; then
  mkdir -p "${BASHRC_DIR}"
fi
sudo cp -r "${SCRIPT_DIR}/bashrc.d/." "${BASHRC_DIR}"
echo 'done!'
