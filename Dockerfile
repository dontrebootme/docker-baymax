FROM alpine
MAINTAINER  Patrick OConnor <patrick@dontreboot.me>

RUN apk add --update nginx && \
  rm -rf /var/cache/apk/* && \
  chown -R nginx:www-data /var/lib/nginx && \
  echo 'daemon off;' >> /etc/nginx/nginx.conf
# Bring in the baymax
ADD html /var/lib/nginx/html

# Expose port 80
EXPOSE 80

# Run nginx
RUN mkdir /run/nginx && \
  sed -i "s/XXX/$(hostname -f)/" /var/lib/nginx/html/index.html

ENTRYPOINT nginx
