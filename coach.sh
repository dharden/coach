#!/bin/bash

#                   ___
#    .--. _       .'   Y.       _ .--.
#   '._  ' )    _|  _.'  |     ( '  _.'
#      '. \   .' |-'  O O|      / .'        Good jorb!
#        \ \ '.--'`.___.'      / /
#         \ \_______| |_______/ /
#          \________   ________/
#                  |   |
#                  |___|
#                 .'___`.
#                |   .'  |
#                |  /__  |
#                 `.___.'
#                 |     |
#                 |     |
#                 |     |
#                 |     |
#                 |  __ |
#            ___  |(   )|  ___
#          .'   ''  ) (  ''   '.
#         '..__..--'   '--..__..'

if [ "$#" -eq 0 ]
then
  echo -e "slow down champ, you have to give me a webhook url, and some other stuff if you want \n"
  echo -e "Usage: ./coach.sh https://hook.slack.com/whateveryourwebhookurlis [channel username text emoji] \n"
  echo -e "let's get strong 💪 "
  exit 1
fi

CHANNEL=${2:-#ehoh}
USERNAME=${3:-coach}
TEXT=${4:-"<!here> lets get ready to rumble"}
EMOJI=${5:-:muscle:}
curl -X POST --data-urlencode 'payload={"channel": "'$CHANNEL'", "username": "'$USERNAME'", "text": "'"$TEXT"'", "icon_emoji": "'$EMOJI'"}' $1
