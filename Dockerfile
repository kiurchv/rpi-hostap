FROM hypriot/rpi-alpine-scratch

MAINTAINER Sergio R. <sdelrio@users.noreply.github.com>

ENV VERSION 0.23

RUN apk update && apk add bash hostapd iptables dhcp
RUN echo "" > /var/lib/dhcp/dhcpd.leases
ADD wlanstart.sh /bin/wlanstart.sh

ENTRYPOINT [ "/bin/wlanstart.sh" ]

