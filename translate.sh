#!/bin/bash

#  own Client ID and secret:
CLIENT_ID="FREE_TRIAL_ACCOUNT"
CLIENT_SECRET="PUBLIC_SECRET"

#  translation :
fromLang="en"
toLang="hi"
text="Let's have some fun!"

read -r -d '' jsonPayload << _EOM_
  {
    "fromLang": "$fromLang",
    "toLang": "$toLang",
    "text": "$text"
  }
_EOM_

curl -X POST \
     -H "X-WM-CLIENT-ID: $CLIENT_ID" \
     -H "X-WM-CLIENT-SECRET: $CLIENT_SECRET" \
     -H "Content-Type: application/json" \
     -d "$jsonPayload"   \
     http://api.whatsmate.net/v1/translation/translate

echo -e 
