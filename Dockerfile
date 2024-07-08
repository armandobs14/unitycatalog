FROM adoptopenjdk/openjdk11:alpine

ENV PATH="${PATH}:/app/bin"

WORKDIR /app
COPY . /app

RUN apk add --no-cache bash
RUN /app/build/sbt package

EXPOSE 8080

CMD [ "start-uc-server" ]