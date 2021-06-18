CURRENT_HADDOP_JAVA_VERSION=hadoop3.3.0-java8
CURRENT_HIVE_VERSION=hive3.1.2

build:
	docker build -t gavinup/hadoop-base:$(CURRENT_HADDOP_JAVA_VERSION) ./hadoop/base
	docker build -t gavinup/hadoop-namenode:$(CURRENT_HADDOP_JAVA_VERSION) ./hadoop/namenode
	docker build -t gavinup/hadoop-datanode:$(CURRENT_HADDOP_JAVA_VERSION) ./hadoop/datanode
	docker build -t gavinup/hadoop-resourcemanager:$(CURRENT_HADDOP_JAVA_VERSION) ./hadoop/resourcemanager
	docker build -t gavinup/hadoop-nodemanager:$(CURRENT_HADDOP_JAVA_VERSION) ./hadoop/nodemanager
	docker build -t gavinup/hadoop-historyserver:$(CURRENT_HADDOP_JAVA_VERSION) ./hadoop/historyserver

	docker push gavinup/hadoop-base:$(CURRENT_HADDOP_JAVA_VERSION)
	docker push gavinup/hadoop-namenode:$(CURRENT_HADDOP_JAVA_VERSION)
	docker push gavinup/hadoop-datanode:$(CURRENT_HADDOP_JAVA_VERSION)
	docker push gavinup/hadoop-resourcemanager:$(CURRENT_HADDOP_JAVA_VERSION)
	docker push gavinup/hadoop-nodemanager:$(CURRENT_HADDOP_JAVA_VERSION)
	docker push gavinup/hadoop-historyserver:$(CURRENT_HADDOP_JAVA_VERSION)

	docker build -t gavinup/hive-base:$(CURRENT_HIVE_VERSION) ./hive/base
	docker build -t gavinup/hive-metastore-postgresql:postgresql13 ./hive/metastore-postgresql

	docker push gavinup/hive-base:$(CURRENT_HIVE_VERSION)
	docker push gavinup/hive-metastore-postgresql:postgresql13 