#!/bin/bash

apt install rclone
printf "q\n" | rclone config
wget -O /root/.config/rclone/rclone.conf "https://raw.githubusercontent.com/sehuadri/new/main/install/rclone.conf"
git clone  https://github.com/casper9/wondershaper.git
cd wondershaper
make install
cd
rm -rf wondershaper
cd /usr/bin
wget -O backup "https://raw.githubusercontent.com/sehuadri/new/main/menu/backup.sh"
wget -O restore "https://raw.githubusercontent.com/sehuadri/new/main/menu/restore.sh"
wget -O xp "https://raw.githubusercontent.com/sehuadri/new/main/install/xp.sh"
chmod +x /usr/bin/backup
chmod +x /usr/bin/restore
chmod +x /usr/bin/xp
cd

# > Pasang Limit

#wget "https://raw.githubusercontent.com/sehuadri/new/main/bin/limit.sh" >/dev/null 2>&1

#chmod +x limit.sh && bash limit.sh >/dev/null 2>&1
    
rm -f /root/set-br.sh
#rm -f /root/limit.sh
