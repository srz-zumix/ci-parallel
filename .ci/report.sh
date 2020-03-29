#!/bin/bash

BASEDIR=$(dirname $0)

echo ${PARALLEL_NO}

# DATE=$(TZ="Asia/Tokyo" date)
DATE=$(date -u)
. ${BASEDIR}/name.sh $1
echo $CI_NAME

. ${BASEDIR}/commit-hash.sh
echo $GIT_COMMIT

if [ -z ${INTEGROMAT_WEBHOOK_URL} ]; then
  export INTEGROMAT_WEBHOOK_URL="https://hook.integromat.com/k1c42tq981hsvjxtqvoe8runsyfem197"
fi

function send () {
  curl \
    -H "Content-Type: application/json" \
    -X POST \
    -d "{\"time\": \"${DATE}\", \"ci\": \"${CI_NAME}\", \"commit\": \"${GIT_COMMIT}\", \"id\": \"${SPREADSHEET_ID}\", \"event\":\"$1\", \"type\":\"${TYPE}\", \"number\":\"${PARALLEL_NO}\" }" \
    ${INTEGROMAT_WEBHOOK_URL}
}

send "B"

sleep 60

send "E"
