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
    export SPREADSHEET_ID="1zPFsj3gyMgoXMGhSKVRGxmWfx9vsavMKLo7N0z3JmOk"
    return
fi

if [ -n "${CIRRUS_CI+x}" ]; then
    export CI_NAME="Cirrus CI"
    export SPREADSHEET_ID="1709LrZFR-zeKb62vErzvKRSe7Gl4bsd5tWAVS4SpjME"
    return
fi

if [ -n "${CF_BUILD_URL+x}" ]; then
    export CI_NAME="Codefresh"
    export SPREADSHEET_ID="1aaZJB0bfRCXYswno5-jd7zAdn3x-UXAvXzVM4_6181M"
    return
fi

if [ -n "${DRONE+x}" ]; then
    export CI_NAME="Drone"
    export SPREADSHEET_ID="11AIJZZfufEvyIObUCOU_m0G1kkEHvckvvtuhjmBHbtM"
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
        export SPREADSHEET_ID="1RY_-1rlVNC5Cuw4M6UjtjSLV_cN46M28Py4coOZF36E"
        return
    fi
fi

if [ -n "${SCRUTINIZER+x}" ]; then
    export CI_NAME="Scrutinizer"
    export SPREADSHEET_ID="1oxOVpgJbaqY_MBWO8TFwVQRhdwNGoH_OExfkU3e3ptM"
    return
fi

if [ -n "${SEMAPHORE+x}" ]; then
    export CI_NAME="Semaphore"
    export SPREADSHEET_ID="1Is1B6yEoxpBs0CQdGKbpj_waA1wTyt9wcyxdNchGVmQ"
    return
fi

if [ -n "${SHIPPABLE+x}" ]; then
    export CI_NAME="Shippable"
    export SPREADSHEET_ID="1Bmk3EjfX_VjlV6Mm2IQsZqz1KbDy9sY0FW4-3BotE8E"
    return
fi

if [ -n "${TRAVIS+x}" ]; then
    export CI_NAME="Travis CI"
    export SPREADSHEET_ID="1zOvZEO1aS2C3gonP6l31SJ_gOIbE6oedgdifqpxeKKE"
    return
fi

if [ -n "${WERCKER_RUN_URL+x}" ]; then
    export CI_NAME="Wercker"
    export SPREADSHEET_ID="1dZ6UUq8CKvVCs1JY6rZ2PlUmfosCqjLD7h8Pm2ujPhI"
    return
fi


if [ -z "${CI+x}" ]; then
    export CI_NAME="local"
    return
fi
export CI_NAME=$1
