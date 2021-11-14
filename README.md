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

## User Guide

### Hadoop

#### Setup

```bash
cd hadoop
docker compose up -d
```

#### Web entry

- hadoop: http://localhost:9870
- yarn: http://localhost:8088
