# prantlf/golang-make

[Docker] image: Go language on Alpine Linux with Make

[![prantlf/golang-make](http://dockeri.co/image/prantlf/golang-make)](https://hub.docker.com/repository/docker/prantlf/golang-make/)

[This image] is supposed to build and test applications written in [Go]. They often use `make` as a build tool, which is added by this image. This image is built automatically on the top of the tag [`alpine`] from the [golang repository], so that it always runs the current version of [Go] in the latest [Alpine Linux]. [Make] has to be updated from time to time by triggering a new build manually.

You can either create your own image based on this one, or you can use it directly to build a Go project. For example, build from sources in the current directory, where you have the `Makefile`:

    docker run --rm -it -v ${PWD}:/work -w /work \
      prantlf/golang-make clean all

If you need to install some global dependencies, which `go build` does not du automatically, or if you need to execute `go generate`, you can introduce a special target `prepare` for these steps and insert it between `clean` and `all` to the command line, for example.

## Tags

- [`latest`]

## Install

```
docker pull prantlf/golang-make
# or
docker pull prantlf/golang-make:latest
```

## Use

Just like the image from the [golang repository]. You will be able to call `make` in addition to `go`.

## Build, Test and Publish

The local image is built as `golang-make` and pushed to the docker hub as `prantlf/golang-make:latest`.

Remove an old local image:

    make clean

Check the `Dockerfile`:

    make lint

Build a new local image:

    make build

Enter an interactive shell inside the created image:

    make run

Tag the local image for pushing:

    make tag

Login to the docker hub:

    make login

Push the local image to the docker hub:

    make push

## License

Copyright (c) 2020 Ferdinand Prantl

Licensed under the MIT license.

[Docker]: https://www.docker.com/
[This image]: https://hub.docker.com/repository/docker/prantlf/golang-make
[`alpine`]: https://hub.docker.com/_/golang?tab=tags
[`latest`]: https://hub.docker.com/repository/docker/prantlf/golang-make/tags
[Go]: https://golang.org/
[golang repository]: https://hub.docker.com/_/golang
[Make]: https://www.gnu.org/software/make/
[Alpine Linux]: https://alpinelinux.org/
