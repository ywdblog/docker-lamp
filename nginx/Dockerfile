FROM centos:centos7.4.1708

ENV NGINX_VERSION 1.16.1


RUN groupadd -r work && useradd -r -g work work 

RUN yum install autoconf make  automake libtool re2c bison libxml2-devel bzip2-devel libcurl-devel libpng-devel libicu-devel gcc-c++ libmcrypt-devel libwebp-devel libjpeg-devel openssl-devel freetype-devel.x86_64  git wget -y \ 
    && mkdir ~/download && cd ~/download \
    && wget https://sourceforge.net/projects/pcre/files/pcre/8.43/pcre-8.43.tar.gz --no-check-certificate \
    && wget https://nginx.org/download/nginx-1.16.1.tar.gz --no-check-certificate \
    && wget http://zlib.net/zlib-1.2.11.tar.gz  --no-check-certificate \
    && tar xvf zlib-1.2.11.tar.gz && cd zlib-1.2.11 && ./configure && make && make install && make clean\
    && cd ../  && tar xvf pcre-8.43.tar.gz && cd  pcre-8.43 && ./configure && make && make install 

RUN cd ~/download  && tar xvf nginx-1.16.1.tar.gz && cd nginx-1.16.1 &&./configure --prefix=/usr/local/nginx --with-pcre=../pcre-8.43 --with-zlib=../zlib-1.2.11 --with-stream --with-mail=dynamic --with-http_ssl_module --with-openssl-opt=enable-tlsext --with-http_stub_status_module  --with-http_v2_module  --with-http_gzip_static_module   --with-http_sub_module && make && make install && make clean && rm -rf ~/download  

#RUN mkdir /usr/local/nginx/cert && mkdir  /usr/local/nginx/conf.d 

#&& mkdir /home/work/www/apiv2

#COPY  nginx.conf  /usr/local/nginx/conf
#COPY  cert /usr/local/nginx/cert
#COPY  conf.d/* /usr/local/nginx/conf.d
#COPY  ../www/*  /home/work/www/apiv2

ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN echo "good"
ENTRYPOINT ["/usr/local/nginx/sbin/nginx","-g","daemon off;"]
EXPOSE 9001


