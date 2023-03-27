构建&运行：

```
$ docker-compose build 

$ docker-compose --env-file  xwj.env up	

$ docker-compose down 
```

查看网络地址：

```
docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' nginx
 
docker exec -it nginx /bin/sh 
docker exec -it php /bin/sh 
```

进入容器：

```
$ docker run -it   --network xwjlamp_xwjn --rm mysql:5.7.31    mysql -hmysql -uroot -p337472

docker run -it --network  xwjlamp_xwjn --rm redis:5.0.9-alpine  redis-cli -h redis 
```

运行PHP脚本：

```
docker exec -it php  php /usr/share/nginx/html/service/crawlerNS/sxd_grade_calc_init.php qa
```
