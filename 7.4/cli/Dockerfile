FROM phusion/baseimage:latest
MAINTAINER Tomas Jacik <tomas@jacik.cz>

ADD image /build

RUN /build/prepare.sh && \
	/build/cli.sh 7.4 && \
	/build/cleanup.sh

CMD ["/sbin/my_init"]
