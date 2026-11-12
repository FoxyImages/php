FROM phusion/baseimage:resolute
LABEL org.opencontainers.image.authors="tomas@jacik.cz"

ADD image /build

RUN /build/prepare.sh && \
	/build/fpm.sh 8.6 && \
	/build/cleanup.sh

CMD ["/sbin/my_init"]
