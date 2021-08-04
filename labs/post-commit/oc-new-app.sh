#!/bin/bash

source /usr/local/etc/ocp4.config
oc new-app  --as-deployment-config --name hook \
    php:7.0~http://github.com/${RHT_OCP4_GITHUB_USER}/DO288-apps \
    --context-dir post-commit
