FROM gliderlabs/alpine:3.2

ADD https://dl.bintray.com/mitchellh/consul/0.5.2_web_ui.zip /tmp/webui.zip
ADD consul.json /etc/consul.d/

RUN \
  apk --update add bash make go git gcc musl-dev openssl-dev && \
  mkdir -p /opt/consul/bin /opt/consul/webui && \
  export GOPATH=/go && \
  go get -u -v github.com/hashicorp/consul && \
  cd /go/src/github.com/hashicorp/consul && \
  git checkout v0.5.2 && \
  make && \
  mv bin/consul /opt/consul/bin/ && \
  cd / && \
  rm -rf /go && \
  unzip /tmp/webui.zip -d /opt/consul/webui/ && \
  rm /tmp/webui.zip && \
  apk --purge del bash make go git gcc musl-dev openssl-dev

ENV GOMAXPROCS 10

EXPOSE 8300 8301 8301/udp 8302 8302/udp 8400 8500 8600 8600/udp

CMD /opt/consul/bin/consul agent -config-dir /etc/consul.d
