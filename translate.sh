#!/bin/bash

# TODO: If you have your own Client ID and secret, put down their values here:
CLIENT_ID="FREE_TRIAL_ACCOUNT"
CLIENT_SECRET="PUBLIC_SECRET"

# TODO: Specify your translation requirements here:
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

echo -e "\n=== END OF DEMO ==="
