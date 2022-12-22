#FROM openjdk:19
#COPY ./target/seMethods-0.1.0.4-jar-with-dependencies.jar /tmp
#WORKDIR /tmp
#ENTRYPOINT ["java", "-jar", "seMethods-0.1.0.4-jar-with-dependencies.jar"]

#Updating docker file by provide the correct location for the database
FROM openjdk:latest
COPY ./target/seMethods.jar /tmp
WORKDIR /tmp
ENTRYPOINT ["java", "-jar", "seMethods.jar", "db:3306", "30000"]