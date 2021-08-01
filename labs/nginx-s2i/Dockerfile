FROM registry.lab.example.com:5000/rhel7:7.3

ENV X_SCLS="rh-nginx18" \
    PATH="/opt/rh/rh-nginx18/root/usr/sbin:$PATH" \
    NGINX_DOCROOT="/opt/rh/rh-nginx18/root/usr/share/nginx/html"

LABEL io.k8s.description="A Nginx S2I builder image" \
      io.k8s.display-name="Nginx 1.8 S2I builder image for DO288" \
      io.openshift.expose-services="8080:http" \
      io.openshift.s2i.scripts-url="image:///usr/libexec/s2i" \
      io.openshift.tags="builder,webserver,nginx,nginx18,html"

ADD training.repo /etc/yum.repos.d
ADD nginxconf.sed /tmp/
COPY ./.s2i/bin/ /usr/libexec/s2i

RUN yum install -y --setopt=tsflags=nodocs rh-nginx18 \
  && yum clean all \
  && sed -i -f /tmp/nginxconf.sed /etc/opt/rh/rh-nginx18/nginx/nginx.conf \
  && chgrp -R 0 /var/opt/rh/rh-nginx18 /opt/rh/rh-nginx18 \
  && chmod -R g=u /var/opt/rh/rh-nginx18 /opt/rh/rh-nginx18 \
  && echo 'Hello from the Nginx S2I builder image' > ${NGINX_DOCROOT}/index.html

EXPOSE 8080

USER 1001

CMD ["/usr/libexec/s2i/usage"]
