FROM phusion/baseimage:latest
MAINTAINER Tomas Jacik <tomas@jacik.cz>

ADD image /build

RUN /build/prepare.sh && \
	/build/fpm.sh 7.3 && \
	/build/cleanup.sh

CMD ["/sbin/my_init"]
