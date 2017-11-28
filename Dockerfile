FROM openjdk:8
VOLUME /tmp
ADD target/todo-0.0.1-SNAPSHOT.jar todo-0.0.1-SNAPSHOT.jar
EXPOSE 8080
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/todo-0.0.1-SNAPSHOT.jar"]
