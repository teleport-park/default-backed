FROM node:10
WORKDIR /app
COPY . .

RUN npm install --only=prod

ENV NODE_ENV "prod"

EXPOSE 80
CMD [ "npm", "start" ]
