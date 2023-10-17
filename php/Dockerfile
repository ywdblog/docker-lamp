
FROM php:7.2-fpm-buster

RUN docker-php-source extract 
RUN docker-php-ext-install pdo_mysql mysqli exif 
RUN pecl install redis-5.3.7 && docker-php-ext-enable redis mysqli exif 
RUN pecl install yaf-3.0.9 && docker-php-ext-enable yaf 

RUN docker-php-source delete
RUN cd /usr/local/etc/php/conf.d  && echo "yaf.use_spl_autoload = On" >> docker-php-ext-yaf.ini  && echo 'yaf.environ = "develop"' >> docker-php-ext-yaf.ini && echo "yaf.use_namespace = On" >> docker-php-ext-yaf.ini 
  
COPY  ./install-php-extensions /usr/local/bin/ 
RUN chmod +x /usr/local/bin/install-php-extensions
RUN /usr/local/bin/install-php-extensions   rdkafka 
