FROM alpine:3.1

ARG COFFEE_VERSION
RUN apk --update add nodejs && \
    npm install -g coffee-script@$COFFEE_VERSION

# simple tests
RUN coffee --version | grep $COFFEE_VERSION
