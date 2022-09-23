FROM maven:3.8.6-openjdk-8
MAINTAINER jiahao.zhang
ENV LANG C.UTF-8
ENV TZ Asia/Shanghai
WORKDIR /app
COPY . .
EXPOSE 8080
RUN mvn clean install -Dmaven.test.skip=true
ENTRYPOINT ["java","-jar","target/spring-boot-file-upload-1.0.jar"]
