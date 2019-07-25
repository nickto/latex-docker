
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

