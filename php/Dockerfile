FROM php:7.2.8-fpm
RUN apt-get update \
    && apt-get install wget -y \
    && apt-get install vim -y \
    && docker-php-source extract \
    && cd / && mkdir software && cd /software && echo "创建software" \
    && wget https://pecl.php.net/get/mongodb-1.6.0.tgz && tar -zxvf mongodb-1.6.0.tgz \
    && wget https://pecl.php.net/get/redis-5.0.2.tgz && tar -zxvf redis-5.0.2.tgz \
    && wget https://pecl.php.net/get/yaf-3.0.9.tgz && tar -zxvf yaf-3.0.9.tgz \
    && wget https://pecl.php.net/get/xdebug-2.7.0.tgz && tar -zxvf xdebug-2.7.0.tgz \
    && cd /usr/src/php/ext && echo "切换到php扩展目录" \
    && mv /software/mongodb-1.6.0 mongodb \
    && mv /software/redis-5.0.2 redis \
    && mv /software/xdebug-2.7.0 xdebug \
    && mv /software/yaf-3.0.9 yaf && echo "扩展移动完成" \
    && docker-php-ext-install mongodb && echo "mogodb扩展安装完成" \
    && docker-php-ext-install redis && echo "redis扩展安装完成" \
    && docker-php-ext-install yaf && echo "yaf扩展安装完成" \
    && docker-php-ext-install pdo_mysql && echo "pdo_mysql扩展安装完成" \
    && docker-php-ext-install mysqli && echo "mysqli扩展安装完成" \
    && docker-php-ext-install exif && echo "exif扩展安装完成" \
    && docker-php-ext-install xdebug && echo "xdebug扩展安装完成" \
    && cd / &&  rm -rf software/ \
    && docker-php-source delete \
    && cd /usr/local/etc/php/conf.d \
    && echo "date.timezone=Asia/Shanghai" >> docker-php.ini \
    && echo "html_errors=Off" >> docker-php.ini \
    && echo "yaf.use_spl_autoload = On" >> docker-php-ext-yaf.ini \
    && echo 'yaf.environ = "develop"' >> docker-php-ext-yaf.ini \
    && echo "yaf.use_namespace = On" >> docker-php-ext-yaf.ini \
    && echo "xdebug.idekey=PHPSTORM" >> docker-php-ext-xdebug.ini \
    && echo "xdebug.collect_params=1" >> docker-php-ext-xdebug.ini \
    && echo "xdebug.collect_return=1" >> docker-php-ext-xdebug.ini \
    && echo "xdebug.auto_trace=Off" >> docker-php-ext-xdebug.ini \
    && echo "xdebug.trace_output_dir=/tmp/php_log/php7.3.4nts.xdebug.trace" >> docker-php-ext-xdebug.ini \
    && echo "xdebug.profiler_enable=Off" >> docker-php-ext-xdebug.ini \
    && echo 'xdebug.profiler_output_dir ="/tmp/xdebug"' >> docker-php-ext-xdebug.ini \
    && echo "xdebug.remote_enable=1" >> docker-php-ext-xdebug.ini \
    && echo "xdebug.remote_host=host.docker.internal" >> docker-php-ext-xdebug.ini \
    && echo "xdebug.remote_port=9001" >> docker-php-ext-xdebug.ini \
    && echo "xdebug.remote_handler=dbgp" >> docker-php-ext-xdebug.ini \
    && rm -rf /var/lib/apt/lists/*