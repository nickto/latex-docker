# LaTeX in Docker

## Generating documents

This docker image has Arch Linux with TeX Live installed on it. Therefore,
you could run any LaTeX commands in it that you would normally do.

The easiest option, however, is to use
[Latexmk](https://mg.readthedocs.io/latexmk.html).

Since the latest image should be pushed to
[Dockerhub](https://hub.docker.com/r/nickto/latex), you can just copy the
`docker-compose.yaml` file to the directory with `.latexmkrc` and then run

```
docker-compose run latex
```

## Updating image

Build image

```bash
docker build --no-cache -t nickto/latex:$(git rev-parse --short HEAD) .
```

Make sure it works

```bash
# Build
docker run -v $(pwd):/latex --user="$(id -u):$(id -g)" nickto/latex:$(git rev-parse --short HEAD)
# Clean up
docker run -v $(pwd):/latex --user="$(id -u):$(id -g)" nickto/latex:$(git rev-parse --short HEAD) -c
```

Tag and push

```bash
docker tag nickto/latex:$(git rev-parse --short HEAD) nickto/latex:latest
docker push nickto/latex
```
