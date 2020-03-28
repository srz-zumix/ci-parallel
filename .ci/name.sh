#!/bin/sh

if [ -n "${CI_NAME+x}" ]; then
    return
fi

if [ -n "${APPVEYOR+x}" ]; then
    export CI_NAME="AppVeyor"
    export SPREADSHEET_ID="1kQiSpe4xl6fDCWBniiRewnc-baQhDQEYBEYUWrgb3gc"
    return
fi

if [ -n "${AZURE_HTTP_USER_AGENT+x}" ]; then
    export CI_NAME="Azure Pipelines"
    export SPREADSHEET_ID="1vArErtZJcbdyGgo4Xp6hp_OF2vJOwPd_YChsSwzivyo"
    return
fi

if [ -n "${BITRISE_IO+x}" ]; then
    export CI_NAME="Bitrise"
    export SPREADSHEET_ID="12hdOlsrufZHZJvEnwUr2n62JyaMzBHYzN1X1VS4UGu8"
    return
fi

if [ -n "${BUDDY+x}" ]; then
    export CI_NAME="Buddy"
    export SPREADSHEET_ID="1bYPd91gm_7SqHbPq-0dODcnHqcvNDwx6Kn6Xi_mp-wE"
    return
fi

if [ -n "${CIRCLECI+x}" ]; then
    export CI_NAME="CircleCI"
    return
fi

if [ -n "${CIRRUS_CI+x}" ]; then
    export CI_NAME="Cirrus CI"
    return
fi

if [ -n "${CF_BUILD_URL+x}" ]; then
    export CI_NAME="Codefresh"
    return
fi

if [ -n "${DRONE+x}" ]; then
    export CI_NAME="Drone"
    return
fi

if [ -n "${GITHUB_ACTIONS+x}" ]; then
    export CI_NAME="GitHub Actions"
    export SPREADSHEET_ID="1q1G8e2KYbBYWOla4hAv6s4tXQHmyGUCWv8y_fZtVVJQ"
    return
fi

if [ -n "${BUILD_URL+x}" ]; then
    if echo ${BUILD_URL} | grep -q peakflow; then
        export CI_NAME="Peakflow"
        return
    fi
fi

if [ -n "${SCRUTINIZER+x}" ]; then
    export CI_NAME="Scrutinizer"
    return
fi

if [ -n "${SEMAPHORE+x}" ]; then
    export CI_NAME="Semaphore"
    return
fi

if [ -n "${SHIPPABLE+x}" ]; then
    export CI_NAME="Shippable"
    return
fi

if [ -n "${TRAVIS+x}" ]; then
    export CI_NAME="Travis CI"
    return
fi

if [ -n "${WERCKER_RUN_URL+x}" ]; then
    export CI_NAME="Wercker"
    return
fi


if [ -z "${CI+x}" ]; then
    export CI_NAME="local"
    return
fi
export CI_NAME=$1
