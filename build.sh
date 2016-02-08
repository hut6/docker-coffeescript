#!/bin/sh

VERSION=$1

echo "FROM alpine:3.1

RUN apk --update add nodejs && npm install -g coffee-script@$VERSION && rm -rf /var/cache/apk/*
                                                                    
# Test
RUN coffee --version | grep $VERSION

ENTRYPOINT [ \"coffee\" ]
" > Dockerfile

git commit -am "Version $VERSION"
git tag -f $VERSION
#git push --force origin $VERSION;
