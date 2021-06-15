#!/bin/sh

BASEDIR=$(dirname $0)

. ${BASEDIR}/os-detect.sh

. ${BASEDIR}/ci_env.sh
echo $CI_NAME

if [ -z ${PARALLEL_NO+x} ]; then
    export PARALLEL_NO=$1
fi

echo ${PARALLEL_NO}

if [ -z ${JOB_NAME_PREFIX+x} ]; then
    export JOB_NAME_PREFIX=${TYPE}
fi

if [ -z ${REPORT_JOB_NAME+x} ]; then
  export REPORT_JOB_NAME="${JOB_NAME_PREFIX}-${PARALLEL_NO}"
fi

echo ${REPORT_JOB_NAME}

if [ -z ${SLEEP_SECONDS+x} ]; then
  export SLEEP_SECONDS=180
fi

if [ -z ${INTEGROMAT_WEBHOOK_URL} ]; then
  export INTEGROMAT_WEBHOOK_URL="https://hook.integromat.com/k1c42tq981hsvjxtqvoe8runsyfem197"
fi

${BASEDIR}/send.sh "B"

sleep ${SLEEP_SECONDS}

${BASEDIR}/send.sh "E"
