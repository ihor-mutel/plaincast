FROM plaincast:ci

WORKDIR ${GOPATH}/src/github.com/ihor-mutel/plaincast/
COPY . ${GOPATH}/src/github.com/ihor-mutel/plaincast/

RUN go mod init plaincast
RUN go mod tidy

RUN go install .

RUN echo BBBBBBBBB
RUN grep -r FRIENDLY_NAME /go/pkg/mod/github.com/ihor-mutel/
RUN grep -r TEST /go/pkg/mod/github.com/ihor-mutel/

ENTRYPOINT [ "plaincast" ]
