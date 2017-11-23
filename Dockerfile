FROM  node
MAINTAINER jzning
RUN mkdir -p /var/www/html
COPY . /var/www/html/app
WORKDIR /var/www/html/app
VOLUME /var/www/html
RUN npm install
EXPOSE 3000
CMD ["npm", "start"]