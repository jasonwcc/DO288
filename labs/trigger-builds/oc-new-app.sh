#!/bin/bash

source /usr/local/etc/ocp4.config

oc new-app --name trigger \
    php~http://github.com/${RHT_OCP4_GITHUB_USER}/DO288-apps \
    --context-dir trigger-builds
