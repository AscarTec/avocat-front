# المرحلة الأولى: البناء
FROM node:20-alpine AS build
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build

# المرحلة الثانية: التشغيل (باستخدام خادم خفيف مثل Nginx أو serve)
FROM node:20-alpine
WORKDIR /usr/src/app
# تثبيت أداة بسيطة لتشغيل الملفات الساكنة
RUN npm install -g serve
# نسخ الملفات التي تم بناؤها فقط من المرحلة الأولى
COPY --from=build /usr/src/app/dist ./dist

EXPOSE 8080

# تشغيل الخادم على المنفذ المطلوب
CMD ["serve", "-s", "dist", "-l", "8080"]
