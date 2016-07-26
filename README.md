
## Start daemon (if stopped)

### OSX

open Docker app

### Linux

#### w/ SystemD

sudo systemctl start docker

#### w/ Upstart

sudo [status/start/stop/restart] docker

## Build image

```sh
name="notebook"

# from directory containing target 'Dockerfile'
docker build -t $name .
```

## Run container

```sh
# On host (local if running locally):
cid=$(sudo docker run -d -p 8888:8888 $name)
```

```sh
# Locally:
host="localhost" # or host name if not local
open "http://$host:8888"
```

## Modify running container

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

### Enter commands

e.g.
`pip3 install feather-format`
`pip freeze -r requirements.txt`
