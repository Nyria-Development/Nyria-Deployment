#!/usr/bin/env sh
JVM_MEMORY=${MEMORY:-8G}

echo "Using memory: $JVM_MEMORY"
cd /lavalink && java -Xms"${JVM_MEMORY}" -Xmx"${JVM_MEMORY}" -jar /lavalink/lavalink.jar
