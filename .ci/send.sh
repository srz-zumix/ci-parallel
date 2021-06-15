#!/bin/sh

DATE=$(date -u)

if [ "$PLATFORM" = "windows" ]; then
    DATE=$(date -u -Iseconds)
fi

if [ -z ${DRYRUN+x} ]; then
    curl \
        -H "Content-Type: application/json" \
        -X POST \
        -d "{\"time\": \"${DATE}\", \"ci\": \"${CI_ENV_NAME}\", \"commit\": \"${CI_ENV_GIT_COMMIT}\", \"id\": \"${SPREADSHEET_ID}\", \"name\":\"$REPORT_JOB_NAME\", \"event\":\"$1\", \"type\":\"${TYPE}\", \"number\":\"${PARALLEL_NO}\" }" \
        ${INTEGROMAT_WEBHOOK_URL}
else
    echo curl \
        -H "Content-Type: application/json" \
        -X POST \
        -d "{\"time\": \"${DATE}\", \"ci\": \"${CI_ENV_NAME}\", \"commit\": \"${CI_ENV_GIT_COMMIT}\", \"id\": \"${SPREADSHEET_ID}\", \"name\":\"$REPORT_JOB_NAME\", \"event\":\"$1\", \"type\":\"${TYPE}\", \"number\":\"${PARALLEL_NO}\" }" \
        ${INTEGROMAT_WEBHOOK_URL}
fi
