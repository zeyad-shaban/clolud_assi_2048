FROM node:18-slim

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .

ENV PORT=10000
EXPOSE $PORT

CMD ["sh", "-c", "npm start -- --port $PORT"]