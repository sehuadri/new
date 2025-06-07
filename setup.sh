#!/bin/bash
sysctl -w net.ipv6.conf.all.disable_ipv6=1 >/dev/null 2>&1
sysctl -w net.ipv6.conf.default.disable_ipv6=1 >/dev/null 2>&1
REPO="https://raw.githubusercontent.com/sehuadri/oss/main/"
REPO2="https://raw.githubusercontent.com/sehuadri/oss/main/"
function CEKIP () {
MYIP=$(curl -sS ipv4.icanhazip.com)
IPVPS=$(curl -sS https://raw.githubusercontent.com/awanklod/izin_new/main/ip | grep $MYIP | awk '{print $4}')
if [[ $MYIP == $IPVPS ]]; then
domain
Pasang
else
#  key2
  domain
  Pasang
fi
}
clear
red='\e[1;31m'
green='\e[0;32m'
yell='\e[1;33m'
tyblue='\e[1;36m'
NC='\033[0m'
purple() { echo -e "\\033[35;1m${*}\${NC}"; }
tyblue() { echo -e "\\033[36;1m${*}\${NC}"; }
yellow() { echo -e "\\033[33;1m${*}\${NC}"; }
green() { echo -e "\\033[32;1m${*}\${NC}"; }
red() { echo -e "\\033[31;1m${*}\${NC}"; }
cd /root
if [ "${EUID}" -ne 0 ]; then
echo "You need to run this script as root"
exit 1
fi
if [ "$(systemd-detect-virt)" == "openvz" ]; then
echo "OpenVZ is not supported"
exit 1
fi
localip=$(hostname -I | cut -d\  -f1)
hst=( `hostname` )
dart=$(cat /etc/hosts | grep -w `hostname` | awk '{print $2}')
if [[ "$hst" != "$dart" ]]; then
echo "$localip $(hostname)" >> /etc/hosts
fi
secs_to_human() {
echo "Installation time : $(( ${1} / 3600 )) hours $(( (${1} / 60) % 60 )) minute's $(( ${1} % 60 )) seconds"
}
rm -rf /etc/rmbl
mkdir -p /etc/rmbl
mkdir -p /etc/rmbl/theme
mkdir -p /var/lib/ >/dev/null 2>&1
echo "IP=" >> /var/lib/ipvps.conf
clear
echo -e "${BIBlue}╭══════════════════════════════════════════╮${NC}"
echo -e "${BIBlue}│ ${BGCOLOR}             MASUKKAN NAMA KAMU         ${NC}${BIBlue} │${NC}"
echo -e "${BIBlue}╰══════════════════════════════════════════╯${NC}"
echo " "
until [[ $name =~ ^[a-zA-Z0-9_.-]+$ ]]; do
read -rp "Masukan Nama Kamu Disini tanpa spasi : " -e name
done
rm -rf /etc/profil
echo "$name" > /etc/profil
echo ""
clear
author=$(cat /etc/profil)
echo ""
echo ""

function key2(){
    [[ ! -f /usr/bin/git ]] && apt install git -y &> /dev/null
    clear
    echo -e "${green}┌──────────────────────────────────────────┐${NC}"
    echo -e "${green}│ \033[1;37mIZIN LISENSI              ${green}│${NC}"
    echo -e "${green}└──────────────────────────────────────────┘${NC}"
        MYIP=$(curl -sS ipv4.icanhazip.com)
        if [[ ! -d /etc/github ]]; then
            mkdir -p /etc/github
        fi
        curl -s http://myrid.my.id/token > /etc/github/api
        curl -s http://myrid.my.id/email > /etc/github/email
        curl -s http://myrid.my.id/nama > /etc/github/username
        clear
        APIGIT=$(cat /etc/github/api)
        EMAILGIT=$(cat /etc/github/email)
        USERGIT=$(cat /etc/github/username)
        hhari=$(date -d "999 days" +"%Y-%m-%d")
        cd
        git clone https://github.com/myridwan/izinvps >/dev/null 2>&1
		cd izinvps
		sed -i "/# ADMIN/a ### ${author} ${hhari} ${MYIP} @VIP" /root/izinvps/ipx
        sed -i "/# SSHWS/a ### ${author} ${hhari} ${MYIP} ON SSHWS @VIP" /root/izinvps/ip
        sleep 1
        git config --global user.email "${EMAILGIT}" >/dev/null 2>&1
        git config --global user.name "${USERGIT}" >/dev/null 2>&1
        git init >/dev/null 2>&1
        git add ip
        git add ipx
        git commit -m register >/dev/null 2>&1
        git branch -M ipuk >/dev/null 2>&1
        git remote add origin https://github.com/${USERGIT}/izinvps >/dev/null 2>&1
        git push -f https://${APIGIT}@github.com/${USERGIT}/izinvps >/dev/null 2>&1
        sleep 1
        cd
        rm -rf /root/izinvps
        clear
}
function domain(){
fun_bar() {
    CMD[0]="$1"
    CMD[1]="$2"
    (
        [[ -e $HOME/fim ]] && rm $HOME/fim
        ${CMD[0]} -y >/dev/null 2>&1
        ${CMD[1]} -y >/dev/null 2>&1
        touch $HOME/fim
    ) >/dev/null 2>&1 &
    tput civis
    echo -ne "  \033[0;33mUpdate Domain.. \033[1;37m- \033[0;33m["
    while true; do
        for ((i = 0; i < 18; i++)); do
            echo -ne "\033[0;32m#"
            sleep 0.1s
        done
        [[ -e $HOME/fim ]] && rm $HOME/fim && break
        echo -e "\033[0;33m]"
        sleep 1s
        tput cuu1
        tput dl1
        echo -ne "  \033[0;33mUpdate Domain... \033[1;37m- \033[0;33m["
    done
    echo -e "\033[0;33m]\033[1;37m -\033[1;32m Succes !\033[1;37m"
    tput cnorm
}
res1() {
wget https://raw.githubusercontent.com/sehuadri/new/main/install/rmbl.sh && chmod +x rmbl.sh && ./rmbl.sh
clear
}
res2() {
wget https://raw.githubusercontent.com/sehuadri/new/main/slowdns/rmbl2.sh && chmod +x rmbl2.sh && ./rmbl2.sh
clear
}
res3() {
wget https://raw.githubusercontent.com/RMBL-VPN/v1/main/install/c2.sh && chmod +x c2.sh && ./cr2.sh
clear
}
res4() {
wget https://raw.githubusercontent.com/RMBL-VPN/v1/main/install/r3.sh && chmod +x r3.sh && ./r3.sh
clear
}
clear
cd
echo -e "${BIBlue}╭══════════════════════════════════════════╮${NC}"
echo -e "${BIBlue}│ \033[1;37mPlease select a your Choice to Set Domain${BIBlue}│${NC}"
echo -e "${BIBlue}╰══════════════════════════════════════════╯${NC}"
echo -e "${BIBlue}╭══════════════════════════════════════════╮${NC}"
echo -e "${BIBlue}│  [ 1 ]  \033[1;37mDomain kamu sendiri       ${NC}"
echo -e "${BIBlue}│  [ 2 ]  \033[1;37mDomain yang punya script  ${NC}"
echo -e "${BIBlue}╰══════════════════════════════════════════╯${NC}"
until [[ $domain =~ ^[132]+$ ]]; do 
read -p "   Please select numbers 1  atau 2 : " domain
done
if [[ $domain == "1" ]]; then
clear
echo -e  "${BIBlue}╭══════════════════════════════════════════╮${NC}"
echo -e  "${BIBlue}│              \033[1;37mTERIMA KASIH                ${BIBlue}│${NC}"
echo -e  "${BIBlue}│         \033[1;37mSUDAH MENGGUNAKAN SCRIPT         ${BIBlue}│${NC}"
echo -e  "${BIBlue}│                \033[1;37Admin cloudvpn             ${BIBlue}│${NC}"
echo -e  "${BIBlue}╰══════════════════════════════════════════╯${NC}"
echo " "
until [[ $dnss =~ ^[a-zA-Z0-9_.-]+$ ]]; do 
read -rp "Masukan domain kamu Disini : " -e dnss
done
rm -rf /etc/xray
rm -rf /etc/v2ray
rm -rf /etc/nsdomain
rm -rf /etc/per
mkdir -p /etc/xray
mkdir -p /etc/v2ray
mkdir -p /etc/nsdomain
touch /etc/xray/domain
touch /etc/v2ray/domain
touch /etc/xray/slwdomain
touch /etc/v2ray/scdomain
echo "$dnss" > /root/domain
echo "$dnss" > /root/scdomain
echo "$dnss" > /etc/xray/scdomain
echo "$dnss" > /etc/v2ray/scdomain
echo "$dnss" > /etc/xray/domain
echo "$dnss" > /etc/v2ray/domain
echo "IP=$dnss" > /var/lib/ipvps.conf
echo ""
clear
fi
if [[ $domain == "2" ]]; then
clear
echo -e "${BIBlue}╭══════════════════════════════════════════╮${NC}"
echo -e "${BIBlue}│ \033[1;37mPlease select a your Choice to Set Domain${BIBlue}│${NC}"
echo -e "${BIBlue}╰══════════════════════════════════════════╯${NC}"
echo -e "${BIBlue}╭══════════════════════════════════════════╮${NC}"
echo -e "${BIBlue}│  [ 1 ]  \033[1;37mDomain xxx.tepllovpn.eu.org          ${NC}"                                        
echo -e "${BIBlue}╰══════════════════════════════════════════╯${NC}"
until [[ $domain2 =~ ^[1-5]+$ ]]; do 
read -p "   Please select numbers 1 sampai 1 : " domain2
done
fi
if [[ $domain2 == "1" ]]; then
clear
echo -e  "${BIBlue}╭══════════════════════════════════════════╮${NC}"
echo -e  "${BIBlue}│  \033[1;37mContoh subdomain xxx.tepllovpn.eu.org        ${BIBlue}│${NC}"
echo -e  "${BIBlue}│    \033[1;37mxxx jadi subdomain kamu               ${BIBlue}│${NC}"
echo -e  "${BIBlue}╰══════════════════════════════════════════╯${NC}"
echo " "
until [[ $dn1 =~ ^[a-zA-Z0-9_.-]+$ ]]; do
read -rp "Masukan subdomain kamu Disini tanpa spasi : " -e dn1
done
rm -rf /etc/xray
rm -rf /etc/v2ray
rm -rf /etc/nsdomain
rm -rf /etc/per
mkdir -p /etc/xray
mkdir -p /etc/v2ray
mkdir -p /etc/nsdomain
mkdir -p /etc/per
touch /etc/per/id
touch /etc/per/token
touch /etc/xray/domain
touch /etc/v2ray/domain
touch /etc/xray/slwdomain
touch /etc/v2ray/scdomain
echo "$dn1" > /root/subdomainx
cd
sleep 1
fun_bar 'res1'
clear
rm /root/subdomainx
elif [[ $domain2 == "2" ]]; then
clear
echo -e  "${BIBlue}╭══════════════════════════════════════════╮${NC}"
echo -e  "${BIBlue}│  \033[1;37mContoh subdomain xxx.vpnvip.app         ${BIBlue}│${NC}"
echo -e  "${BIBlue}│    \033[1;37mxxx jadi subdomain kamu               ${BIBlue}│${NC}"
echo -e  "${BIBlue}╰══════════════════════════════════════════╯${NC}"
echo " "
until [[ $dn2 =~ ^[a-zA-Z0-9_.-]+$ ]]; do
read -rp "Masukan subdomain kamu Disini tanpa spasi : " -e dn2
done
rm -rf /etc/xray
rm -rf /etc/v2ray
rm -rf /etc/nsdomain
rm -rf /etc/per
mkdir -p /etc/xray
mkdir -p /etc/v2ray
mkdir -p /etc/nsdomain
mkdir -p /etc/per
touch /etc/per/id
touch /etc/per/token
touch /etc/xray/domain
touch /etc/v2ray/domain
touch /etc/xray/slwdomain
touch /etc/v2ray/scdomain
echo "$dn2" > /root/subdomainx
cd
sleep 1
fun_bar 'res2'
clear
rm /root/subdomainx
elif [[ $domain2 == "3" ]]; then
clear
echo -e  "${BIBlue}╭══════════════════════════════════════════╮${NC}"
echo -e  "${BIBlue}│  \033[1;37mContoh subdomain xxx.slowapp.cfd        ${BIBlue}│${NC}"
echo -e  "${BIBlue}│    \033[1;37mxxx jadi subdomain kamu               ${BIBlue}│${NC}"
echo -e  "${BIBlue}╰══════════════════════════════════════════╯${NC}"
echo " "
until [[ $dn3 =~ ^[a-zA-Z0-9_.-]+$ ]]; do
read -rp "Masukan subdomain kamu Disini tanpa spasi : " -e dn3
done
rm -rf /etc/xray
rm -rf /etc/v2ray
rm -rf /etc/nsdomain
rm -rf /etc/per
mkdir -p /etc/xray
mkdir -p /etc/v2ray
mkdir -p /etc/nsdomain
mkdir -p /etc/per
touch /etc/per/id
touch /etc/per/token
touch /etc/xray/domain
touch /etc/v2ray/domain
touch /etc/xray/slwdomain
touch /etc/v2ray/scdomain
echo "$dn3" > /root/subdomainx
cd
sleep 1
fun_bar 'res3'
clear
rm /root/subdomainx
elif [[ $domain2 == "4" ]]; then
clear
echo -e  "${BIBlue}╭══════════════════════════════════════════╮${NC}"
echo -e  "${BIBlue}│  \033[1;37mContoh subdomain xxx.slowapp.dev        ${BIBlue}│${NC}"
echo -e  "${BIBlue}│    \033[1;37mxxx jadi subdomain kamu               ${BIBlue}│${NC}"
echo -e  "${BIBlue}╰══════════════════════════════════════════╯${NC}"
echo " "
until [[ $dn4 =~ ^[a-zA-Z0-9_.-]+$ ]]; do
read -rp "Masukan subdomain kamu Disini tanpa spasi : " -e dn4
done
rm -rf /etc/xray
rm -rf /etc/v2ray
rm -rf /etc/nsdomain
rm -rf /etc/per
mkdir -p /etc/xray
mkdir -p /etc/v2ray
mkdir -p /etc/nsdomain
mkdir -p /etc/per
touch /etc/per/id
touch /etc/per/token
touch /etc/xray/domain
touch /etc/v2ray/domain
touch /etc/xray/slwdomain
touch /etc/v2ray/scdomain
echo "$dn4" > /root/subdomainx
cd
sleep 1
fun_bar 'res4'
clear
rm /root/subdomainx
elif [[ $domain2 == "5" ]]; then
clear
echo -e  "${BIBlue}╭══════════════════════════════════════════╮${NC}"
echo -e  "${BIBlue}│  \033[1;37mContoh subdomain xxx.vipnvip.tech       ${BIBlue}│${NC}"
echo -e  "${BIBlue}│    \033[1;37mxxx jadi subdomain kamu               ${BIBlue}│${NC}"
echo -e  "${BIBlue}╰══════════════════════════════════════════╯${NC}"
echo " "
until [[ $dn4 =~ ^[a-zA-Z0-9_.-]+$ ]]; do
read -rp "Masukan subdomain kamu Disini tanpa spasi : " -e dn5
done
rm -rf /etc/xray
rm -rf /etc/v2ray
rm -rf /etc/nsdomain
rm -rf /etc/per
mkdir -p /etc/xray
mkdir -p /etc/v2ray
mkdir -p /etc/nsdomain
mkdir -p /etc/per
touch /etc/per/id
touch /etc/per/token
touch /etc/xray/domain
touch /etc/v2ray/domain
touch /etc/xray/slwdomain
touch /etc/v2ray/scdomain
echo "$dn5" > /root/subdomainx
cd
sleep 1
fun_bar 'res5'
fi
if [[ $domain == "3" ]]; then
clear
echo -e  "${BIBlue}╭══════════════════════════════════════════╮${NC}"
echo -e  "${BIBlue}│              \033[1;37mTERIMA KASIH                ${BIBlue}│${NC}"
echo -e  "${BIBlue}│         \033[1;37mSUDAH MENGGUNAKAN SCRIPT         ${BIBlue}│${NC}"
echo -e  "${BIBlue}│                \033[1;37mDARI SAYA                 ${BIBlue}│${NC}"
echo -e  "${BIBlue}╰══════════════════════════════════════════╯${NC}"
echo " "
until [[ $dns1 =~ ^[a-zA-Z0-9_.-]+$ ]]; do 
read -rp "Masukan domain kamu Disini : " -e dns1
done
echo ""
echo "$dns1" > /etc/xray/domain
echo "$dns1" > /etc/v2ray/domain
echo "IP=$dns1" > /var/lib/ipvps.conf
clear
echo ""
echo -e  "${BIBlue}╭══════════════════════════════════════════╮${NC}"
echo -e  "${BIBlue}│              \033[1;37mTERIMA KASIH                ${BIBlue}│${NC}"
echo -e  "${BIBlue}│         \033[1;37mSUDAH MENGGUNAKAN SCRIPT         ${BIBlue}│${NC}"
echo -e  "${BIBlue}│                \033[1;37mDARI SAYA                 ${BIBlue}│${NC}"
echo -e  "${BIBlue}╰══════════════════════════════════════════╯${NC}"
echo " "
until [[ $dns2 =~ ^[a-zA-Z0-9_.-]+$ ]]; do
read -rp "Masukan Domain SlowDNS kamu Disini : " -e dns2
done
echo $dns2 >/etc/xray/dns
fi
}
cat <<EOF>> /etc/rmbl/theme/green
BG : \E[40;1;42m
TEXT : \033[0;32m
EOF
cat <<EOF>> /etc/rmbl/theme/yellow
BG : \E[40;1;43m
TEXT : \033[0;33m
EOF
cat <<EOF>> /etc/rmbl/theme/red
BG : \E[40;1;41m
TEXT : \033[0;31m
EOF
cat <<EOF>> /etc/rmbl/theme/blue
BG : \E[40;1;44m
TEXT : \033[0;34m
EOF
cat <<EOF>> /etc/rmbl/theme/magenta
BG : \E[40;1;45m
TEXT : \033[0;35m
EOF
cat <<EOF>> /etc/rmbl/theme/cyan
BG : \E[40;1;46m
TEXT : \033[0;36m
EOF
cat <<EOF>> /etc/rmbl/theme/lightgray
BG : \E[40;1;47m
TEXT : \033[0;37m
EOF
cat <<EOF>> /etc/rmbl/theme/darkgray
BG : \E[40;1;100m
TEXT : \033[0;90m
EOF
cat <<EOF>> /etc/rmbl/theme/lightred
BG : \E[40;1;101m
TEXT : \033[0;91m
EOF
cat <<EOF>> /etc/rmbl/theme/lightgreen
BG : \E[40;1;102m
TEXT : \033[0;92m
EOF
cat <<EOF>> /etc/rmbl/theme/lightyellow
BG : \E[40;1;103m
TEXT : \033[0;93m
EOF
cat <<EOF>> /etc/rmbl/theme/lightblue
BG : \E[40;1;104m
TEXT : \033[0;94m
EOF
cat <<EOF>> /etc/rmbl/theme/lightmagenta
BG : \E[40;1;105m
TEXT : \033[0;95m
EOF
cat <<EOF>> /etc/rmbl/theme/lightcyan
BG : \E[40;1;106m
TEXT : \033[0;96m
EOF
cat <<EOF>> /etc/rmbl/theme/color.conf
lightcyan
EOF
function Pasang(){
cd
wget ${REPO}tools.sh &> /dev/null
chmod +x tools.sh 
bash tools.sh
clear
start=$(date +%s)
ln -fs /usr/share/zoneinfo/Asia/Jakarta /etc/localtime
apt install git curl -y >/dev/null 2>&1
apt install python -y >/dev/null 2>&1
}
function Installasi(){
fun_bar() {
    CMD[0]="$1"
    CMD[1]="$2"
    
    (
        # Hapus file fim jika ada
        [[ -e $HOME/fim ]] && rm -f $HOME/fim
        
        # Jalankan perintah di background dan sembunyikan output
        ${CMD[0]} -y >/dev/null 2>&1
        ${CMD[1]} -y >/dev/null 2>&1
        
        # Buat file fim untuk menandakan selesai
        touch $HOME/fim
    ) >/dev/null 2>&1 &

    tput civis # Sembunyikan kursor
    echo -ne "  \033[0;33mLagi Menginstal File \033[1;37m- \033[0;33m["
    
    while true; do
        for ((i = 0; i < 18; i++)); do
            echo -ne "\033[0;32m#"
            sleep 0.1
        done
        
        # Jika file fim ada, hapus dan keluar dari loop
        if [[ -e $HOME/fim ]]; then
            rm -f $HOME/fim
            break
        fi
        
        echo -e "\033[0;33m]"
        sleep 1
        tput cuu1 # Kembali ke baris sebelumnya
        tput dl1   # Hapus baris sebelumnya
        echo -ne "  \033[0;33mLagi Menginstal File \033[1;37m- \033[0;33m["
    done
    
    echo -e "\033[0;33m]\033[1;37m -\033[1;32m Succes !\033[1;37m"
    tput cnorm # Tampilkan kursor kembali
}



res2() {
wget ${REPO2}install/ssh-vpn.sh && chmod +x ssh-vpn.sh && ./ssh-vpn.sh
clear
} 

res3() {
wget ${REPO}install/ins-xray.sh && chmod +x ins-xray.sh && ./ins-xray.sh
clear
}

res4() {
wget ${REPO}sshws/insshws.sh && chmod +x insshws.sh && ./insshws.sh
clear
}

res5() {
wget ${REPO}install/set-br.sh && chmod +x set-br.sh && ./set-br.sh
clear
}

res6() {
wget ${REPO}sshws/ohp.sh && chmod +x ohp.sh && ./ohp.sh
clear
}

res7() {
wget ${REPO2}menu/update.sh && chmod +x update.sh && ./update.sh
clear
}

res8() {
wget ${REPO}slowdns/installsl.sh && chmod +x installsl.sh && bash installsl.sh
clear
}

res9() {
wget ${REPO}install/udp-custom.sh && chmod +x udp-custom.sh && bash udp-custom.sh
clear
}
res10() {
wget https://raw.githubusercontent.com/sehuadri/new/main/noobz/noobzvpns.zip
unzip noobzvpns.zip
chmod +x noobzvpns/*
cd noobzvpns
bash install.sh
rm -rf noobzvpns
systemctl restart noobzvpns
clear
}
if [[ $(cat /etc/os-release | grep -w ID | head -n1 | sed 's/=//g' | sed 's/"//g' | sed 's/ID//g') == "ubuntu" ]]; then
echo -e "${green}Setup nginx For OS Is $(cat /etc/os-release | grep -w PRETTY_NAME | head -n1 | sed 's/=//g' | sed 's/"//g' | sed 's/PRETTY_NAME//g')${NC}"
setup_ubuntu
elif [[ $(cat /etc/os-release | grep -w ID | head -n1 | sed 's/=//g' | sed 's/"//g' | sed 's/ID//g') == "debian" ]]; then
echo -e "${green}Setup nginx For OS Is $(cat /etc/os-release | grep -w PRETTY_NAME | head -n1 | sed 's/=//g' | sed 's/"//g' | sed 's/PRETTY_NAME//g')${NC}"
setup_debian
else
echo -e " Your OS Is Not Supported ( ${YELLOW}$(cat /etc/os-release | grep -w PRETTY_NAME | head -n1 | sed 's/=//g' | sed 's/"//g' | sed 's/PRETTY_NAME//g')${FONT} )"
fi
}
function setup_debian(){
echo -e "${green}┌──────────────────────────────────────────┐${NC}"
echo -e "${green}│      PROCESS INSTALLED SSH & OPENVPN     │${NC}"
echo -e "${green}└──────────────────────────────────────────┘${NC}"
fun_bar 'res2'

echo -e "${green}┌──────────────────────────────────────────┐${NC}"
echo -e "${green}│           PROCESS INSTALLED XRAY         │${NC}"
echo -e "${green}└──────────────────────────────────────────┘${NC}"
fun_bar 'res3'

echo -e "${green}┌──────────────────────────────────────────┐${NC}"
echo -e "${green}│       PROCESS INSTALLED WEBSOCKET SSH    │${NC}"
echo -e "${green}└──────────────────────────────────────────┘${NC}"
fun_bar 'res4'

echo -e "${green}┌──────────────────────────────────────────┐${NC}"
echo -e "${green}│       PROCESS INSTALLED BACKUP MENU      │${NC}"
echo -e "${green}└──────────────────────────────────────────┘${NC}"
fun_bar 'res5'

echo -e "${green}┌──────────────────────────────────────────┐${NC}"
echo -e "${green}│           PROCESS INSTALLED OHP          │${NC}"
echo -e "${green}└──────────────────────────────────────────┘${NC}"
fun_bar 'res6'


echo -e "${green}┌──────────────────────────────────────────┐${NC}"
echo -e "${green}│           DOWNLOAD EXTRA MENU            │${NC}"
echo -e "${green}└──────────────────────────────────────────┘${NC}"
fun_bar 'res7'

echo -e "${green}┌──────────────────────────────────────────┐${NC}"
echo -e "${green}│           DOWNLOAD SYSTEM                │${NC}"
echo -e "${green}└──────────────────────────────────────────┘${NC}"
fun_bar 'res8'

echo -e "${green}┌──────────────────────────────────────────┐${NC}"
echo -e "${green}│           DOWNLOAD UDP COSTUM            │${NC}"
echo -e "${green}└──────────────────────────────────────────┘${NC}"
fun_bar 'res9'
}
echo -e "${green}┌──────────────────────────────────────────┐${NC}"
echo -e "${green}│           Downloadss NOOBZvpns           │${NC}"
echo -e "${green}└──────────────────────────────────────────┘${NC}"
fun_bar 'res10'
}
function setup_ubuntu(){
echo -e "${green}┌──────────────────────────────────────────┐${NC}"
echo -e "${green}│      PROCESS INSTALLED SSH & OPENVPN     │${NC}"
echo -e "${green}└──────────────────────────────────────────┘${NC}"
res2

echo -e "${green}┌──────────────────────────────────────────┐${NC}"
echo -e "${green}│           PROCESS INSTALLED XRAY         │${NC}"
echo -e "${green}└──────────────────────────────────────────┘${NC}"
res3

echo -e "${green}┌──────────────────────────────────────────┐${NC}"
echo -e "${green}│       PROCESS INSTALLED WEBSOCKET SSH    │${NC}"
echo -e "${green}└──────────────────────────────────────────┘${NC}"
res4

echo -e "${green}┌──────────────────────────────────────────┐${NC}"
echo -e "${green}│       PROCESS INSTALLED BACKUP MENU      │${NC}"
echo -e "${green}└──────────────────────────────────────────┘${NC}"
res5

echo -e "${green}┌──────────────────────────────────────────┐${NC}"
echo -e "${green}│           PROCESS INSTALLED OHP          │${NC}"
echo -e "${green}└──────────────────────────────────────────┘${NC}"
res6


echo -e "${green}┌──────────────────────────────────────────┐${NC}"
echo -e "${green}│           DOWNLOAD EXTRA MENU            │${NC}"
echo -e "${green}└──────────────────────────────────────────┘${NC}"
res7

echo -e "${green}┌──────────────────────────────────────────┐${NC}"
echo -e "${green}│           DOWNLOAD SYSTEM                │${NC}"
echo -e "${green}└──────────────────────────────────────────┘${NC}"
res8

echo -e "${green}┌──────────────────────────────────────────┐${NC}"
echo -e "${green}│           DOWNLOAD UDP COSTUM            │${NC}"
echo -e "${green}└──────────────────────────────────────────┘${NC}"
res9
}
echo -e "${green}┌──────────────────────────────────────────┐${NC}"
echo -e "${green}│           PRocesss NOOBZvpnss            │${NC}"
echo -e "${green}└──────────────────────────────────────────┘${NC}"
res10
}
function iinfo(){
domain=$(cat /etc/xray/domain)
TIMES="10"
CHATID="1210833546"
KEY="6006599143:AAEgstCAioq35JgX97HaW_G3TAkLKzLZS_w"
URL="https://api.telegram.org/bot$KEY/sendMessage"
ISP=$(cat /etc/xray/isp)
CITY=$(cat /etc/xray/city)
domain=$(cat /etc/xray/domain) 
TIME=$(date +'%Y-%m-%d %H:%M:%S')
RAMMS=$(free -m | awk 'NR==2 {print $2}')
MODEL2=$(cat /etc/os-release | grep -w PRETTY_NAME | head -n1 | sed 's/=//g' | sed 's/"//g' | sed 's/PRETTY_NAME//g')
MYIP=$(curl -sS ipv4.icanhazip.com)
IZIN=$(curl -sS https://raw.githubusercontent.com/awanklod/izin_new/main/ip | grep $MYIP | awk '{print $3}' )
d1=$(date -d "$IZIN" +%s)
d2=$(date -d "$today" +%s)
EXP=$(( (d1 - d2) / 86400 ))

TEXT="
<code>━━━━━━━━━━━━━━━━━━━━</code>
<code>⚠️ AUTOSCRIPT PREMIUM ⚠️</code>
<code>━━━━━━━━━━━━━━━━━━━━</code>
<code>NAME : </code><code>${author}</code>
<code>TIME : </code><code>${TIME} WIB</code>
<code>DOMAIN : </code><code>${domain}</code>
<code>IP : </code><code>${MYIP}</code>
<code>ISP : </code><code>${ISP} $CITY</code>
<code>OS LINUX : </code><code>${MODEL2}</code>
<code>RAM : </code><code>${RAMMS} MB</code>
<code>EXP SCRIPT : </code><code>$EXP Days</code>
<code>━━━━━━━━━━━━━━━━━━━━</code>
<i> Notifikasi Installer Script...</i>
"'&reply_markup={"inline_keyboard":[[{"text":"🔥ᴏʀᴅᴇʀ","url":"https://t.me/kytxz"},{"text":"🔥GRUP","url":"https://t.me/kytxz"}]]}'
curl -s --max-time $TIMES -d "chat_id=$CHATID&disable_web_page_preview=1&text=$TEXT&parse_mode=html" $URL >/dev/null
clear
}
# Tentukan nilai baru yang diinginkan untuk fs.file-max
NEW_FILE_MAX=65535  # Ubah sesuai kebutuhan Anda

# Nilai tambahan untuk konfigurasi netfilter
NF_CONNTRACK_MAX="net.netfilter.nf_conntrack_max=262144"
NF_CONNTRACK_TIMEOUT="net.netfilter.nf_conntrack_tcp_timeout_time_wait=30"

# File yang akan diedit
SYSCTL_CONF="/etc/sysctl.conf"

# Ambil nilai fs.file-max saat ini
CURRENT_FILE_MAX=$(grep "^fs.file-max" "$SYSCTL_CONF" | awk '{print $3}' 2>/dev/null)

# Cek apakah nilai fs.file-max sudah sesuai
if [ "$CURRENT_FILE_MAX" != "$NEW_FILE_MAX" ]; then
    # Cek apakah fs.file-max sudah ada di file
    if grep -q "^fs.file-max" "$SYSCTL_CONF"; then
        # Jika ada, ubah nilainya
        sed -i "s/^fs.file-max.*/fs.file-max = $NEW_FILE_MAX/" "$SYSCTL_CONF" >/dev/null 2>&1
    else
        # Jika tidak ada, tambahkan baris baru
        echo "fs.file-max = $NEW_FILE_MAX" >> "$SYSCTL_CONF" 2>/dev/null
    fi
fi

# Cek apakah net.netfilter.nf_conntrack_max sudah ada
if ! grep -q "^net.netfilter.nf_conntrack_max" "$SYSCTL_CONF"; then
    echo "$NF_CONNTRACK_MAX" >> "$SYSCTL_CONF" 2>/dev/null
fi

# Cek apakah net.netfilter.nf_conntrack_tcp_timeout_time_wait sudah ada
if ! grep -q "^net.netfilter.nf_conntrack_tcp_timeout_time_wait" "$SYSCTL_CONF"; then
    echo "$NF_CONNTRACK_TIMEOUT" >> "$SYSCTL_CONF" 2>/dev/null
fi

# Terapkan perubahan
sysctl -p >/dev/null 2>&1
key2
CEKIP
Installasi
sudo systemctl disable systemd-resolved
sudo systemctl stop systemd-resolved
sudo rm /etc/resolv.config
echo -e "nameserver 8.8.8.8\nnameserver 8.8.4.4" | sudo tee /etc/resolv.conf
sudo chattr +i /etc/resolv.conf
sudo systemctl start systemd-resolved
sudo systemctl enable systemd-resolved
cat> /root/.profile << END
if [ "$BASH" ]; then
if [ -f ~/.bashrc ]; then
. ~/.bashrc
fi
fi
mesg n || true
clear
welcome
END
chmod 644 /root/.profile
if [ -f "/root/log-install.txt" ]; then
rm /root/log-install.txt > /dev/null 2>&1
fi
if [ -f "/etc/afak.conf" ]; then
rm /etc/afak.conf > /dev/null 2>&1
fi
history -c
serverV=$( curl -sS ${REPO2}versi  )
echo $serverV > /opt/.ver
echo "00" > /home/daily_reboot
aureb=$(cat /home/daily_reboot)
b=11
if [ $aureb -gt $b ]
then
gg="PM"
else
gg="AM"
fi
cd
curl -sS ifconfig.me > /etc/myipvps
curl -s ipinfo.io/city?token=75082b4831f909 >> /etc/xray/city
curl -s ipinfo.io/org?token=75082b4831f909  | cut -d " " -f 2-10 >> /etc/xray/isp
rm /root/tools.sh >/dev/null 2>&1
rm /root/setup.sh >/dev/null 2>&1
rm /root/slhost.sh >/dev/null 2>&1
rm /root/ssh-vpn.sh >/dev/null 2>&1
rm /root/ins-xray.sh >/dev/null 2>&1
rm /root/insshws.sh >/dev/null 2>&1
rm /root/set-br.sh >/dev/null 2>&1
rm /root/ohp.sh >/dev/null 2>&1
rm /root/update.sh >/dev/null 2>&1
rm /root/installsl.sh >/dev/null 2>&1
rm /root/udp-custom.sh >/dev/null 2>&1
rm -rf /etc/noobz
mkdir -p /etc/noobz
echo "" > /etc/xray/noob
secs_to_human "$(($(date +%s) - ${start}))" | tee -a log-install.txt
sleep 3
echo  ""
cd
iinfo
echo -e "${green}┌────────────────────────────────────────────┐${NC}"
echo -e "${green}│  INSTALL SCRIPT SELESAI..                  │${NC}"
echo -e "${green}└────────────────────────────────────────────┘${NC}"
echo  ""
sleep 4
echo -e "[ ${yell}WARNING${NC} ] Do you want to reboot now ? (y/n)? "
read answer
if [ "$answer" == "${answer#[Yy]}" ] ;then
exit 0
else
reboot
fi
