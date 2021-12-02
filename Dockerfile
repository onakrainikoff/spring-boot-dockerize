FROM maven:3-openjdk-11 as build
ADD . .
RUN mvn clean install

FROM openjdk:11-jdk-slim as depoloy
WORKDIR srv
COPY --from=build /target/spring-boot-dockerize.jar spring-boot-dockerize.jar
ENV JAVA_OPTS='-Xmx512m -Xms512m'
CMD java $JAVA_OPTS -jar spring-boot-dockerize.jar