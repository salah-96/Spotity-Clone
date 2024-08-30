# Använd en officiell Node.js-bild som basbild
FROM node:18-alpine

# Ange arbetskatalogen i containern
WORKDIR /app

# Kopiera package.json och package-lock.json till arbetskatalogen
COPY package*.json ./

# Installera projektberoenden
RUN npm install

# Kopiera all projektfiler till containern
COPY . .

# Bygg projektet för produktion
RUN npm run build

# Exponera porten som applikationen körs på
EXPOSE 5173

# Starta servern för att servera den byggda applikationen
CMD ["npm", "run", "dev", "--", "--host"]


# skapa docker images:
# docker build -t spotify-clone .

# starta docker container:
# docker run -p 5173:5173 --name spotify-clone-container spotify-clone
