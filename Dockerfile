FROM node:latest

WORKDIR /app

COPY package.json package-lock.json ./
RUN npm install

COPY ../../../../เดสก .

RUN npx prisma generate

RUN npm run build

EXPOSE 3000

CMD ["npm", "start"]
