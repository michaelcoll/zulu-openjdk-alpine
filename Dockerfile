FROM alpine:3

ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

RUN wget --quiet https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub -P /etc/apk/keys/ && \
    apk --repository https://repos.azul.com/zulu/alpine --no-cache add zulu17-jre~=17.0.3 tzdata && \
    apk upgrade

ENV JAVA_HOME=/usr/lib/jvm/zulu17-ca
