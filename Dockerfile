FROM quay.io/ukhomeofficedigital/python-alpine
RUN apk upgrade --no-cache
RUN apk add --no-cache bash openssl gettext

RUN wget https://storage.googleapis.com/kubernetes-release/release/v1.20.0/bin/linux/amd64/kubectl \
  -O /usr/bin/kubectl && chmod +x /usr/bin/kubectl
