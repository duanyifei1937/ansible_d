mkdir /data/elasticsearch-6.1.1/logs/

sudo chown work:work /data/elasticsearch-6.1.1/*

super修改maxfs配置

/data/elasticsearch-6.1.1/bin/elasticsearch-plugin install x-pack

replace x-pack-6.1.1.jar

/data/soft/python2.7/bin/supervisorctl -c /data/supervisor/config/supervisord.conf restart 


sudo ln -s /data/soft/jdk1.8.0_101/bin/java /bin/java