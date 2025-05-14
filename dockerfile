# Utilise une image officielle Node.js comme base
FROM node:18

# Crée un répertoire de travail dans le container
WORKDIR /app

# Copie les fichiers package.json & package-lock.json
COPY package*.json ./

# Installe les dépendances
RUN npm install

# Copie tout le code dans le container
COPY . .

# Expose le port sur lequel ton app écoute
EXPOSE 3000

# Commande pour démarrer ton app
CMD [ "node", "index.js" ]
