FROM centos:latest
MAINTAINER tarun1kumar1989@gmail.com
RUN yum install -y httpd\
 zip\
 unzip\
ADD https://www.free-css.com/assets/files/free-css-templates/download/page271/mediumish.zip /var/www/html/
WORKDIR /var/www/html/
RUN unzip mediumish.zip
RUN cp -rvf mediumish-html/* .
RUN rm -rf mediumish.zip mediumish-html
CMD ["/usr/sbin/httpd","-D","FOREGROUD"]
EXPOSE 80
