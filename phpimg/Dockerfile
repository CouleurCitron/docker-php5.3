FROM bylexus/apache-php53

RUN a2enmod vhost_alias

RUN service apache2 restart

RUN apt-get update && \
    apt-get install -y \
    php5-curl \
    php5-xdebug \
	php-pear \
	make \
	php-apc
	
RUN pear config-set php_ini /etc/php5/apache2/php.ini
RUN pecl config-set php_ini /etc/php5/apache2/php.ini
	
RUN service apache2 restart
