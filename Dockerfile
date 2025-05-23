FROM eclipse-temurin:17-jdk

WORKDIR /app

# Télécharge Lavalink
RUN apt update && apt install -y curl && \
    curl -Lo Lavalink.jar https://cdn.darrennathanael.com/jars/Lavalink.jar

# Copie le fichier de config
COPY application.yml .

EXPOSE 2333

CMD ["java", "-jar", "Lavalink.jar"]
