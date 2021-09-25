FROM maven:3.5-jdk-8-alpine 
COPY src /usr/src/app/src
COPY pom.xml /usr/src/app
WORKDIR /usr/src/app
RUN mvn -f /usr/src/app/pom.xml clean package

# FROM openjdk:8
# COPY --from=0 /usr/src/app/target/SpringBootMavenExample.war /usr/app/SpringBootMavenExample.war 
# EXPOSE 8080
# ENTRYPOINT ["java","-jar","/usr/app/SpringBootMavenExample.war"]
