#!/bin/bash

echo "Changing version of app to 3..."
sed -i 's/version 2/version 3/g' /home/student/node-version/app.js

echo "Committing the changes..."
cd /home/student/node-version
git commit -a -m "Changed app version to 3"

echo "Pushing changes to classroom Git repository..."
git push
cd ~

echo "Starting new build of application..."
oc start-build version
