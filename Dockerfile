FROM nginx

RUN apt-get update
RUN apt-get install -y php5-cli php5-curl php5-fpm php5-gd php5-mcrypt php5-mysql

RUN rm /etc/nginx/nginx.conf /etc/php5/fpm/php-fpm.conf

ADD nginx.conf /etc/nginx/nginx.conf
ADD php-fpm.conf /etc/php5/fpm/php-fpm.conf

ENTRYPOINT ["/usr/sbin/php-fpm", "-F"]
