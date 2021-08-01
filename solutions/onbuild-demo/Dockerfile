# Use the nginx-parent image as base
FROM registry.lab.example.com:5000/do288/nginx-parent

# Change the port to 8080
EXPOSE 8080

# Override the LABEL from parent
LABEL io.openshift.expose-services="8080:http"

# Change web server port to 8080
RUN sed -i "s/listen 80/listen 8080/g" /etc/nginx.conf

# Permissions to allow container to run on OpenShift
RUN chgrp -R 0 /var/opt/rh/rh-nginx18 && chmod -R g=u /var/opt/rh/rh-nginx18
