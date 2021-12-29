FROM openjdk:13-alpine
ARG JAR_FILE
COPY target/${JAR_FILE} app.jar
RUN mkdir -p /site/www/root/temp/
RUN apk --no-cache add curl
ENTRYPOINT ["java","-jar","/app.jar"]
