# Docker-Big-Data

## The Purpose

Use the Wheel to set up a big data env quickly, easy for beginner, current support:

- Hadoop(3.2.1)
    - namenode
    - datanode
    - resourcemanager
    - nodemanager
    - historyserver

- Flink(1.13.3 | only for Debugging Per-Job Cluster)

## Prerequisite

- docker
- docker-compose
- create docker network(`import`)
    - docker network create hadoop_net

## User Guide

### network

You could use `docker network ls` to find `hadoop_net` and use `docker network inspect hadoop_net` to find the contains Connected to this network

### Hadoop

#### Setup

```bash
cd hadoop
docker compose up -d
```

#### Web entry

- hadoop: http://localhost:9870
- yarn: http://localhost:8088

