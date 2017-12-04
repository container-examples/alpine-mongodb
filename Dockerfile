FROM alpine:3.6

RUN apk add --no-cache mongodb
COPY ./scripts/start.sh /

VOLUME [ "/data/db" ]

EXPOSE 27017 28017

ENTRYPOINT [ "./start.sh" ]
CMD [ "mongod" ]