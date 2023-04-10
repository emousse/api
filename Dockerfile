# api/Dockerfile

# Utilisez une image Node.js officielle comme base
FROM node:14-alpine

# Créez un répertoire pour l'application
WORKDIR /api

# Copiez les fichiers package.json et package-lock.json
COPY package*.json ./

# Installez les dépendances
RUN npm ci

# Copiez le reste des fichiers de l'application
COPY . .

# Exportez le port sur lequel l'API sera accessible
EXPOSE 4000

# Lancez l'API
CMD ["npm", "start"]
