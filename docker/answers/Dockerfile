FROM ubuntu:bionic

RUN apt-get update && \
    apt-get install -y python3 python3-pip

RUN pip3 install pytz

COPY app_when.py /

USER 1000

ENTRYPOINT ["python3", "/app_when.py"]
