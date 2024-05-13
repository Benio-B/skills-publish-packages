# Utiliser une image Node.js en tant qu'image de base
FROM arm64v8/node:18

# Créer un répertoire de travail dans l'image
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Copier le fichier package.json et package-lock.json (si disponible) dans le répertoire de travail
COPY package.json .
COPY index.js .

# Installer les dépendances du projet
RUN npm i

# Copier le reste des fichiers dans le répertoire de travail de l'image
COPY . .

# Exposer le port sur lequel l'application s'exécute
EXPOSE 3000

# Définir la commande par défaut à exécuter lorsque le conteneur démarre
CMD ["node", "index.js"]
