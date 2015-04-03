FROM debian:jessie
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get -y install curl locales python-cheetah wget tar ca-certificates curl && \
    locale-gen en_AU en_AU.UTF-8

RUN curl -L -O https://github.com/midgetspy/Sick-Beard/tarball/master && \
    tar -xvf master -C /  && mv /midgetspy-Sick-Beard-* /sickbeard/ && rm master

VOLUME /config
VOLUME /data

ADD ./start.sh /start.sh
RUN chmod u+x  /start.sh

EXPOSE 8081

ENTRYPOINT ["/start.sh"]
