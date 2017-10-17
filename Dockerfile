FROM 32bit/debian

RUN apt-get -y update && apt-get -y install sane 
WORKDIR /app
COPY app /app


RUN ./setup

