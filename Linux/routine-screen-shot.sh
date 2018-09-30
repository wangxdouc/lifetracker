#!/bin/sh

###############################################################
## 此脚本用于在Linux上定时截取屏幕
##
## 截屏程序为scrot
## 安装scrot用于屏幕截屏
## sudo apt-get install scrot
##
## 定时执行用crontab
## 配置crontab并加入以下行
## crontab -e
## */5 * * * * /home/xiaodong/bin/routine-screen-shot.sh > /dev/null 2>&1
## 重启crontab服务
## sudo service cron restart 
###############################################################

## 按照自己的截屏图片存储路径修改以下命令行，注意DISPLAY=:0对于使用crontab自动执行是必须的
DISPLAY=:0 /usr/bin/scrot -q 1 -e 'mv $f /home/xiaodong/Pictures/routine/'
