# defihelper-docker

## Requirments

- [docker](https://docs.docker.com/install/)
- [docker-compose](https://docs.docker.com/compose/install/)
- [node.js 14](https://nodejs.org/en/download/)

## Install

1. Clone defihelper-docker repo

```
git clone git@github.com:defi-helper/defihelper-docker.git defihelper-docker
```

2. Go to defihelper-docker directory

```
cd defihelper-docker
```

3. Clone projects

```
git clone git@github.com:defi-helper/defihelper-scanner.git src/defihelper-scanner
git clone git@github.com:defi-helper/defihelper-backend.git src/defihelper-backend
git clone git@github.com:defi-helper/defihelper-app.git src/defihelper-app
git clone git@github.com:defi-helper/defihelper-website.git src/defihelper-website
git clone git@github.com:defi-helper/defihelper-adapters.git src/defihelper-adapters
```

4. Run docker containers

```
docker-compose up -d
```

## Links for the local environment

- https://website-local.defihelper.io
- https://app-local.defihelper.io
- https://backend-local.defihelper.io
- https://scanner-local.defihelper.io

## Dev tools for the local environment

- https://pgadmin-local.defihelper.io (admin@defihelper.io / dev)

## Is something goes wrong

    * `docker-compose down --rmi all`
    * `docker stop $(docker ps -a -q)`
    * `docker rm $(docker ps -a -q)`
    * `docker system prune`
    * `docker images prune`
    * `docker volume prune`
    * go to step 1
