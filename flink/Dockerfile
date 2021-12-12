FROM openjdk:8-jre

RUN apt-get update \
    && apt-get install iputils-ping -y \
    && wget -P /opt https://dlcdn.apache.org/flink/flink-1.13.3/flink-1.13.3-bin-scala_2.12.tgz \
    && tar -zxvf opt/flink-1.13.3-bin-scala_2.12.tgz -C /opt \
    && wget -P /opt https://archive.apache.org/dist/hadoop/common/hadoop-3.2.1/hadoop-3.2.1.tar.gz \
    && tar -zxvf opt/hadoop-3.2.1.tar.gz -C opt/ \
    && rm -r opt/flink-1.13.3-bin-scala_2.12.tgz opt/hadoop-3.2.1.tar.gz

ENV PATH=/opt/hadoop-3.2.1/bin:/opt/flink-1.13.3/bin:${PATH}
ENV HADOOP_CLASSPATH=/opt/hadoop-3.2.1/etc/hadoop:/opt/hadoop-3.2.1/share/hadoop/common/lib/*:/opt/hadoop-3.2.1/share/hadoop/common/*:/opt/hadoop-3.2.1/share/hadoop/hdfs:/opt/hadoop-3.2.1/share/hadoop/hdfs/lib/*:/opt/hadoop-3.2.1/share/hadoop/hdfs/*:/opt/hadoop-3.2.1/share/hadoop/mapreduce/lib/*:/opt/hadoop-3.2.1/share/hadoop/mapreduce/*:/opt/hadoop-3.2.1/share/hadoop/yarn:/opt/hadoop-3.2.1/share/hadoop/yarn/lib/*:/opt/hadoop-3.2.1/share/hadoop/yarn/*

EXPOSE 8081
EXPOSE 5005
EXPOSE 5006
