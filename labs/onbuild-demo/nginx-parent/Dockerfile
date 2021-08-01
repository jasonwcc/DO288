FROM rhel7:7.3

MAINTAINER Red Hat Training

# General docker labels
LABEL Component="nginx" \
      Name="do288/nginx-parent" \
      Version="1.8.0" \
      Release="1"

# Labels could be consumed by OpenShift
LABEL io.k8s.description="nginx [engine x] is an HTTP and reverse proxy server." \
      io.k8s.display-name="nginx 1.8.0" \
      io.openshift.expose-services="80:http" \
      io.openshift.tags="nginx"

ADD training.repo /etc/yum.repos.d/training.repo

RUN yum -y update --setopt=tsflags=nodocs && \
    yum -y install --setopt=tsflags=nodocs --noplugins scl-utils rh-nginx18 && \
    yum clean all && \
    mkdir -p /usr/share/nginx/html

# Get prefix path and path to scripts rather than hard-code them in scripts
ENV CONTAINER_SCRIPTS_PATH=/usr/share/container-scripts/nginx \
ENABLED_COLLECTIONS=rh-nginx18

# When bash is started non-interactively, to run a shell script, for example it
# looks for this variable and source the content of this file. This will enable
# the SCL for all scripts without need to do 'scl enable'.
ENV BASH_ENV=${CONTAINER_SCRIPTS_PATH}/scl_enable \
    ENV=${CONTAINER_SCRIPTS_PATH}/scl_enable \
    PROMPT_COMMAND=". ${CONTAINER_SCRIPTS_PATH}/scl_enable"

ADD root /

# Generic index page provided by parent
RUN echo "Hello from nginx-parent container!" > /usr/share/nginx/html/index.html

# Allow children images to overwrite contents in DocRoot
ONBUILD COPY src/ /usr/share/nginx/html/

EXPOSE 80

ENTRYPOINT ["container-entrypoint"]
CMD [ "nginx18" ]
