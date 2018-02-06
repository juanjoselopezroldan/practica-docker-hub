FROM debian
MAINTAINER juan jose lopez roldan "jjlr1994@gmail.com"

ENV DOCUMENTROOT=/var/www/html
ENV SERVER_NAME=www.prueba.es

ADD ["html/", "/tmp/html"]
COPY run.sh /run.sh

RUN apt-get update && apt install -y nginx && apt-get clean && rm -rf /var/lib/apt/lists/* && rm -rf /var/www/html/
RUN chmod +x /run.sh

EXPOSE 80
CMD ["/run.sh"]
