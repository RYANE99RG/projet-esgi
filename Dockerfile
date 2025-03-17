# Utilisation de l'image Java 17 légère
FROM openjdk:17-jdk-slim

# Définir le répertoire de travail
WORKDIR /app

# Copier le fichier JAR du backend dans le conteneur
COPY target/paymybuddy.jar /app/paymybuddy.jar

# Exposer le port de l'application
EXPOSE 8080

# Exécution du service backend
CMD ["java", "-jar", "/app/paymybuddy.jar"]
