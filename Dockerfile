FROM openjdk:11
COPY target/springbootdocker-0.0.1-SNAPSHOT.jar hello-world-1.0.0.jar
ENTRYPOINT ["java","-jar","/hello-world-1.0.0.jar"]