#!/bin/bash

API="http://localhost:4741"
URL_PATH="/concerts"

curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "concert": {
      "concert_name": "'"${NAME}"'",
      "concert_date": "'"${DATE}"'",
      "concert_time": "'"${TIME}"'",
      "artist": "'"${ARTIST}"'",
      "venue": "'"${VENUE}"'",
      "venue_address": "'"${ADDRESS}"'",
      "cost": "'"${COST}"'"
    }
  }'

echo
