FROM phusion/baseimage:latest-amd64
MAINTAINER Tomas Jacik <tomas@jacik.cz>

ADD image /build

RUN /build/prepare.sh && \
	/build/cli.sh 8.1 && \
	/build/cleanup.sh

CMD ["/sbin/my_init"]
