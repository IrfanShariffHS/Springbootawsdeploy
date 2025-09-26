FROM eclipse-temurin:21-jdk-alpine
RUN apk add curl
Volume /tmp
Expose 8080
ADD target/springboot-aws-deploy.jar app.jar
ENTRYPOINT ["java","-jar","app.jar"]