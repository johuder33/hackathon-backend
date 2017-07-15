FROM node:6.11.1
ENV PORT 3000
WORKDIR /usr/src
RUN mkdir app && cd app
WORKDIR app
COPY package.json /
RUN apt-get update && npm install
EXPOSE ${PORT}
CMD ["npm", "start"]