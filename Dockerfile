FROM node:14.14.0-alpine3.10

WORKDIR /usr/share/app

COPY *.* /usr/share/app/
COPY src src
COPY node_modules node_modules

#COPY dist dist

EXPOSE 3000

CMD ["npm", "run", "start"]