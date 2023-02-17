FROM node:lts-alpine3.17
EXPOSE 3000
COPY ./my-app /VAR/WWW
WORKDIR /VAR/WWW
VOLUME ["/VAR/WWW/"]
RUN npm install
ENTRYPOINT ["npm", "start"]