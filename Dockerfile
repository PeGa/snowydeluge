FROM alpine:latest
LABEL maintainer="dev@pega.sh"
RUN 	apk update && \
	apk upgrade && \
	apk add build-base \
		zlib-dev \
		python3-dev \
		libffi-dev \
		py3-cryptography \
		jpeg-dev \
		py3-pip && \
	pip3 install deluge && \
	apk del -r --purge build-base py3-pip && \
	rm -rf /var/cache/apk/*
CMD	deluged --do-not-daemonize -p 58846 -u 0.0.0.0
