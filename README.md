# Spark 2.1 worker
- Only to install standalone mode

**PULL**
```
docker push tobby48/spark-worker:latest
```


**RUN**
```
docker stop spark-worker
docker rm -f spark-worker
docker run -d \
	--name spark-worker \
	--restart=always \
	-e SPARK_MASTER=spark://xxx.xxx.xxx.xxx:7077 \
	-p 8081:8081 \
	tobby48/spark-worker:lastest
```
