FROM curlimages/curl

USER 0:0

RUN curl -SL -o /lavalink.jar https://github.com/lavalink-devs/Lavalink/releases/download/3.7.5/Lavalink.jar
COPY run.sh /
COPY application.yml /
RUN chmod +x /run.sh

FROM openjdk:17-slim

WORKDIR /lavalink

COPY --chown=1000:1000 --from=0 /run.sh /lavalink/
COPY --chown=1000:1000 --from=0 /lavalink.jar /lavalink/
COPY --chown=1000:1000 --from=0 /application.yml /lavalink/

RUN mkdir /lavalink/logs/ && chown -R 1000:1000 /lavalink/logs/

USER 1000:1000

CMD ["/lavalink/run.sh"]
