FROM alpine:3.1

RUN apk --update add nodejs && npm install -g coffee-script@1.9.1 && rm -rf /var/cache/apk/*
                                                                    
# Test
RUN coffee --version | grep 1.9.1

ENTRYPOINT [ coffee ]

