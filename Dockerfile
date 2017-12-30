FROM alpine:latest

RUN apk update && apk add git curl make autoconf automake libtool build-base gcc abuild binutils binutils-doc gcc-doc

RUN cd / && \
 mkdir opt && \
 cd opt && \
 git clone https://github.com/metairie/inotify-tools.git && \
 cd inotify-tools && \
 ./autogen.sh && \
 ./configure && \
 make && \
 make install

