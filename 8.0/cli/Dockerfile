FROM phusion/baseimage:jammy-1.0.1
MAINTAINER Tomas Jacik <tomas@jacik.cz>

ADD image /build

RUN /build/prepare.sh && \
	/build/cli.sh 8.0 && \
	/build/cleanup.sh

CMD ["/sbin/my_init"]
