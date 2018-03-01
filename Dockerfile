FROM node:8
ENV ACCEPT_HIGHCHARTS_LICENSE yes

# Create app directory
WORKDIR /app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)

RUN npm install highcharts-export-server -g

# If you are building your code for production
# RUN npm install --only=production

# Bundle app source
EXPOSE 8080

CMD [ "highcharts-export-server","--host 127.0.0.1","--port 8080"]
