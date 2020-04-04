#!/bin/bash

# DATE=$(TZ="Asia/Tokyo" date)
DATE=$(date -u)

curl \
  -H "Content-Type: application/json" \
  -X POST \
  -d "{\"time\": \"${DATE}\", \"ci\": \"${CI_NAME}\", \"commit\": \"${GIT_COMMIT}\", \"id\": \"${SPREADSHEET_ID}\", \"name\":\"$JOB_NAME\", \"event\":\"$1\", \"type\":\"${TYPE}\", \"number\":\"${PARALLEL_NO}\" }" \
  ${INTEGROMAT_WEBHOOK_URL}
