#!/bin/bash

supervisor_process=`ps -ef | grep supervisord |grep -v grep|wc -l`
if [ $supervisor_process -lt 1 ]
then
   /data/soft/python2.7/bin/supervisord -c /data/supervisor/config/supervisord.conf
else
   /data/soft/python2.7/bin/supervisorctl -c /data/supervisor/config/supervisord.conf update
fi
