FROM ubuntu

# File Author / Maintainer
MAINTAINER ismahan
# Update the repository sources list
RUN apt-get -y update
RUN apt-get -y install net-tools
RUN apt-get -y install curl
RUN apt-get -y install systemctl
# Install and run apache
RUN apt-get install -y apache2 && apt-get clean
#synchronisation des dossier 
VOLUME /home/debian/Formation/docker-formation/dossier1 /var/www/html
EXPOSE 80
CMD systemctl start apache2 && apachectl -D FOREGROUND 
