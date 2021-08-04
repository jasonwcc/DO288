#!/bin/bash

source /usr/local/etc/ocp4.config
cd /home/student/DO288/labs/trigger-builds
VERSION="newer"
sudo XDG_RUNTIME_DIR=$XDG_RUNTIME_DIR skopeo copy oci-archive:php-73-ubi8-${VERSION}.tar.gz docker://quay.io/${RHT_OCP4_QUAY_USER}/php-73-ubi8:latest
