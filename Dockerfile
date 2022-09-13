FROM openjdk:8-jre-alpine3.9

ENV DB_USER=admin \
    DB_PWD=adminpass \
    DB_SERVER=localhost \
    DB_NAME=team-member-projects

EXPOSE 8080

RUN mkdir -p /home/app

COPY ./build/libs/bootcamp-java-mysql-project-1.0-SNAPSHOT.jar /home/app

WORKDIR /home/app

CMD ["java", "-jar", "bootcamp-java-mysql-project-1.0-SNAPSHOT.jar" ]