FROM phusion/baseimage:focal-1.0.0
MAINTAINER Tomas Jacik <tomas@jacik.cz>

ADD image /build

RUN /build/prepare.sh && \
	/build/fpm.sh 7.4 && \
	/build/cleanup.sh

CMD ["/sbin/my_init"]
