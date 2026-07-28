FROM nginxinc/nginx-unprivileged:1.27-alpine

COPY --chown=101:101 index.html /usr/share/nginx/html/index.html
COPY --chown=101:101 default.conf /etc/nginx/conf.d/default.conf

USER 101

EXPOSE 8080

HEALTHCHECK --interval=10s --timeout=3s --start-period=5s --retries=3 \
  CMD wget -q -O /dev/null http://127.0.0.1:8080/health || exit 1

