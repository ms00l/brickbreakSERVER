#!/bin/sh

API="http://localhost:4741"
URL_PATH="/profiles"
# TOKEN="fcc4082ca4c5120f8fd0d1eb92db24a1"

curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Bearer ${TOKEN}"

echo
