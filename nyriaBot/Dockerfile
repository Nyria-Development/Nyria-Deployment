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

FROM python:3.11

USER 0:0

RUN apt-get update && apt-get install -y git
COPY config/ /

WORKDIR /nyriaBot
RUN git clone https://github.com/Nyria-Development/Bot-Nyria.git /nyriaBot
RUN git pull

RUN pip install --upgrade pip
RUN pip install --trusted-host pypi.python.org -r requirements.txt

WORKDIR /
RUN mkdir /nyriaBot/resources/config
COPY /config /nyriaBot/resources/config/

WORKDIR /nyriaBot
CMD ["python3", "nyria.py"]
