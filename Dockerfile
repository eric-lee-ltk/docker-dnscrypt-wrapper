FROM debian:wheezy

MAINTAINER Eric Lee "eric.lee.ltk@gmail.com"

COPY libevent-2.0.so.5 libsodium.so.17 /usr/lib/
COPY dnscrypt-wrapper /usr/bin/
COPY run.sh /
RUN chmod +x /run.sh

VOLUME ["/usr/local/share/dnscrypt-wrapper"]

EXPOSE 443

CMD ["/run.sh"]
