FROM nginx

RUN apt-get update
RUN apt-get install -y php5-cli php5-curl php5-fpm php5-gd php5-mcrypt php5-mysql

RUN rm /etc/nginx/nginx.conf

ADD /etc/nginx/nginx.conf nginx.conf
