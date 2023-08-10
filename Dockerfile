FROM openjdk:11
EXPOSE 8080
WORKDIR /mnt/studydevops
COPY . /mnt/studydevops
ADD target/helloworld-images.jar helloworld-images.jar
ENTRYPOINT ["java","-jar","/helloworld-images.jar"]
