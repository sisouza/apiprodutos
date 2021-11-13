FROM node:alpine

RUN mkdir -p /home/node/apiprodutos && chown -R node:node /home/node/apiprodutos 

WORKDIR /home/node/apiprodutos

COPY package.json .
COPY ./init.sh /home/node/apiprodutos

RUN npm install

COPY . .

COPY --chown=node:node . .

USER node

EXPOSE 3001 3001

ENTRYPOINT ["chmod","+x","init.sh"] 

CMD ["npm","run", "dev"]