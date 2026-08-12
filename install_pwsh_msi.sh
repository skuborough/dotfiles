#!/bin/bash

latest_ver=$(curl -sL https://api.github.com/repos/PowerShell/PowerShell/releases/latest | jq -r .tag_name | cut -c 2-)

file_name="PowerShell-${latest_ver}-win-x64.msi"
latest_url="https://github.com/PowerShell/PowerShell/releases/download/v${latest_ver}/${file_name}"
download_dir="/mnt/c/Users/$(cmd.exe /c "echo %USERNAME%" 2> /dev/null | tr -d '\r')/Desktop"


echo 'downloading pwsh installer...'
wget -P "${download_dir}" "${latest_url}"
echo 'installing pwsh...'
#msiexec.exe /i "$(wslpath -w "${download_dir}/${file_name}")" /qb
#rm "${download_dir}/${file_name}"

echo 'done!'
