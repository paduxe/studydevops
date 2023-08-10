FROM openjdk:11
EXPOSE 8080
COPY ./configs /configs
COPY main /main
ADD target/helloworld-images.jar helloworld-images.jar
ENTRYPOINT ["java","-jar","/helloworld-images.jar"]
