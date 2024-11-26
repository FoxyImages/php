FROM phusion/baseimage:jammy-1.0.4
LABEL org.opencontainers.image.authors="tomas@jacik.cz"

ADD image /build

RUN /build/prepare.sh && \
	/build/fpm.sh 8.1 && \
	/build/cleanup.sh

CMD ["/sbin/my_init"]
