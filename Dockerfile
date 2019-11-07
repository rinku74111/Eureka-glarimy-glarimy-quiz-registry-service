FROM maven:3.5-jdk-8 AS build
COPY src /usr/quiz-registery-service/src
COPY pom.xml /quiz-registery-service
RUN mvn -f /usr/quiz-registery-service/pom.xml clean package
EXPOSE 8080
ENTRYPOINT ["java", "-jar","/usr/quiz-registery-service/target/quiz-registery-service-1.0.0.jar"]
