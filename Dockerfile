FROM google/debian:wheezy

RUN apt-get update
RUN apt-get install -y nginx php5-fpm php5-mysql




RUN service nginx restart
