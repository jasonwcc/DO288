#!/bin/bash

source /usr/local/etc/ocp4.config

oc new-app --name simple --build-env \
    npm_config_registry=http://invalid-server:8081/repository/nodejs \
    https://github.com/${RHT_OCP4_GITHUB_USER}/DO288-apps \
    --context-dir build-app

