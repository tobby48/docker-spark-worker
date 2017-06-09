#!/bin/sh

if [ -n "$1" ]; then
    exec "$@"
fi

if [ -z "$SPARK_MASTER" ]; then
    echo Missing SPARK_MASTER environment variable 1>&2
    exit 1
fi

exec bin/spark-class org.apache.spark.deploy.worker.Worker ${SPARK_MASTER}
