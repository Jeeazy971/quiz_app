# Utiliser l'image officielle de Docker Hub pour Flutter
FROM ghcr.io/cirruslabs/flutter:3.16.3

# Définir le répertoire de travail
WORKDIR /app

# Copier les fichiers de configuration du projet dans le conteneur
COPY pubspec.* /app/
RUN flutter pub get

# Copier le reste du code source du projet dans le conteneur
COPY . /app/

# Exécuter les tests ou les scripts de construction, si nécessaire
# RUN flutter test
# RUN flutter build web

# Définir la commande par défaut pour exécuter l'application
CMD ["flutter", "run"]
