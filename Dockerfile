FROM node:9.11.1-alpine
RUN npm install -g http-server
#WORKDIR /app
COPY VueDeployTest .
RUN npm install
COPY default /etc/nginx/sites-available
RUN npm run build
EXPOSE 8080
CMD [ "http-server", "dist" ]
