#!/bin/bash

API="http://localhost:4741"
URL_PATH="/sign-out"
TOKEN="85bac1db95e19d0dbc70983be8f11a1a"
curl "${API}${URL_PATH}/" \
  --include \
  --request DELETE \
  --header "Authorization: Bearer ${TOKEN}"

echo
