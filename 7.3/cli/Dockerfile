FROM phusion/baseimage:latest-amd64
MAINTAINER Tomas Jacik <tomas@jacik.cz>

ADD image /build

RUN /build/prepare.sh && \
	/build/cli.sh 7.3 && \
	/build/cleanup.sh

CMD ["/sbin/my_init"]
