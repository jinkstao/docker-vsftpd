# A Simple Vsftpd Docker Image

## Introduction

This vsftpd docker image is based on Debian 9. It is so small that no default configuration item is provided, even there's no vim editor. So if you want to read and write the configuration file in the container, it will be a good choice to map the ```/etc/vsftpd``` directory to the host.

## Usage

- **Quick Start**

```shell
sudo docker run -d -p 20:20 -p 21:21 -p 30000-30100:30000-30100 \
            -v /home/vsftpd:/home/vsftpd \
            -e PASV_ADDRESS=127.0.0.1 \
            -e PASV_MIN_PORT=30000 -e PASV_MAX_PORT=30100 \
            -e ANONYMOUS_ENABLE=NO -e LOCAL_ENABLE=YES -e WRITE_ENABLE=YES \
            -e LOCAL_UMASK=022 -e DIRMESSAGE_ENABLE=YES -e USE_LOCALTIME=YES\
            -e CONNECT_FROM_PORT_20=YES -e CHROOT_LOCAL_USER=YES \
            --name vsftpd --restart=always --cap-add SYS_ADMIN \
            snowind/vsftpd:latest
```

With the above shell, you can create a vsftpd container that supports both active and passive modes **(local connections only)** with a root directory of ```/home/vsftpd```.

```shell
--cap-add SYS_ADMIN
```

This parameter is used to add the ```mount --bind``` function to the container. This command adds binding links between the directories. This parameter can be removed if you don't need this feature.

- **Environmental Variable**

All relevant environment variables will be written to the ```/etc/vsftpd/vsftpd.conf``` file, which is the configuration file for vsftpd. Detailed parameter configuration refers to the [official documentation of vsftpd](https://security.appspot.com/vsftpd/vsftpd_conf.html).

- **Export Log**

You need to declare the log configuration item in the environment variable parameter of the container startup command and also mount the local directory to the container directory you just specified.

Just like:

```shell
-v /home/vsftpd/storage:/home/vsftpd \
-v /home/vsftpd/log:/var/log/vsftpd
```

and

```shell
-e xferlog_enable=YES \
-e xferlog_std_format=YES \
-e xferlog_file=/var/log/vsftpd/xferlog \
-e dual_log_enable=YES \
-e vsftpd_log_file=/var/log/vsftpd/vsftpd.log
```

- **Startup Script**

The startup script is located at ```/etc/vsftpd/startup.sh``` and the image will be launched through it. If you have a startup command (such as ```mount --bind```) that you need to add, add it to the vsftpd process startup command.

## Update

This project will be continuously updated, so stay tuned!
