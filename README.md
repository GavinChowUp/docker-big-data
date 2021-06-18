# Docker-Big-Data

## The Purpose

Setup a big data env quickly, easy for beginner, current support:

- Hadoop(3.2.1)
    - namenode
    - datanode
    - resourcemanager
    - nodemanager
    - historyserver

- Hive(3.1.2) based on Hadoop 3.2.1
    - hive-server
    - hive-metastore
    - hive-metastore-postgresql

- Spark(3.1.2)
    - spark-client

## Prerequisite

- docker
- docker-compose

## User Guide

### Setup

```bash
cd docker-big-data
docker compose up -d
```

### Web entry

- hadoop: http://localhost:9870
- yarn: http://localhost:8088

## Developer Guide