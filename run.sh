#!/bin/bash

sudo docker run -d p 20:20 -p 21:21 -p 30000-30100:30000-30100 \
            -v /home/vsftpd:/home/vsftpd \
            -e ANONYMOUS_ENABLE=NO -e LOCAL_ENABLE=YES -e WRITE_ENABLE=YES \
            -e LOCAL_UMASK=022 -e DIRMESSAGE_ENABLE=YES -e USE_LOCALTIME=YES\
            -e connect_from_port_20=YES -e CHROOT_LOCAL_USER=YES \
            -e SECURE_CHROOT_DIR=/var/run/vsftpd/empty \
            --name vsftpd --restart=always --cap-add SYS_ADMIN snowind/vsftpd:latest