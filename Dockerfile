FROM openjdk:8-jdk-alpine
EXPOSE 8080
ADD target/helloworld-images.jar helloworld-images.jar
ENTRYPOINT ["java","-jar","/helloworld-images.jar"]
