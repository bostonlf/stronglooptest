FROM node:6-alpine

# Create app directory
RUN mkdir -p /mystrongloop
WORKDIR /mystrongloop
# Bundle app source
COPY . /mystrongloop
RUN npm install
EXPOSE 4000
CMD [ "npm", "start" ]