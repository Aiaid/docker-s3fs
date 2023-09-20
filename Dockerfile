FROM debian:buster

ENV S3FS_VERSION=1.92 S3FS_SHA256=76ebea3c0784c5c0f6b84e009d555806aff86258886ced39eee316bf02ae8750

ADD *.sh /

RUN /build-s3fs.sh

ENTRYPOINT ["/entry.sh"]
