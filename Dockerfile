FROM node:12
WORKDIR /app

COPY package.json ./
COPY yarn.lock ./
RUN yarn
COPY . .

ENV PORT=4200
EXPOSE 4200

CMD [ "yarn", "start" ]