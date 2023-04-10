FROM ubuntu:latest
RUN apt-get update
RUN apt-get -y install apache2
COPY ./index.html /var/www/html//
ENTRYPOINT ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
CMD ["-D", "FOREGROUND"]
