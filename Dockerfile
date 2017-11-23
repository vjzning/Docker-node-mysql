FROM  node
MAINTAINER jzning
RUN mkdir -p /var/www/html
COPY . /var/www/html/app
WORKDIR /var/www/html/app
RUN npm install
VOLUME /var/www/html
EXPOSE 3000
CMD ["npm", "start"]