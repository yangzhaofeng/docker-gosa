FROM debian:stretch-slim

RUN apt update && \
	apt upgrade -y && \
	apt install -y apache2 gosa gosa-help-en gosa-plugin-connectivity gosa-plugin-dhcp gosa-plugin-dns gosa-plugin-fai gosa-plugin-gofax gosa-plugin-gofon gosa-plugin-goto gosa-plugin-kolab gosa-plugin-ldapmanager gosa-plugin-mail gosa-plugin-mit-krb5 gosa-plugin-nagios gosa-plugin-netatalk gosa-plugin-opengroupware gosa-plugin-openxchange gosa-plugin-opsi gosa-plugin-phpgw gosa-plugin-phpscheduleit gosa-plugin-pptp gosa-plugin-pureftpd gosa-plugin-rolemanagement gosa-plugin-rsyslog gosa-plugin-samba gosa-plugin-scalix gosa-plugin-squid gosa-plugin-ssh gosa-plugin-sudo gosa-plugin-systems gosa-plugin-uw-imap gosa-plugin-webdav 

EXPOSE 80 443

CMD ["apachectl", "-D", "FOREGROUND"]
