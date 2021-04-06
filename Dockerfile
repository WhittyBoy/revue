FROM node:latest
#node is an environment where you can run javascript

#add steps to run the app
#node.js official image
RUN mkdir -p /app/client/src

WORKDIR /app/client/src 

#package.json 
COPY /client/package.json /app/client/src

RUN npm install -g npm@7.7.6
RUN npm install --force

COPY . .

#port to view our app
EXPOSE 3000

CMD ["npm", "start"]