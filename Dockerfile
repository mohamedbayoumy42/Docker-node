FROM node:14
WORKDIR /app
COPY package.json .
ARG NODE_ENV
RUN if ["$NODE_ENV"="PODUCTION"]; \
    then npm install --only=PODUCTION; \
    else npm install; \
    fi
COPY . .
EXPOSE 4000
CMD [ "npm", "run", "start-dev" ]