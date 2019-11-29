#!/bin/bash

pwd=`pwd`
if (($# == 1)); then
    act=$1
    /usr/local/openresty/nginx/sbin/nginx -p ${pwd} -c ${pwd}/conf/nginx.conf -s $act
else
    /usr/local/openresty/nginx/sbin/nginx -p ${pwd} -c ${pwd}/conf/nginx.conf
fi
