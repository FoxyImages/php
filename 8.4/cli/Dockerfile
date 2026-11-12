FROM phusion/baseimage:resolute
LABEL org.opencontainers.image.authors="tomas@jacik.cz"

ADD image /build

RUN /build/prepare.sh && \
	/build/cli.sh 8.4 && \
	/build/cleanup.sh

CMD ["/sbin/my_init"]
