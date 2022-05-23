#!/bin/bash

API="http://localhost:4741"
URL_PATH="/profiles"
ID="628bae64444c84ab50364958"
TOKEN="fcc4082ca4c5120f8fd0d1eb92db24a1"

curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request DELETE \
  --header "Authorization: Bearer ${TOKEN}"

echo
