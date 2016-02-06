FROM alpine:3.1
RUN apk --update add nodejs && npm install -g coffee-script@1.8.0
                                                                    
# simple tests
RUN coffee --version | grep 1.8.0

