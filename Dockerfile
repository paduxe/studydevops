FROM openjdk:11
EXPOSE 8080
RUN mkdir -p /app/studydevops
WORKDIR /app/studydevops
COPY ./target/helloworld-images.jar /app/studydevops/helloworld-images.jar
ENTRYPOINT ["java","-jar","/app/studydevops/helloworld-images.jar"]
