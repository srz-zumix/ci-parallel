#!/bin/sh

BASEDIR=$(dirname $0)

echo ${PARALLEL_NO}

. ${BASEDIR}/name.sh $1
echo $CI_NAME

if [ -z ${PARALLEL_NO+x} ]; then
    export PARALLEL_NO=1
fi

if [ -z ${JOB_NAME_PREFIX+x} ]; then
    export JOB_NAME_PREFIX=${TYPE}
fi

if [ -z ${JOB_NAME+x} ]; then
  export JOB_NAME="${JOB_NAME_PREFIX}-${PARALLEL_NO}"
fi

. ${BASEDIR}/commit-hash.sh
echo $GIT_COMMIT

if [ -z ${INTEGROMAT_WEBHOOK_URL} ]; then
  export INTEGROMAT_WEBHOOK_URL="https://hook.integromat.com/k1c42tq981hsvjxtqvoe8runsyfem197"
fi

${BASEDIR}/send.sh "B"

sleep 180

${BASEDIR}/send.sh "E"
