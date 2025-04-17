FROM node:12-alpine

# Installer git
RUN apk add --no-cache git

# Cloner le dépôt
RUN git clone -q https://github.com/najasoft/todo-app.git

# Définir le répertoire de travail sur le dossier de l'application
WORKDIR /todo-app

# Installer les dépendances
RUN yarn install --production

# Lancer l'application
CMD ["node", "/src/index.js"]
