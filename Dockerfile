# FROM python:3.8
# ENV PYTHONUNBUFFERED 1
# RUN mkdir /code
# WORKDIR /code
# COPY requirements.txt /code/
# RUN pip install -r requirements.txt
# COPY . /code/

FROM python:3.8
ENV PYTHONUNBUFFERED 1
# FROM ubuntu
# MAINTAINER "mpbarbhaya"
RUN apt-get update
RUN apt-get install -y git

RUN mkdir /code
WORKDIR /code
# RUN cd /home/latesttest
RUN git clone https://github.com/mpbarbhaya/latesttest.git
# WORKDIR /home/latesttest
COPY latesttest /code/
RUN pip install -r requirements.txt