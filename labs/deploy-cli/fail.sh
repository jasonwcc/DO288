#!/bin/bash

echo "Adding a pre life-cycle hook that exits with an error..."

# Simulate a failed deployment
oc patch dc/version --patch '{"spec":{"strategy":{"rollingParams":{"pre":{"failurePolicy": "Abort","execNewPod":{"containerName":"version","command":["/bin/sh","-c","exit 1"]}}}}}}'

# Rollout new deployment with hook
oc rollout latest dc/version
