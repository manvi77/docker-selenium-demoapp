# docker-selenium-demoapp

It is based on [Docker-Selenium-Example](https://github.com/Eficode/Docker-Selenium-Example). Except the change that instead of using demoapp image in docker-compose.yml file directly, demoapp is implemented in this repo.

## Create Fresh Docker Engine
It's recommended to use docker-machine to create a clean engine for this example.
```
docker-machine create -d virtualbox test-machine
eval $(docker-machine env test-machine)
```

## Launch

**Test application:**
```
docker-compose up -d demoapp
```

**Test Infra:**
```

docker-compose up -d hub firefox chrome
```

**Robot Framework Tests with browsers:**
```
docker-compose run test-ff
docker-compose run test-gc
```

## Cleanup
```
docker-compose down
docker-machine rm -f test-machine
```

## Reference
https://github.com/Eficode/Docker-Selenium-Example
