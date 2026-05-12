FROM node:20-alpine

RUN apk add --no-cache curl

WORKDIR /usr/src/app

COPY package*.json ./
RUN npm install

COPY . .

# السماح بالوصول للمنفذ
EXPOSE 8080

RUN chmod +x docker-entrypoint.sh

# التعديل هنا: استخدام ENTRYPOINT
ENTRYPOINT ["./docker-entrypoint.sh"]
