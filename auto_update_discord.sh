#!/bin/bash
DISCORD_API_URL='https://discord.com/api/download?platform=linux&format=deb'
DISCORD_BIN_PATH=$(which discord)
DISCORD_JSON_PATH=$(dirname $(readlink -f ${DISCORD_BIN_PATH}))/resources/build_info.json

CURRENT_VERSION=$(jq -r '.version' ${DISCORD_JSON_PATH})
CURL_OUTPUT=$(curl -s ${DISCORD_API_URL})

if ! echo "${CURL_OUTPUT}" | grep "linux/${CURRENT_VERSION}/" > /dev/null 2>&1
then
  wget -O discord_update.deb $DISCORD_API_URL && /usr/bin/sudo /usr/bin/apt install ./discord_update.deb
  rm -f discord_update.deb
fi

${DISCORD_BIN_PATH} & disown
