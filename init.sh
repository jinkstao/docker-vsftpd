#!/bin/bash

#vsftpd config file
CONFIG_FILE="/etc/vsftpd.conf"

# check if config file exists
if [ ! -a "$CONFIG_FILE" ]; then
    # write config file
    touch $CONFIG_FILE
    if [ $ALLOW_ANON_SSL ]; then
        echo "allow_anon_ssl=$ALLOW_ANON_SSL" >> $CONFIG_FILE
    fi
    if [ $ANON_MKDIR_WRITE_ENABLE ]; then
        echo "anon_mkdir_write_enable=$ANON_MKDIR_WRITE_ENABLE" >> $CONFIG_FILE
    fi
    if [ $ANON_OTHER_WRITE_ENABLE ]; then
        echo "anon_other_write_enable=$ANON_OTHER_WRITE_ENABLE" >> $CONFIG_FILE
    fi
    if [ $ANON_UPLOAD_ENABLE ]; then
        echo "anon_upload_enable=$ANON_UPLOAD_ENABLE" >> $CONFIG_FILE
    fi
    if [ $ANON_WORLD_READABLE_ONLY ]; then
        echo "anon_world_readable_only=$ANON_WORLD_READABLE_ONLY" >> $CONFIG_FILE
    fi
    if [ $ANONYMOUS_ENABLE ]; then
        echo "anonymous_enable=$ANONYMOUS_ENABLE" >> $CONFIG_FILE
    fi
    if [ $ASCII_DOWNLOAD_ENABLE ]; then
        echo "ascii_download_enable=$ASCII_DOWNLOAD_ENABLE" >> $CONFIG_FILE
    fi
    if [ $ASCII_UPLOAD_ENABLE ]; then
        echo "ascii_upload_enable=$ASCII_UPLOAD_ENABLE" >> $CONFIG_FILE
    fi
    if [ $ASYNC_ABOR_ENABLE ]; then
        echo "async_abor_enable=$ASYNC_ABOR_ENABLE" >> $CONFIG_FILE
    fi
    if [ $BACKGROUND ]; then
        echo "background=$BACKGROUND" >> $CONFIG_FILE
    fi
    if [ $CHECK_SHELL ]; then
        echo "check_shell=$CHECK_SHELL" >> $CONFIG_FILE
    fi
    if [ $CHMOD_ENABLE ]; then
        echo "chmod_enable=$CHMOD_ENABLE" >> $CONFIG_FILE
    fi
    if [ $CHOWN_UPLOADS ]; then
        echo "chown_uploads=$CHOWN_UPLOADS" >> $CONFIG_FILE
    fi
    if [ $CHROOT_LIST_ENABLE ]; then
        echo "chroot_list_enable=$CHROOT_LIST_ENABLE" >> $CONFIG_FILE
    fi
    if [ $CHROOT_LOCAL_USER ]; then
        echo "chroot_local_user=$CHROOT_LOCAL_USER" >> $CONFIG_FILE
    fi
    if [ $CONNECT_FROM_PORT_20 ]; then
        echo "connect_from_port_20=$CONNECT_FROM_PORT_20" >> $CONFIG_FILE
    fi
    if [ $DEBUG_SSL ]; then
        echo "debug_ssl=$DEBUG_SSL" >> $CONFIG_FILE
    fi
    if [ $DELETE_FAILED_UPLOADS ]; then
        echo "delete_failed_uploads=$DELETE_FAILED_UPLOADS" >> $CONFIG_FILE
    fi
    if [ $DENY_EMAIL_ENABLE ]; then
        echo "deny_email_enable=$DENY_EMAIL_ENABLE" >> $CONFIG_FILE
    fi
    if [ $DIRLIST_ENABLE ]; then
        echo "dirlist_enable=$DIRLIST_ENABLE" >> $CONFIG_FILE
    fi
    if [ $DIRMESSAGE_ENABLE ]; then
        echo "dirmessage_enable=$DIRMESSAGE_ENABLE" >> $CONFIG_FILE
    fi
    if [ $DOWNLOAD_ENABLE ]; then
        echo "download_enable=$DOWNLOAD_ENABLE" >> $CONFIG_FILE
    fi
    if [ $DUAL_LOG_ENABLE ]; then
        echo "dual_log_enable=$DUAL_LOG_ENABLE" >> $CONFIG_FILE
    fi
    if [ $FORCE_DOT_FILES ]; then
        echo "force_dot_files=$FORCE_DOT_FILES" >> $CONFIG_FILE
    fi
    if [ $FORCE_ANON_DATA_SSL ]; then
        echo "force_anon_data_ssl=$FORCE_ANON_DATA_SSL" >> $CONFIG_FILE
    fi
    if [ $FORCE_ANON_LOGINS_SSL ]; then
        echo "force_anon_logins_ssl=$FORCE_ANON_LOGINS_SSL" >> $CONFIG_FILE
    fi
    if [ $FORCE_LOCAL_DATA_SSL ]; then
        echo "force_local_data_ssl=$FORCE_LOCAL_DATA_SSL" >> $CONFIG_FILE
    fi
    if [ $FORCE_LOCAL_LOGINS_SSL ]; then
        echo "force_local_logins_ssl=$FORCE_LOCAL_LOGINS_SSL" >> $CONFIG_FILE
    fi
    if [ $GUEST_ENABLE ]; then
        echo "guest_enable=$GUEST_ENABLE" >> $CONFIG_FILE
    fi
    if [ $HIDE_IDS ]; then
        echo "hide_ids=$HIDE_IDS" >> $CONFIG_FILE
    fi
    if [ $IMPLICIT_SSL ]; then
        echo "implicit_ssl=$IMPLICIT_SSL" >> $CONFIG_FILE
    fi
    if [ $LISTEN ]; then
        echo "listen=$LISTEN" >> $CONFIG_FILE
    fi
    if [ $LISTEN_IPV6 ]; then
        echo "listen_ipv6=$LISTEN_IPV6" >> $CONFIG_FILE
    fi
    if [ $LOCAL_ENABLE ]; then
        echo "local_enable=$LOCAL_ENABLE" >> $CONFIG_FILE
    fi
    if [ $LOCK_UPLOAD_FILES ]; then
        echo "lock_upload_files=$LOCK_UPLOAD_FILES" >> $CONFIG_FILE
    fi
    if [ $LOG_FTP_PROTOCOL ]; then
        echo "log_ftp_protocol=$LOG_FTP_PROTOCOL" >> $CONFIG_FILE
    fi
    if [ $LS_RECURSE_ENABLE ]; then
        echo "ls_recurse_enable=$LS_RECURSE_ENABLE" >> $CONFIG_FILE
    fi
    if [ $MDTM_WRITE ]; then
        echo "mdtm_write=$MDTM_WRITE" >> $CONFIG_FILE
    fi
    if [ $NO_ANON_PASSWORD ]; then
        echo "no_anon_password=$NO_ANON_PASSWORD" >> $CONFIG_FILE
    fi
    if [ $NO_LOG_LOCK ]; then
        echo "no_log_lock=$NO_LOG_LOCK" >> $CONFIG_FILE
    fi
    if [ $ONE_PROCESS_MODEL ]; then
        echo "one_process_model=$ONE_PROCESS_MODEL" >> $CONFIG_FILE
    fi
    if [ $PASSWD_CHROOT_ENABLE ]; then
        echo "passwd_chroot_enable=$PASSWD_CHROOT_ENABLE" >> $CONFIG_FILE
    fi
    if [ $PASV_ADDR_RESOLVE ]; then
        echo "pasv_addr_resolve=$PASV_ADDR_RESOLVE" >> $CONFIG_FILE
    fi
    if [ $PASV_ENABLE ]; then
        echo "pasv_enable=$PASV_ENABLE" >> $CONFIG_FILE
    fi
    if [ $PASV_PROMISCUOUS ]; then
        echo "pasv_promiscuous=$PASV_PROMISCUOUS" >> $CONFIG_FILE
    fi
    if [ $PORT_ENABLE ]; then
        echo "port_enable=$PORT_ENABLE" >> $CONFIG_FILE
    fi
    if [ $PORT_PROMISCUOUS ]; then
        echo "port_promiscuous=$PORT_PROMISCUOUS" >> $CONFIG_FILE
    fi
    if [ $REQUIRE_CERT ]; then
        echo "require_cert=$REQUIRE_CERT" >> $CONFIG_FILE
    fi
    if [ $REQUIRE_SSL_REUSE ]; then
        echo "require_ssl_reuse=$REQUIRE_SSL_REUSE" >> $CONFIG_FILE
    fi
    if [ $RUN_AS_LAUNCHING_USER ]; then
        echo "run_as_launching_user=$RUN_AS_LAUNCHING_USER" >> $CONFIG_FILE
    fi
    if [ $SECURE_EMAIL_LIST_ENABLE ]; then
        echo "secure_email_list_enable=$SECURE_EMAIL_LIST_ENABLE" >> $CONFIG_FILE
    fi
    if [ $SESSION_SUPPORT ]; then
        echo "session_support=$SESSION_SUPPORT" >> $CONFIG_FILE
    fi
    if [ $SETPROCTITLE_ENABLE ]; then
        echo "setproctitle_enable=$SETPROCTITLE_ENABLE" >> $CONFIG_FILE
    fi
    if [ $SSL_ENABLE ]; then
        echo "ssl_enable=$SSL_ENABLE" >> $CONFIG_FILE
    fi
    if [ $ssl_request_cert ]; then
        echo "ssl_request_cert=$ssl_request_cert" >> $CONFIG_FILE
    fi
    if [ $SSL_SSLV2 ]; then
        echo "ssl_sslv2=$SSL_SSLV2" >> $CONFIG_FILE
    fi
    if [ $SSL_SSLV3 ]; then
        echo "ssl_sslv3=$SSL_SSLV3" >> $CONFIG_FILE
    fi
    if [ $SSL_TLSV1 ]; then
        echo "ssl_tlsv1=$SSL_TLSV1" >> $CONFIG_FILE
    fi
    if [ $STRICT_SSL_READ_EOF ]; then
        echo "strict_ssl_read_eof=$STRICT_SSL_READ_EOF" >> $CONFIG_FILE
    fi
    if [ $STRICT_SSL_WRITE_SHUTDOWN ]; then
        echo "strict_ssl_write_shutdown=$STRICT_SSL_WRITE_SHUTDOWN" >> $CONFIG_FILE
    fi
    if [ $SYSLOG_ENABLE ]; then
        echo "syslog_enable=$SYSLOG_ENABLE" >> $CONFIG_FILE
    fi
    if [ $TCP_WRAPPERS ]; then
        echo "tcp_wrappers=$TCP_WRAPPERS" >> $CONFIG_FILE
    fi
    if [ $TEXT_USERDB_NAMES ]; then
        echo "text_userdb_names=$TEXT_USERDB_NAMES" >> $CONFIG_FILE
    fi
    if [ $TILDE_USER_ENABLE ]; then
        echo "tilde_user_enable=$TILDE_USER_ENABLE" >> $CONFIG_FILE
    fi
    if [ $USE_LOCALTIME ]; then
        echo "use_localtime=$USE_LOCALTIME" >> $CONFIG_FILE
    fi
    if [ $USE_SENDFILE ]; then
        echo "use_sendfile=$USE_SENDFILE" >> $CONFIG_FILE
    fi
    if [ $USERLIST_DENY ]; then
        echo "userlist_deny=$USERLIST_DENY" >> $CONFIG_FILE
    fi
    if [ $USERLIST_ENABLE ]; then
        echo "userlist_enable=$USERLIST_ENABLE" >> $CONFIG_FILE
    fi
    if [ $VALIDATE_CERT ]; then
        echo "validate_cert=$VALIDATE_CERT" >> $CONFIG_FILE
    fi
    if [ $VIRTUAL_USE_LOCAL_PRIVS ]; then
        echo "virtual_use_local_privs=$VIRTUAL_USE_LOCAL_PRIVS" >> $CONFIG_FILE
    fi
    if [ $WRITE_ENABLE ]; then
        echo "write_enable=$WRITE_ENABLE" >> $CONFIG_FILE
    fi
    if [ $XFERLOG_ENABLE ]; then
        echo "xferlog_enable=$XFERLOG_ENABLE" >> $CONFIG_FILE
    fi
    if [ $XFERLOG_STD_FORMAT ]; then
        echo "xferlog_std_format=$XFERLOG_STD_FORMAT" >> $CONFIG_FILE
    fi
    if [ $ACCEPT_TIMEOUT ]; then
        echo "accept_timeout=$ACCEPT_TIMEOUT" >> $CONFIG_FILE
    fi
    if [ $ANON_MAX_RATE ]; then
        echo "anon_max_rate=$ANON_MAX_RATE" >> $CONFIG_FILE
    fi
    if [ $ANON_UMASK ]; then
        echo "anon_umask=$ANON_UMASK" >> $CONFIG_FILE
    fi
    if [ $CHOWN_UPLOAD_MODE ]; then
        echo "chown_upload_mode=$CHOWN_UPLOAD_MODE" >> $CONFIG_FILE
    fi
    if [ $CONNECT_TIMEOUT ]; then
        echo "connect_timeout=$CONNECT_TIMEOUT" >> $CONFIG_FILE
    fi
    if [ $DATA_CONNECTION_TIMEOUT ]; then
        echo "data_connection_timeout=$DATA_CONNECTION_TIMEOUT" >> $CONFIG_FILE
    fi
    if [ $DELAY_FAILED_LOGIN ]; then
        echo "delay_failed_login=$DELAY_FAILED_LOGIN" >> $CONFIG_FILE
    fi
    if [ $DELAY_SUCCESSFUL_LOGIN ]; then
        echo "delay_successful_login=$DELAY_SUCCESSFUL_LOGIN" >> $CONFIG_FILE
    fi
    if [ $FILE_OPEN_MODE ]; then
        echo "file_open_mode=$FILE_OPEN_MODE" >> $CONFIG_FILE
    fi
    if [ $FTP_DATA_PORT ]; then
        echo "ftp_data_port=$FTP_DATA_PORT" >> $CONFIG_FILE
    fi
    if [ $IDLE_SESSION_TIMEOUT ]; then
        echo "idle_session_timeout=$IDLE_SESSION_TIMEOUT" >> $CONFIG_FILE
    fi
    if [ $LISTEN_PORT ]; then
        echo "listen_port=$LISTEN_PORT" >> $CONFIG_FILE
    fi
    if [ $LOCAL_MAX_RATE ]; then
        echo "local_max_rate=$LOCAL_MAX_RATE" >> $CONFIG_FILE
    fi
    if [ $LOCAL_UMASK ]; then
        echo "local_umask=$LOCAL_UMASK" >> $CONFIG_FILE
    fi
    if [ $MAX_CLIENTS ]; then
        echo "max_clients=$MAX_CLIENTS" >> $CONFIG_FILE
    fi
    if [ $MAX_LOGIN_FAILS ]; then
        echo "max_login_fails=$MAX_LOGIN_FAILS" >> $CONFIG_FILE
    fi
    if [ $MAX_PER_IP ]; then
        echo "max_per_ip=$MAX_PER_IP" >> $CONFIG_FILE
    fi
    if [ $PASV_MAX_PORT ]; then
        echo "pasv_max_port=$PASV_MAX_PORT" >> $CONFIG_FILE
    fi
    if [ $PASV_MIN_PORT ]; then
        echo "pasv_min_port=$PASV_MIN_PORT" >> $CONFIG_FILE
    fi
    if [ $TRANS_CHUNK_SIZE ]; then
        echo "trans_chunk_size=$TRANS_CHUNK_SIZE" >> $CONFIG_FILE
    fi
    if [ $ANON_ROOT ]; then
        echo "anon_root=$ANON_ROOT" >> $CONFIG_FILE
    fi
    if [ $BANNED_EMAIL_FILE ]; then
        echo "banned_email_file=$BANNED_EMAIL_FILE" >> $CONFIG_FILE
    fi
    if [ $BANNER_FILE ]; then
        echo "banner_file=$BANNER_FILE" >> $CONFIG_FILE
    fi
    if [ $CA_CERTS_FILE ]; then
        echo "ca_certs_file=$CA_CERTS_FILE" >> $CONFIG_FILE
    fi
    if [ $CHOWN_USERNAME ]; then
        echo "chown_username=$CHOWN_USERNAME" >> $CONFIG_FILE
    fi
    if [ $CHROOT_LIST_FILE ]; then
        echo "chroot_list_file=$CHROOT_LIST_FILE" >> $CONFIG_FILE
    fi
    if [ $CMDS_ALLOWED ]; then
        echo "cmds_allowed=$CMDS_ALLOWED" >> $CONFIG_FILE
    fi
    if [ $CMDS_DENIED ]; then
        echo "cmds_denied=$CMDS_DENIED" >> $CONFIG_FILE
    fi
    if [ $DENY_FILE ]; then
        echo "deny_file=$DENY_FILE" >> $CONFIG_FILE
    fi
    if [ $DSA_CERT_FILE ]; then
        echo "dsa_cert_file=$DSA_CERT_FILE" >> $CONFIG_FILE
    fi
    if [ $DSA_PRIVATE_KEY_FILE ]; then
        echo "dsa_private_key_file=$DSA_PRIVATE_KEY_FILE" >> $CONFIG_FILE
    fi
    if [ $EMAIL_PASSWORD_FILE ]; then
        echo "email_password_file=$EMAIL_PASSWORD_FILE" >> $CONFIG_FILE
    fi
    if [ $FTP_USERNAME ]; then
        echo "ftp_username=$FTP_USERNAME" >> $CONFIG_FILE
    fi
    if [ $FTPD_BANNER ]; then
        echo "ftpd_banner=$FTPD_BANNER" >> $CONFIG_FILE
    fi
    if [ $GUEST_USERNAME ]; then
        echo "guest_username=$GUEST_USERNAME" >> $CONFIG_FILE
    fi
    if [ $HIDE_FILE ]; then
        echo "hide_file=$HIDE_FILE" >> $CONFIG_FILE
    fi
    if [ $LISTEN_ADDRESS ]; then
        echo "listen_address=$LISTEN_ADDRESS" >> $CONFIG_FILE
    fi
    if [ $LISTEN_ADDRESS6 ]; then
        echo "listen_address6=$LISTEN_ADDRESS6" >> $CONFIG_FILE
    fi
    if [ $LOCAL_ROOT ]; then
        echo "local_root=$LOCAL_ROOT" >> $CONFIG_FILE
    fi
    if [ $MESSAGE_FILE ]; then
        echo "message_file=$MESSAGE_FILE" >> $CONFIG_FILE
    fi
    if [ $NOPRIV_USER ]; then
        echo "nopriv_user=$NOPRIV_USER" >> $CONFIG_FILE
    fi
    if [ $PAM_SERVICE_NAME ]; then
        echo "pam_service_name=$PAM_SERVICE_NAME" >> $CONFIG_FILE
    fi
    if [ $PASV_ADDRESS ]; then
        echo "pasv_address=$PASV_ADDRESS" >> $CONFIG_FILE
    fi
    if [ $RSA_CERT_FILE ]; then
        echo "rsa_cert_file=$RSA_CERT_FILE" >> $CONFIG_FILE
    fi
    if [ $RSA_PRIVATE_KEY_FILE ]; then
        echo "rsa_private_key_file=$RSA_PRIVATE_KEY_FILE" >> $CONFIG_FILE
    fi
    if [ $SECURE_CHROOT_DIR ]; then
        echo "secure_chroot_dir=$SECURE_CHROOT_DIR" >> $CONFIG_FILE
    fi
    if [ $SSL_CIPHERS ]; then
        echo "ssl_ciphers=$SSL_CIPHERS" >> $CONFIG_FILE
    fi
    if [ $USER_CONFIG_DIR ]; then
        echo "user_config_dir=$USER_CONFIG_DIR" >> $CONFIG_FILE
    fi
    if [ $USER_SUB_TOKEN ]; then
        echo "user_sub_token=$USER_SUB_TOKEN" >> $CONFIG_FILE
    fi
    if [ $USERLIST_FILE ]; then
        echo "userlist_file=$USERLIST_FILE" >> $CONFIG_FILE
    fi
    if [ $VSFTPD_LOG_FILE ]; then
        echo "vsftpd_log_file=$VSFTPD_LOG_FILE" >> $CONFIG_FILE
    fi
    if [ $XFERLOG_FILE ]; then
        echo "xferlog_file=$XFERLOG_FILE" >> $CONFIG_FILE
    fi
fi

# create SECURE_CHROOT_DIR dir
if [ ! -d "$SECURE_CHROOT_DIR" ]; then
    mkdir -p $SECURE_CHROOT_DIR
fi

# Execute vsftpd server
/usr/sbin/vsftpd /etc/vsftpd.conf
