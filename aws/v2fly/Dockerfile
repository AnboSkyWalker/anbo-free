FROM v2fly/v2fly-core:latest

LABEL maintainer anbo

RUN apk update && apk add curl bash tree tzdata \
    && cp -r -f /usr/share/zoneinfo/Asia/Shanghai /etc/localtime 

COPY config_s.json /etc/v2ray/config.json

CMD ["v2ray", "-config=/etc/v2ray/config.json"]
