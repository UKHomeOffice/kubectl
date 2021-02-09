FROM quay.io/ukhomeofficedigital/python-alpine:3.8-alpine3.12
RUN apk upgrade --no-cache
RUN apk add --no-cache bash openssl gettext
RUN mkdir /APP
ENV USERMAP_UID 1000
RUN adduser -D -H 1000 && chown -R 1000 /APP
USER ${USERMAP_UID}
RUN wget https://storage.googleapis.com/kubernetes-release/release/v1.20.0/bin/linux/amd64/kubectl \
  -O /usr/bin/kubectl && chmod +x /usr/bin/kubectl
