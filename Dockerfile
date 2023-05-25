FROM ubuntu

RUN apt-get update && apt-get install -y nginx vim 
RUN rm /etc/nginx/sites-enabled/default


ADD ficheros/curso1.conf /etc/nginx/conf.d/curso.conf
ADD ficheros/index1.html /var/www/curso/index.html

EXPOSE 80

ENV variable="valor3" variable4="valor4"

CMD ["nginx", "-g", "daemon off;"]
