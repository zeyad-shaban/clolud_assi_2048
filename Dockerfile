FROM ubuntu:24.04

WORKDIR /app
COPY . .

RUN apt-get update && \
    apt-get install -y nginx && \
    rm -rf /var/lib/apt/lists/*

RUN ./install.sh

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]