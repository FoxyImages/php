FROM phusion/baseimage:jammy-1.0.0
MAINTAINER Tomas Jacik <tomas@jacik.cz>

ADD image /build

RUN /build/prepare.sh && \
	/build/fpm.sh 8.2 && \
	/build/cleanup.sh

CMD ["/sbin/my_init"]
