#!/bin/bash

API="http://localhost:4741"
URL_PATH="/create-profile"
# TOKEN="40aaa3ae4a1b0472e4afcd2fd6b2ec45"
# USERNAME="bigg dogg mcgraw"
# FIRST="moe"
# LAST="chieftain apollo rockstar"

curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Bearer ${TOKEN}" \
  --data '{
    "profile": {
      "username": "'"${USERNAME}"'",
      "first": "'"${FIRST}"'",
      "last": "'"${LAST}"'"
    }
  }'

echo
