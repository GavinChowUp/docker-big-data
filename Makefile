CURRENT_HADDOP_JAVA_VERSION=hadoop3.3.0-java8
CURRENT_HIVE_VERSION=hive3.1.2
DOCKER_USER=gavinup

build:
	docker build -t $(DOCKER_USER)/hadoop-base:$(CURRENT_HADDOP_JAVA_VERSION) ./hadoop/base
	docker build -t $(DOCKER_USER)/hadoop-namenode:$(CURRENT_HADDOP_JAVA_VERSION) ./hadoop/namenode
	docker build -t $(DOCKER_USER)/hadoop-datanode:$(CURRENT_HADDOP_JAVA_VERSION) ./hadoop/datanode
	docker build -t $(DOCKER_USER)/hadoop-resourcemanager:$(CURRENT_HADDOP_JAVA_VERSION) ./hadoop/resourcemanager
	docker build -t $(DOCKER_USER)/hadoop-nodemanager:$(CURRENT_HADDOP_JAVA_VERSION) ./hadoop/nodemanager
	docker build -t $(DOCKER_USER)/hadoop-historyserver:$(CURRENT_HADDOP_JAVA_VERSION) ./hadoop/historyserver

	docker push $(DOCKER_USER)/hadoop-base:$(CURRENT_HADDOP_JAVA_VERSION)
	docker push $(DOCKER_USER)/hadoop-namenode:$(CURRENT_HADDOP_JAVA_VERSION)
	docker push $(DOCKER_USER)/hadoop-datanode:$(CURRENT_HADDOP_JAVA_VERSION)
	docker push $(DOCKER_USER)/hadoop-resourcemanager:$(CURRENT_HADDOP_JAVA_VERSION)
	docker push $(DOCKER_USER)/hadoop-nodemanager:$(CURRENT_HADDOP_JAVA_VERSION)
	docker push $(DOCKER_USER)/hadoop-historyserver:$(CURRENT_HADDOP_JAVA_VERSION)

	docker build -t $(DOCKER_USER)/hive-base:$(CURRENT_HIVE_VERSION) ./hive/base
	docker build -t $(DOCKER_USER)/hive-metastore-postgresql:postgresql13 ./hive/metastore-postgresql

	docker push $(DOCKER_USER)/hive-base:$(CURRENT_HIVE_VERSION)
	docker push $(DOCKER_USER)/hive-metastore-postgresql:postgresql13