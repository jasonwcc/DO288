#!/bin/bash

oc new-app --as-deployment-config --name mysql \
    -e MYSQL_USER=test \
    -e MYSQL_PASSWORD=redhat \
    -e MYSQL_DATABASE=testdb \
    -e MYSQL_AIO=0 \
    --docker-image registry.redhat.io/rhel8/mysql-80
