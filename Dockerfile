FROM ubuntu:trusty
MAINTAINER Philipp Hellmich <phil@hellmi.de>

# system update
RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get clean -y
# tools
RUN apt-get install nginx -y

RUN echo "\ndaemon off;" >> /etc/nginx/nginx.conf && \
  chown -R www-data:www-data /var/lib/nginx

ADD /server.conf /etc/nginx/sites-available/pixelserv
RUN ln -s /etc/nginx/sites-available/pixelserv /etc/nginx/sites-enabled/pixelserv
RUN rm /etc/nginx/sites-enabled/default

# Clean up APT when done.
RUN apt-get clean -y && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Define working directory.
WORKDIR /etc/nginx

# Define default command.
CMD ["nginx"]

# Expose ports.
EXPOSE 80
