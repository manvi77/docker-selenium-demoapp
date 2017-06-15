# docker-selenium-demoapp
# Docker Selenium Example

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
