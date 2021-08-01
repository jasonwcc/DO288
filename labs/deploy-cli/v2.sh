#!/bin/bash

echo "Changing version of app to 2..."
sed -i 's/version 1/version 2/g' /home/student/node-version/app.js

cd /home/student/node-version

echo "Committing the changes..."
git commit -a -m "Changed app version to 2"

echo "Pushing changes to classroom Git repository..."
git push
cd ~
