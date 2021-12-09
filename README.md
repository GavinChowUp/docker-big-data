# Docker-Big-Data

## The Purpose

Use the Wheel to set up a big data env quickly, easy for beginner, current support:

- Hadoop(3.2.1)
    - namenode
    - datanode
    - resourcemanager
    - nodemanager
    - historyserver

## Prerequisite

- docker
- docker-compose
- create docker network(`import`)
  - docker network create hadoop_net

## User Guide

### network

所有container 均在 `hadoop_default` 下,可使用`docker network ls` 命令查看

### Hadoop

#### Setup

```bash
cd hadoop
docker compose up -d
```

#### Web entry

- hadoop: http://localhost:9870
- yarn: http://localhost:8088

