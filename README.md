
## Setup

### Docker for OSX

```sh
docker-machine create --driver virtualbox default
docker-machine ls
docker-machine env default
eval "$(docker-machine env default)"
docker run hello-world
```

## Start daemon

### OSX

```sh
## docker-machine start default?
docker-machine env default ## if different ip? or just do this?
```

## Run

### OSX local

```sh
cid=$(docker run -d -p 8888:8888 jupyter/datascience-notebook)
host="localhost"
open "http://$host:8888"
```

### w/ Docker on Linux

```sh
# SSH'd into server:
cid=$(docker run -d -p 8888:8888 jupyter/datascience-notebook)
# Locally
host="[myserver]"
open "http://$host:8888"
```

## Modify (install packages in) running container

### Pull up container terminal

#### Via server terminal

```sh
docker exec -it $cid bash
```
#### Via ipython

```sh
open "http://$host:8888"
# select 'New' (dropdown) -> 'Terminal'
```

### Run install commands in container terminal
```sh
pip3 install feather-format
Rscript -e 'install.packages("feather", repos="http://cloud.r-project.org")'
Rscript -e 'install.packages("nycflights13", repos="http://cloud.r-project.org")'
```
