#!/bin/bash

source /usr/local/etc/ocp4.config

helm install --name nexus3 ~/nexus-chart

