FROM postgres:13.1-alpine

RUN apk --update add shadow
RUN usermod -u 1000 postgres && groupmod -g 1000 postgres
RUN apk --update add sudo