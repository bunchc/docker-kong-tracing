# Kong in Docker Compose

Docker Compose file and supporting Kong config files for various scenarios.
## Examples

Kong with Database

```shell
export KONG_DATABASE="postgres"
export KONG_PG_DATABASE="kong"
export COMPOSE_PROFILES="database,influx,jaeger"
export KONG_LICENSE_DATA="$(cat ~/.kong-license-data/license.json)"
export KONG_DOCKER_TAG=kong/kong-gateway:2.8.1.0-alpine

docker-compose up -d
```

## TODO

* Add a consumer in `kong.yaml` for deck to apply
* Add consumer to request in `test.sh`
