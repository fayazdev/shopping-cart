FROM openjdk:17.0-jdk
WORKDIR /APP
COPY **/target/shopping-cart-1.0-SNAPSHOT.war /APP/app-service.war
RUN chmod -R 777 /APP
ENTRYPOINT ["java","-war","/APP/app-service.war"]
