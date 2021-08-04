#!/bin/sh

source /usr/local/etc/ocp4.config

oc new-app  --name elvis \
    "quay.io/${RHT_OCP4_GITHUB_USER}/do288-hello-java"
