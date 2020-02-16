ARG RUBY_VERSION

FROM ruby:$RUBY_VERSION-alpine

RUN apk add --no-cache --virtual .build-deps make gcc musl-dev && \
    gem install solargraph && \
    apk del .build-deps

WORKDIR /app

EXPOSE 7658
