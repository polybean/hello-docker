FROM golang:1.12-alpine AS build
WORKDIR /src/
COPY demo.go /src/
RUN CGO_ENABLED=0 go build -o /bin/demo

FROM scratch
COPY --from=build /bin/demo /bin/demo
ENTRYPOINT ["/bin/demo"]
