FROM debian:buster

RUN apt-get update
RUN apt-get install vsftpd -y

COPY ./config.sh /etc/config.sh
RUN chmod +x /etc/config.sh

COPY ./vsftpd.conf  /etc/vsftpd.conf
RUN service vsftpd start

ENTRYPOINT [ "/etc/config.sh" ]