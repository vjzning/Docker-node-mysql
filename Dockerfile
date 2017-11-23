FROM  node
MAINTAINER jzning
RUN mkdir -p /var/www/html \
    npm install
COPY . /var/www/html/app
WORKDIR /var/www/html/app
VOLUME /var/www/html
EXPOSE 3000
CMD ["npm", "start"]