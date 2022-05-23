#!/bin/bash

API="http://localhost:4741"
URL_PATH="/profiles"
ID="628baea3444c84ab50364959"
TOKEN="fcc4082ca4c5120f8fd0d1eb92db24a1"
USERNAME="chieftain apollo rockstar"

curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request PATCH \
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
