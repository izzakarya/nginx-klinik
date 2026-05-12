FROM nginx:alpine

COPY docker/default.conf.template /etc/nginx/conf.d/default.conf.template
COPY docker/entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]