FROM alpine:3.8

RUN apk --no-cache add ffmpeg busybox-suid tzdata && \
ln -snf /usr/share/zoneinfo/America/Chicago /etc/localtime && \
echo 'America/Chicago' > /etc/timezone && \
addgroup -g 1000 jie && adduser -D -G jie -u 1000 jie

VOLUME /files

RUN chown jie:jie /files

WORKDIR /files

CMD ["--help"]
ENTRYPOINT ["ffprobe"]

