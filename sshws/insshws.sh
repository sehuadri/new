REPO="https://raw.githubusercontent.com/sehuadri/new/main/"
wget -O /usr/bin/ws "${REPO}sshws/ws" >/dev/null 2>&1
    wget -O /usr/bin/tun.conf "${REPO}sshws/tun.conf" >/dev/null 2>&1
    wget -O /etc/systemd/system/ws.service "${REPO}sshws/ws.service" >/dev/null 2>&1
    chmod +x /etc/systemd/system/ws.service
    chmod +x /usr/bin/ws
    chmod 644 /usr/bin/tun.conf
systemctl disable ws
systemctl stop ws
systemctl enable ws
systemctl start ws
systemctl restart ws
wget -q -O /usr/local/share/xray/geosite.dat "https://github.com/Loyalsoldier/v2ray-rules-dat/releases/latest/download/geosite.dat" >/dev/null 2>&1
wget -q -O /usr/local/share/xray/geoip.dat "https://github.com/Loyalsoldier/v2ray-rules-dat/releases/latest/download/geoip.dat" >/dev/null 2>&1
wget -O /usr/sbin/ftvpn "${REPO}ws/ftvpn" >/dev/null 2>&1
chmod +x /usr/sbin/ftvpn
