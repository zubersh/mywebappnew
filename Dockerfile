# Build Own Apache Docker
FROM centos:latest
MAINTAINER juber.shaikh@synechron.com
RUN yum -y update
RUN yum -y install httpd
EXPOSE 80
ADD code /var/www/html
CMD ["apachectl","-D","FOREGROUND"]
