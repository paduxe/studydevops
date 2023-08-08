FROM openjdk:11
EXPOSE 8080
ADD target/helloworld-images.jar helloworld-images.jar
ENTRYPOINT ["java","-jar","/helloworld-images.jar"]
