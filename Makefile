CURRENT_VERSION=hadoop3.3.0-java8

build:
	docker build -t gavinup/hadoop-base:$(CURRENT_VERSION) ./hadoop/base
	docker build -t gavinup/hadoop-namenode:$(CURRENT_VERSION) ./hadoop/namenode
	docker build -t gavinup/hadoop-datanode:$(CURRENT_VERSION) ./hadoop/datanode
	docker build -t gavinup/hadoop-resourcemanager:$(CURRENT_VERSION) ./hadoop/resourcemanager
	docker build -t gavinup/hadoop-nodemanager:$(CURRENT_VERSION) ./hadoop/nodemanager
	docker build -t gavinup/hadoop-historyserver:$(CURRENT_VERSION) ./hadoop/historyserver

	docker push gavinup/hadoop-base:$(CURRENT_VERSION)
	docker push gavinup/hadoop-namenode:$(CURRENT_VERSION)
	docker push gavinup/hadoop-datanode:$(CURRENT_VERSION)
	docker push gavinup/hadoop-resourcemanager:$(CURRENT_VERSION)
	docker push gavinup/hadoop-nodemanager:$(CURRENT_VERSION)
	docker push gavinup/hadoop-historyserver:$(CURRENT_VERSION)