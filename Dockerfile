FROM golang:alpine
LABEL maintainer="Maisnam Raju <maisnamraju@gmail.com>"

RUN apk add --no-cache make patch

ENTRYPOINT ["make"]
CMD ["-h"]
