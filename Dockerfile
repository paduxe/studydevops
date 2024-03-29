# First stage: complete build environment
FROM maven:3.9.1-amazoncorretto-11 AS builder
WORKDIR /app/studydevops

# add pom.xml and source code
ADD ./pom.xml pom.xml
ADD ./src src/

# package jar
RUN mvn package -Dmaven.test.skip

# Second stage: minimal runtime environment
From openjdk:11.0-jre
WORKDIR /app/studydevops

# copy jar from the first stage
COPY --from=builder /app/studydevops/target/helloworld-images.jar /app/studydevops/helloworld-images.jar

ENTRYPOINT ["java","-jar","helloworld-images.jar"]
