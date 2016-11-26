FROM ubuntu:12.04

# Install dependencies
RUN apt-get update -y
RUN apt-get -y install mysql-client

# Install app
# RUN rm -rf /var/www/*
ADD scripts /home/scripts

CMD ["/home/scripts/touchdb"]
