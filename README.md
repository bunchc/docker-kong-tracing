# Kong in Docker Compose w/ Jaeger or Zipkin

A docker-compose environment with Kong Gateway exporting tracing data to Jaeger or Zipkin.

## Usage

```shell
# Set the Kong license
export KONG_LICENSE_DATA="$(cat ~/.kong-license-data/license.json)"

# Configure the Kong docker image
export KONG_DOCKER_TAG=kong/kong-gateway:2.8-alpine

# Tells docker-compose which services to start.
# Options are one of: zipkin, jaeger, influx
# 'database' can also be provided to run Kong with a postgres database
export COMPOSE_PROFILES='influx zipkin'

# When using the 'database' profile, set this to 'postgres'
export KONG_DATABASE=off

# Enable Kong Vitals
# When setting this to on, and KONG_DATABASE is set to off, use the 'influx' profile to store Vitals data in influxdb
export KONG_VITALS=on

# Enables Kong's Granular tracing
# ref: https://docs.konghq.com/gateway/2.8.x/reference/configuration/#granular-tracing-section
export KONG_TRACING=on

```
