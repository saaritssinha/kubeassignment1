FROM ubuntu
RUN apt-get update
RUN DEBIAN_FRONTEND="noninteractive" apt-get -y install tzdata
RUN apt-get -y install apache2
ADD . /var/www/html
RUN echo  '\
Welcome to pod2\
' > /var/www/html/index.html
ENTRYPOINT apachectl -D FOREGROUND
ENV name Saarit

