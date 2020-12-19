FROM python:3.8
ENV PYTHONUNBUFFERED 1
RUN apt-get update
RUN apt-get install -y git
RUN ls
RUN mkdir /code
RUN ls
RUN git clone https://github.com/mpbarbhaya/latesttest.git
RUN ls
RUN cd latesttest
COPY . /code/
WORKDIR /code

RUN ls
RUN pip install -r requirements.txt