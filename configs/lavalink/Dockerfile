# All Rights Reserved
# Copyright (c) 2023 Nyria
#
# This code, including all accompanying software, documentation, and related materials, is the exclusive property
# of Nyria. All rights are reserved.
#
# Any use, reproduction, distribution, or modification of the code without the express written
# permission of Nyria is strictly prohibited.
#
# No warranty is provided for the code, and Nyria shall not be liable for any claims, damages,
# or other liability arising from the use or inability to use the code.

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
