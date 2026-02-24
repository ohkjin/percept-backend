FROM node:18
WORKDIR /app
# Install nodemon globally so the command 'nodemon' always works
RUN npm install -g nodemon
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 8000
CMD ["npm", "run", "dev"]
# Try to run server.js, but if it fails, we can debug
CMD ["nodemon", "server.js"]