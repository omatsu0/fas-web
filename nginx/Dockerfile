FROM nginx:1.20.0

RUN rm -f /etc/nginx/conf.d/*

ADD nginx.conf /etc/nginx/conf.d/fasweb.conf
CMD /usr/sbin/nginx -g 'daemon off;' -c /etc/nginx/nginx.conf