FROM alpine:3.1

ENV VERSION 1.7.0

RUN apk --update add nodejs\<5 && npm install -g coffee-script@$VERSION && rm -rf /var/cache/apk/*
                                                                    
# Test
RUN coffee --version | grep 1.10.0

ENTRYPOINT [ "coffee" ]

