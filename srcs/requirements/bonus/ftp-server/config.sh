#!/bin/bash

useradd -m -s /bin/bash $FTP_USER
echo "$FTP_USER:$FTP_PASSWORD" | chpasswd && mkdir -p $FTP_USER_HOME
echo "$FTP_USER" | tee -a /etc/vsftpd.userlist
cd $FTP_USER_HOME
chown $FTP_USER:$FTP_USER_PRIVILEGES ftp
/usr/sbin/vsftpd

exec "$@"