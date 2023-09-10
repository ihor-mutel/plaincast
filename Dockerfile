FROM golang:1.17

RUN \
  apt update && \
  DEBIAN_FRONTEND=noninteractive \
    apt-get install -y --no-install-recommends \
      libmpv-dev \
      python3-pip \
      python-is-python3 \
  && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/*

RUN \
  pip install --no-cache youtube-dl \
  && youtube-dl --version

WORKDIR ${GOPATH}/src/github.com/ihor-mutel/plaincast/
COPY . ${GOPATH}/src/github.com/ihor-mutel/plaincast/

RUN go mod init plaincast
RUN go mod tidy
RUN go install -i .

ENTRYPOINT [ "plaincast" ]
