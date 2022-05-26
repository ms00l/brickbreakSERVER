#!/bin/sh

API="http://localhost:4741"
URL_PATH="/profiles"
# ID="629005f10348f25ae5f4eee8"
# TOKEN="40aaa3ae4a1b0472e4afcd2fd6b2ec45"

curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request GET \
  --header "Authorization: Bearer ${TOKEN}"

echo
