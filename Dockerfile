FROM debian:9-slim
LABEL maintainer="Snowind <jinks.tao@gmail.com>" \
      description="vsftpd docker image based on debian 9-slim" \
      usage="sudo docker run -d -p 20:20 -p 21:21 -p 30000-30100:30000-30100 \
            -v /home/vsftpd:/home/vsftpd \
            -e PASV_ADDRESS=127.0.0.1 \
            -e PASV_MIN_PORT=30000 -e PASV_MAX_PORT=30100 \
            -e ANONYMOUS_ENABLE=NO -e LOCAL_ENABLE=YES -e WRITE_ENABLE=YES \
            -e LOCAL_UMASK=022 -e DIRMESSAGE_ENABLE=YES -e USE_LOCALTIME=YES\
            -e connect_from_port_20=YES -e CHROOT_LOCAL_USER=YES \
            --name vsftpd --restart=always --cap-add SYS_ADMIN \
            snowind/vsftpd:latest" \
      version="1.01"

ENV LANG C.UTF-8
ENV LISTEN YES
ENV SECURE_CHROOT_DIR /usr/share/empty

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install vsftpd -y && \
    apt-get clean && \
    update-rc.d -f vsftpd remove && \
    mkdir -p /home/vsftpd

COPY ftpusers /etc/
COPY startup.sh /usr/sbin/

RUN chmod +x /usr/sbin/startup.sh

VOLUME /home/vsftpd

EXPOSE 20 21

CMD ["/usr/sbin/startup.sh"]
