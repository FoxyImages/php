FROM phusion/baseimage:noble-1.0.2
LABEL org.opencontainers.image.authors="tomas@jacik.cz"

ADD image /build

RUN /build/prepare.sh && \
	/build/cli.sh 8.1 && \
	/build/cleanup.sh

CMD ["/sbin/my_init"]
