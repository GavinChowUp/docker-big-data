# Flink

This is used to debug the flink source code.

The image had imported the configuration of hadoop, so we need start hadoop first.

## Prerequisite

- docker
- `start up` hadoop container
- `Add` the BreakPoint you want in IDE before `docker compose up -d`

## User Guide

### IDEA Remote Configuration



### Start up container

cd `flink` folder

```bash
docker build -t flink:1.13.3-hadoop_3.2.1-scala_2.12-java8 .
docker compose up -d
```

Then you 