FROM plaincast:ci

WORKDIR ${GOPATH}/src/github.com/ihor-mutel/plaincast/
COPY . ${GOPATH}/src/github.com/ihor-mutel/plaincast/

RUN go mod init plaincast
RUN go mod tidy
RUN go install -i .

ENTRYPOINT [ "plaincast" ]
