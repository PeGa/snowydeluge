FROM alpine:edge
LABEL maintainer="dev@pega.sh"
RUN 	echo 'http://nl.alpinelinux.org/alpine/edge/testing' >> /etc/apk/repositories && \
	apk update && \
	apk upgrade && \
	apk add deluge && \
	rm -rf /var/cache/apk/*
CMD	deluged --do-not-daemonize -p 58846 -u 0.0.0.0
