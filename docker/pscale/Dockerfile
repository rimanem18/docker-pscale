FROM alpine

ENV PSCALE_VERSION=0.115.0

RUN apk update && apk add wget mysql-client \
&& wget https://github.com/planetscale/cli/releases/download/v${PSCALE_VERSION}/pscale_${PSCALE_VERSION}_linux_amd64.tar.gz \
&& tar -zxvf pscale_${PSCALE_VERSION}_linux_amd64.tar.gz \
&& mv pscale /usr/bin