#!/bin/bash

API="http://localhost:4741"
URL_PATH="/change-password"
EMAIL="m@m.com"
OLDPW="m"
NEWPW="j"
TOKEN="fcc4082ca4c5120f8fd0d1eb92db24a1"
curl "${API}${URL_PATH}/" \
  --include \
  --request PATCH \
  --header "Authorization: Bearer ${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "passwords": {
      "old": "'"${OLDPW}"'",
      "new": "'"${NEWPW}"'"
    }
  }'

echo
