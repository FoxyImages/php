FROM phusion/baseimage:noble-1.0.0
LABEL org.opencontainers.image.authors="tomas@jacik.cz"

ADD image /build

RUN /build/prepare.sh && \
	/build/fpm.sh 8.2 && \
	/build/cleanup.sh

CMD ["/sbin/my_init"]
