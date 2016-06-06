
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

### OSX
```sh
cid=$(docker run -d -p 8888:8888 jupyter/datascience-notebook)
vm_ip=$(docker-machine ip default)
open "http://$vm_ip:8888"
```

`docker exec -it $cid bash`

```sh
pip3 install feather-format
Rscript -e 'install.packages("feather", repos="http://cloud.r-project.org")'
```

```sh
docker run -d -p 8888:8888 jupyter/datascience-notebook start-notebook.sh --NotebookApp.base_url=/some/path
```
