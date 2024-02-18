# Utiliser une image JDK 17
FROM amazoncorretto:17-alpine-jdk

ARG JAR_FILE=target/*.jar

# Copier le JAR de l'application dans le conteneur
COPY ${JAR_FILE} svc-configserver.jar

# Commande pour exécuter l'application Spring Boot
ENTRYPOINT ["java", "-jar", "/svc-configserver.jar"]

# Exposer le port 9296
EXPOSE 9296

#docker build -t loicsanou/svc-configserver:0.0.1 .
#docker run -d -p9296:9296 -e EUREKA_SERVER_ADDRESS=http://host.docker.internal:8761/eureka --name svc-configserver <imageId>
#docker logs containerId
#docker push loicsanou/svc-configserver:0.0.1