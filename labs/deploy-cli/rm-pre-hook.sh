#!/bin/bash

echo "Removing the pre life-cycle hook..."

# Remove pre life-cycle hook
oc patch dc/version --type=json --patch '[{"op":"remove", "path": "/spec/strategy/rollingParams/pre"}]'

