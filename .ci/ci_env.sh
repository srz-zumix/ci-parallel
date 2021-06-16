#!/bin/sh

BASEDIR=$(dirname $0)

if [ ! -f ${BASEDIR}/ci-normalize-envvars/ci-env.sh ]; then
    (cd "${BASEDIR}/.."; git submodule update --init --recursive)
fi
. ${BASEDIR}/ci-normalize-envvars/ci-env.sh
