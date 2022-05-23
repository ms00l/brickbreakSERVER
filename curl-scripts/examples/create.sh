#!/bin/bash

API="http://localhost:4741"
URL_PATH="/profiles"
TOKEN="fcc4082ca4c5120f8fd0d1eb92db24a1"
USERNAME="bigg dogg mcgraw"
FIRST="moe"
LAST="chieftain apollo rockstar"

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
