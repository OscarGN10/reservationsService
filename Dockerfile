#inicia con la imagen base que contiene Java runtime
# la imagen con el tag '17-jdk-slim' SI existe en docker hub
FROM openjdk:17-jdk-slim as build

# se agrega el jar del microservicio al contenedor
COPY target/reservations-0.0.1-SNAPSHOT.jar reservations-0.0.1-SNAPSHOT.jar
								    
#se ejecuta el microservicio
ENTRYPOINT ["java","-jar","/reservations-0.0.1-SNAPSHOT.jar"]

