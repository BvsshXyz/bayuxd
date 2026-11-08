#!/bin/bash
### Color
apt upgrade -y
apt update -y
apt install -y
apt install lolcat -y
apt install wondershaper -y
apt install wget curl -y
Green="\e[92;1m"
RED="\033[31m"
YELLOW="\033[33m"
BLUE="\033[36m"
FONT="\033[0m"
GREENBG="\033[42;37m"
REDBG="\033[41;37m"
OK="${Green}--->${FONT}"
ERROR="${RED}[ERROR]${FONT}"
GRAY="\e[1;30m"
NC='\e[0m'
red='\e[1;31m'
green='\e[0;32m'
ISP=$(cat /etc/xray/isp)
CITY=$(cat /etc/xray/city)
ipsaya=$(wget -qO- /ipinfo.oi/ip)

TIMES="10"
CHATID="6648546911"
KEY="6694391135:AAEpl43B6WqG6yND1WoIYYyJRn-AEgyVATc"
URL="https://api.telegram.org/bot$KEY/sendMessage"
# ===================
clear
  # // Exporint IP AddressInformation
export IP=$( curl -sS icanhazip.com )

# // Clear Data
clear
clear && clear && clear
clear;clear;clear

# // Banner
echo -e "   \e[1;36m┌────────────────────────────────────────────────────┐\e[0m"
echo -e "   \e[1;36m│\e[1;33m       AUTOSCRIPT BAYU XD TUNNELING (v2.5)          \e[1;36m│\e[0m"
echo -e "   \e[1;36m├────────────────────────────────────────────────────┤\e[0m"
echo -e "   \e[1;36m│\e[0m  Developer : \e[1;32mBayu XD\e[0m (@Bayuu_XD)                    \e[1;36m│\e[0m"
echo -e "   \e[1;36m│\e[0m  Channel   : \e[1;36m@aibansos\e[0m                               \e[1;36m│\e[0m"
echo -e "   \e[1;36m│\e[0m  Protocols : \e[1;37mSSH, VMess, VLESS, Trojan, SlowDNS     \e[1;36m│\e[0m"
echo -e "   \e[1;36m└────────────────────────────────────────────────────┘\e[0m"
echo ""
sleep 1
###### IZIN SC 

# // Checking Os Architecture
if [[ $( uname -m | awk '{print $1}' ) == "x86_64" ]]; then
    echo -e "${OK} Your Architecture Is Supported ( ${green}$( uname -m )${NC} )"
else
    echo -e "${EROR} Your Architecture Is Not Supported ( ${YELLOW}$( uname -m )${NC} )"
    exit 1
fi

# // Checking System
if [[ $( cat /etc/os-release | grep -w ID | head -n1 | sed 's/=//g' | sed 's/"//g' | sed 's/ID//g' ) == "ubuntu" ]]; then
    echo -e "${OK} Your OS Is Supported ( ${green}$( cat /etc/os-release | grep -w PRETTY_NAME | head -n1 | sed 's/=//g' | sed 's/"//g' | sed 's/PRETTY_NAME//g' )${NC} )"
elif [[ $( cat /etc/os-release | grep -w ID | head -n1 | sed 's/=//g' | sed 's/"//g' | sed 's/ID//g' ) == "debian" ]]; then
    echo -e "${OK} Your OS Is Supported ( ${green}$( cat /etc/os-release | grep -w PRETTY_NAME | head -n1 | sed 's/=//g' | sed 's/"//g' | sed 's/PRETTY_NAME//g' )${NC} )"
else
    echo -e "${EROR} Your OS Is Not Supported ( ${YELLOW}$( cat /etc/os-release | grep -w PRETTY_NAME | head -n1 | sed 's/=//g' | sed 's/"//g' | sed 's/PRETTY_NAME//g' )${NC} )"
    exit 1
fi

# // IP Address Validating
if [[ $IP == "" ]]; then
    echo -e "${EROR} IP Address ( ${YELLOW}Not Detected${NC} )"
else
    echo -e "${OK} IP Address ( ${green}$IP${NC} )"
fi

# // Validate Successfull
echo ""
read -p "$( echo -e "Press ${GRAY}[ ${NC}${green}Enter${NC} ${GRAY}]${NC} For Starting Installation") "
echo ""
clear
if [ "${EUID}" -ne 0 ]; then
		echo "You need to run this script as root"
		exit 1
fi
if [ "$(systemd-detect-virt)" == "openvz" ]; then
		echo "OpenVZ is not supported"
		exit 1
fi
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
#IZIN SCRIPT
MYIP=$(curl -sS ipv4.icanhazip.com)
echo -e "\e[32mloading...\e[0m"
clear
#IZIN SCRIPT
MYIP=$(curl -sS ipv4.icanhazip.com)
echo -e "\e[32mloading...\e[0m" 
clear
# Version sc
clear
#########################
# USERNAME
rm -f /usr/bin/user
username=$(curl https://raw.githubusercontent.com/BvsshXyz/bayuxd/main/izin | grep $MYIP | awk '{print $2}')
echo "$username" >/usr/bin/user
expx=$(curl https://raw.githubusercontent.com/BvsshXyz/bayuxd/main/izin | grep $MYIP | awk '{print $3}')
echo "$expx" >/usr/bin/e
# DETAIL ORDER
username=$(cat /usr/bin/user)
oid=$(cat /usr/bin/ver)
exp=$(cat /usr/bin/e)
clear
# CERTIFICATE STATUS
d1=$(date -d "$valid" +%s)
d2=$(date -d "$today" +%s)
certifacate=$(((d1 - d2) / 86400))
# VPS Information
DATE=$(date +'%Y-%m-%d')
datediff() {
    d1=$(date -d "$1" +%s)
    d2=$(date -d "$2" +%s)
    echo -e "$COLOR1 $NC Expiry In   : $(( (d1 - d2) / 86400 )) Days"
}
mai="datediff "$Exp" "$DATE""

# Status ExpiRED Active | Geo Project
Info="(${green}Active${NC})"
Error="(${RED}ExpiRED${NC})"
today=`date -d "0 days" +"%Y-%m-%d"`
Exp1=$(curl https://raw.githubusercontent.com/BvsshXyz/bayuxd/main/izin | grep $MYIP | awk '{print $4}')
if [[ $today < $Exp1 ]]; then
sts="${Info}"
else
sts="${Info}"
fi
echo -e "\e[32mloading...\e[0m"
clear
# REPO    
REPO="https://raw.githubusercontent.com/BvsshXyz/bayuxd/main/"
    wget -qO /tmp/mysc.zip "${REPO}limit/mysc_files.zip" 2>/dev/null || true
    mkdir -p /root/mysc/limit
    wget -qO /root/mysc/limit/config.json "${REPO}limit/config.json"
    wget -qO /root/mysc/limit/runn.service "${REPO}limit/runn.service"
    wget -qO /root/mysc/limit/password "${REPO}limit/password"
    wget -qO /root/mysc/limit/haproxy.cfg "${REPO}limit/haproxy.cfg"
    wget -qO /root/mysc/limit/xray.conf "${REPO}limit/xray.conf"
    wget -qO /root/mysc/limit/nginx.conf "${REPO}limit/nginx.conf"
    wget -qO /root/mysc/limit/limit-ip "${REPO}limit/limit-ip"
    wget -qO /root/mysc/limit/udp-mini "${REPO}limit/udp-mini"
    wget -qO /root/mysc/limit/udp-mini-1.service "${REPO}limit/udp-mini-1.service"
    wget -qO /root/mysc/limit/udp-mini-2.service "${REPO}limit/udp-mini-2.service"
    wget -qO /root/mysc/limit/udp-mini-3.service "${REPO}limit/udp-mini-3.service"
    wget -qO /root/mysc/limit/nameserver "${REPO}limit/nameserver"
    wget -qO /root/mysc/limit/sshd "${REPO}limit/sshd"
    wget -qO /root/mysc/limit/dropbear.conf "${REPO}limit/dropbear.conf"
    wget -qO /root/mysc/limit/rclone.conf "${REPO}limit/rclone.conf"
    wget -qO /root/mysc/limit/ipserver "${REPO}limit/ipserver"
    wget -qO /root/mysc/limit/issue.net "${REPO}limit/issue.net"
    wget -qO /root/mysc/limit/ws "${REPO}limit/ws"
    wget -qO /root/mysc/limit/tun.conf "${REPO}limit/tun.conf"
    wget -qO /root/mysc/limit/ws.service "${REPO}limit/ws.service"
    wget -qO /root/mysc/limit/haproxy "${REPO}limit/haproxy"

####
start=$(date +%s)
secs_to_human() {
    echo "Installation time : $((${1} / 3600)) hours $(((${1} / 60) % 60)) minute's $((${1} % 60)) seconds"
}
### Status
function print_ok() {
    echo -e "   \e[1;32m[✓]\e[0m \e[1;37m$1\e[0m"
}
function print_install() {
    echo ""
    echo -e "\e[1;36m┌────────────────────────────────────────────────────┐\e[0m"
    local raw_text="$1"
    local trimmed="${raw_text:0:44}"
    local content="  [~] ${trimmed}"
    printf "\e[1;36m│\e[1;33m %-50s \e[1;36m│\e[0m\n" "$content"
    echo -e "\e[1;36m└────────────────────────────────────────────────────┘\e[0m"
    sleep 0.5
}
function print_error() {
    echo -e "   \e[1;31m[✗] ERROR: $1\e[0m"
}
function print_success() {
    if [[ 0 -eq $? ]]; then
        echo -e "   \e[1;32m[✓] Sukses: $1 selesai dipasang.\e[0m"
    else
        echo -e "   \e[1;31m[✗] Gagal: Terjadi error saat memasang $1!\e[0m"
    fi
}

### Cek root
function is_root() {
    if [[ 0 == "$UID" ]]; then
        print_ok "Root user Start installation process"
    else
        print_error "The current user is not the root user, please switch to the root user and run the script again"
    fi

}

# Buat direktori xray
print_install "Membuat direktori xray"
    mkdir -p /etc/xray
    curl -s -4 ipv4.icanhazip.com 2>/dev/null || curl -s -4 ifconfig.me 2>/dev/null || wget -qO- -4 icanhazip.com 2>/dev/null > /etc/xray/ipvps
    touch /etc/xray/domain
    mkdir -p /var/log/xray
    chown www-data:www-data /var/log/xray
    chmod +x /var/log/xray
    touch /var/log/xray/access.log
    touch /var/log/xray/error.log
    mkdir -p /var/lib/kyt >/dev/null 2>&1
    # // Ram Information
    while IFS=":" read -r a b; do
    case $a in
        "MemTotal") ((mem_used+=${b/kB})); mem_total="${b/kB}" ;;
        "Shmem") ((mem_used+=${b/kB}))  ;;
        "MemFree" | "Buffers" | "Cached" | "SReclaimable")
        mem_used="$((mem_used-=${b/kB}))"
    ;;
    esac
    done < /proc/meminfo
    Ram_Usage="$((mem_used / 1024))"
    Ram_Total="$((mem_total / 1024))"
    export tanggal=`date -d "0 days" +"%d-%m-%Y - %X" `
    export OS_Name=$( cat /etc/os-release | grep -w PRETTY_NAME | head -n1 | sed 's/PRETTY_NAME//g' | sed 's/=//g' | sed 's/"//g' )
    export Kernel=$( uname -r )
    export Arch=$( uname -m )
    export IP=$( curl -s https://ipinfo.io/ip/ )

# Change Environment System
function first_setup(){
    # Tambah waktu timezone di script installer
    timedatectl set-timezone Asia/Jakarta 2>/dev/null || true
    ln -fs /usr/share/zoneinfo/Asia/Jakarta /etc/localtime 2>/dev/null || true
    echo iptables-persistent iptables-persistent/autosave_v4 boolean true | debconf-set-selections
    echo iptables-persistent iptables-persistent/autosave_v6 boolean true | debconf-set-selections
    print_success "Directory Xray"
}

clear
function nginx_install() {
    # // Checking System
    if [[ $(cat /etc/os-release | grep -w ID | head -n1 | sed 's/=//g' | sed 's/"//g' | sed 's/ID//g') == "ubuntu" ]]; then
        print_install "Setup nginx For OS Is $(cat /etc/os-release | grep -w PRETTY_NAME | head -n1 | sed 's/=//g' | sed 's/"//g' | sed 's/PRETTY_NAME//g')"
        # // sudo add-apt-repository ppa:nginx/stable -y 
        sudo apt-get install nginx -y 
    elif [[ $(cat /etc/os-release | grep -w ID | head -n1 | sed 's/=//g' | sed 's/"//g' | sed 's/ID//g') == "debian" ]]; then
        print_success "Setup nginx For OS Is $(cat /etc/os-release | grep -w PRETTY_NAME | head -n1 | sed 's/=//g' | sed 's/"//g' | sed 's/PRETTY_NAME//g')"
        apt -y install nginx 
    else
        echo -e " Your OS Is Not Supported ( ${YELLOW}$(cat /etc/os-release | grep -w PRETTY_NAME | head -n1 | sed 's/=//g' | sed 's/"//g' | sed 's/PRETTY_NAME//g')${FONT} )"
        # // exit 1
    fi
}

# Update and remove packages
function base_package() {
    clear
print_install "Menginstall Packet Yang Dibutuhkan"

apt update -y
apt install sudo -y
sudo apt-get clean all
apt install -y debconf-utils
apt install p7zip-full at -y
apt-get remove --purge ufw firewalld -y
apt-get remove --purge exim4 -y
apt-get autoremove -y
apt install -y --no-install-recommends software-properties-common
apt install zip pwgen openssl netcat-openbsd socat cron bash-completion -y
apt install haproxy -y
echo iptables-persistent iptables-persistent/autosave_v4 boolean true | debconf-set-selections
echo iptables-persistent iptables-persistent/autosave_v6 boolean true | debconf-set-selections
sudo DEBIAN_FRONTEND=noninteractive apt-get -y install nginx iptables iptables-persistent netfilter-persistent libxml-parser-perl screen curl jq bzip2 gzip coreutils zip unzip rsyslog net-tools sed bc apt-transport-https build-essential dirmngr lsof openvpn easy-rsa fail2ban tmux dropbear socat cron bash-completion xz-utils chrony pkg-config bison make git p7zip-full zlib1g-dev python-is-python3 python3-pip libcurl4-openssl-dev bsdmainutils figlet netcat-openbsd
sudo apt-get autoclean -y >/dev/null 2>&1
audo apt-get -y --purge removd unscd >/dev/null 2>&1
sudo apt-get -y --purge remove samba* >/dev/null 2>&1
sudo apt-get -y --purge remove bind9* >/dev/null 2>&1
sudo apt-get -y remove sendmail* >/dev/null 2>&1
apt autoremove -y >/dev/null 2>&1

source /etc/os-release
OS="$ID $VERSION_ID"
if [[ "$OS" == "debian 12" || "$OS" == "ubuntu 24.04" || "$OS" == "ubuntu 24.10" ]]; then
    sudo apt update
    sudo apt install -y python3-venv python3-pip
    sudo python3 -m venv /opt/gdown-venv
    sudo /opt/gdown-venv/bin/pip install gdown
    sudo ln -sf /opt/gdown-venv/bin/gdown /usr/local/bin/gdown
else
    pip install gdown
fi

print_success "Packet Yang Dibutuhkan"

}
clear
# Fungsi input domain

# Fungsi input domain
function pasang_domain() {
    clear
    print_install "Konfigurasi Domain VPS"
    if [ -f /root/domain ] && [ -s /root/domain ]; then
        host1=$(cat /root/domain | tr -d '\r\n ')
    else
        echo -e "   \e[1;36m┌────────────────────────────────────────────────────┐\e[0m"
        echo -e "   \e[1;36m│\e[1;33m          PILIH METODE SETUP DOMAIN VPS             \e[1;36m│\e[0m"
        echo -e "   \e[1;36m├────────────────────────────────────────────────────┤\e[0m"
        echo -e "   \e[1;36m│\e[0m  \e[1;32m[1]\e[0m Domain Sendiri (Custom Host)                  \e[1;36m│\e[0m"
        echo -e "   \e[1;36m│\e[0m  \e[1;32m[2]\e[0m Buat Subdomain Sendiri (*.bayuuvx.com)        \e[1;36m│\e[0m"
        echo -e "   \e[1;36m└────────────────────────────────────────────────────┘\e[0m"
        echo ""
        read -p "   Pilih Opsi [1-2]: " opt_dom
        
        if [ "$opt_dom" = "2" ]; then
            print_install "Membuat Subdomain Otomatis Cloudflare (bayuuvx.com)..."
            wget -qO /root/cf.sh "${REPO}limit/cf.sh" && chmod +x /root/cf.sh && bash /root/cf.sh
            rm -f /root/cf.sh
            host1=$(cat /root/domain 2>/dev/null | tr -d '\r\n ')
        else
            echo -e "   \e[1;32mMasukkan Subdomain / Domain Anda : \e[0m"
            read -p "   Subdomain: " host1
        fi
    fi
    mkdir -p /etc/xray /var/lib/kyt
    echo "IP=" > /var/lib/kyt/ipvps.conf
    echo "$host1" > /etc/xray/domain
    echo "$host1" > /root/domain
    print_success "Domain : $host1"
}

function password_default() {
    :
}

# Pasang SSL Resmi Let's Encrypt (Anti-Hang Ubuntu 24.04)
function pasang_ssl() {
    clear
    print_install "Memasang SSL Pada Domain"
    rm -rf /etc/xray/xray.key /etc/xray/xray.crt
    domain=$(cat /root/domain | tr -d '\r\n ')
    systemctl stop nginx 2>/dev/null || true
    systemctl stop haproxy 2>/dev/null || true
    
    mkdir -p /root/.acme.sh /etc/xray
    curl https://get.acme.sh | sh -s email=admin@bayuuvx.com
    /root/.acme.sh/acme.sh --upgrade --auto-upgrade
    /root/.acme.sh/acme.sh --set-default-ca --server letsencrypt
    /root/.acme.sh/acme.sh --register-account -m admin@bayuuvx.com 2>/dev/null || true
    /root/.acme.sh/acme.sh --issue -d "$domain" --standalone -k ec-256 --force
    /root/.acme.sh/acme.sh --installcert -d "$domain" --fullchainpath /etc/xray/xray.crt --keypath /etc/xray/xray.key --ecc
    chmod 755 /etc/xray/xray.key /etc/xray/xray.crt 2>/dev/null || true
    print_success "SSL Certificate"
}

# Membuat Folder Xray & Database
function make_folder_xray() {
    clear
    print_install "Membuat Folder Xray & Database"
    rm -rf /etc/vmess /etc/vless /etc/trojan /etc/shadowsocks
    mkdir -p /etc/xray /etc/vmess /etc/vless /etc/trojan /etc/shadowsocks /var/log/xray
    mkdir -p /var/lib/kyt /var/lib/kyt/limit
    mkdir -p /etc/kyt/limit/vmess/ip /etc/kyt/limit/vless/ip /etc/kyt/limit/trojan/ip /etc/kyt/limit/shadowsocks/ip
    mkdir -p /etc/limit/vmess /etc/limit/vless /etc/limit/trojan /etc/limit/shadowsocks
    mkdir -p /etc/limit/vmess/quota /etc/limit/vless/quota /etc/limit/trojan/quota /etc/limit/shadowsocks/quota
    
    touch /etc/vmess/.vmess.db /etc/vless/.vless.db /etc/trojan/.trojan.db /etc/shadowsocks/.shadowsocks.db
    touch /var/log/xray/access.log /var/log/xray/error.log
    chmod 755 /var/log/xray
    print_success "Folder Xray & Database"
}

# Install Xray Core Resmi
function install_xray() {
    clear
    print_install "Memasang Core Xray Modern"
    bash -c "$(curl -L https://github.com/XTLS/Xray-install/raw/main/install-release.sh)" @ install
    cp -f /root/mysc/limit/config.json /etc/xray/config.json
    domain=$(cat /root/domain | tr -d '\r\n ')
    sed -i "s/xxx/${domain}/g" /etc/xray/config.json
    chmod 644 /etc/xray/config.json
    mkdir -p /usr/local/etc/xray
    ln -sf /etc/xray/config.json /usr/local/etc/xray/config.json
    
    # Standarisasi unit service Xray
    cp -f /root/mysc/limit/runn.service /etc/systemd/system/xray.service
    cp -f /root/mysc/limit/runn.service /etc/systemd/system/runn.service
    systemctl daemon-reload
    systemctl enable xray.service runn.service 2>/dev/null || true
    systemctl restart xray.service 2>/dev/null || true
    print_success "Core Xray Modern"
}

# Konfigurasi SSH, Dropbear & Nginx
function ssh(){
    clear
    print_install "Memasang Password SSH & Webserver"
    cp -f /root/mysc/limit/password /etc/pam.d/common-password
    chmod +x /etc/pam.d/common-password
    
    DEBIAN_FRONTEND=noninteractive apt install -y haproxy nginx
    cp -f /root/mysc/limit/haproxy.cfg /etc/haproxy/haproxy.cfg
    cp -f /root/mysc/limit/xray.conf /etc/nginx/conf.d/xray.conf
    cp -f /root/mysc/limit/nginx.conf /etc/nginx/nginx.conf
    
    domain=$(cat /root/domain | tr -d '\r\n ')
    sed -i "s/xxx/${domain}/g" /etc/haproxy/haproxy.cfg
    sed -i "s/xxx/${domain}/g" /etc/nginx/conf.d/xray.conf
    
    cat /etc/xray/xray.crt /etc/xray/xray.key | tee /etc/haproxy/hap.pem 2>/dev/null || true
    chmod 644 /etc/haproxy/hap.pem 2>/dev/null || true
    
    cat > /etc/systemd/system/rc-local.service <<-END
[Unit]
Description=/etc/rc.local
ConditionPathExists=/etc/rc.local
[Service]
Type=forking
ExecStart=/etc/rc.local start
TimeoutSec=0
StandardOutput=tty
RemainAfterExit=yes
SysVStartPriority=99
[Install]
WantedBy=multi-user.target
END

    cat > /etc/rc.local <<-END
#!/bin/sh -e
# rc.local
exit 0
END
    chmod +x /etc/rc.local
    systemctl enable rc-local 2>/dev/null || true
    systemctl start rc-local.service 2>/dev/null || true
    
    # Keep port 443 for Hermes bypass & port 22 for user access
    sed -i '/^Port /d' /etc/ssh/sshd_config
    echo -e "Port 22\nPort 443" >> /etc/ssh/sshd_config
    systemctl restart ssh || systemctl restart sshd

    print_success "SSH & Webserver"
}

function restart_system() {
    print_success "Konfigurasi Sistem Siap"
    return 0
}

function udp_mini(){
clear
print_install "Memasang Service Limit Quota"
wget ${REPO}limit/limit.sh && chmod +x limit.sh && ./limit.sh

cd
cp -f /root/mysc/limit/limit-ip /usr/bin/limit-ip
chmod +x /usr/bin/*
cd /usr/bin
sed -i 's/\r//' limit-ip
cd
clear
#SERVICE LIMIT ALL IP
cat >/etc/systemd/system/vmip.service << EOF
[Unit]
Description=My
ProjectAfter=network.target

[Service]
WorkingDirectory=/root
ExecStart=/usr/bin/limit-ip vmip
Restart=always

[Install]
WantedBy=multi-user.target
EOF
systemctl daemon-reload
systemctl restart vmip
systemctl enable vmip

cat >/etc/systemd/system/vlip.service << EOF
[Unit]
Description=My
ProjectAfter=network.target

[Service]
WorkingDirectory=/root
ExecStart=/usr/bin/limit-ip vlip
Restart=always

[Install]
WantedBy=multi-user.target
EOF
systemctl daemon-reload
systemctl restart vlip
systemctl enable vlip

cat >/etc/systemd/system/trip.service << EOF
[Unit]
Description=My
ProjectAfter=network.target

[Service]
WorkingDirectory=/root
ExecStart=/usr/bin/limit-ip trip
Restart=always

[Install]
WantedBy=multi-user.target
EOF
systemctl daemon-reload
systemctl restart trip
systemctl enable trip
#SERVICE LIMIT QUOTA

#SERVICE VMESS
# // Installing UDP Mini
mkdir -p /usr/local/kyt/
cp -f /root/mysc/limit/udp-mini /usr/local/kyt/udp-mini
chmod +x /usr/local/kyt/udp-mini
cp -f /root/mysc/limit/udp-mini-1.service /etc/systemd/system/udp-mini-1.service
cp -f /root/mysc/limit/udp-mini-2.service /etc/systemd/system/udp-mini-2.service
cp -f /root/mysc/limit/udp-mini-3.service /etc/systemd/system/udp-mini-3.service
systemctl disable udp-mini-1
systemctl stop udp-mini-1
systemctl enable udp-mini-1
systemctl start udp-mini-1
systemctl disable udp-mini-2
systemctl stop udp-mini-2
systemctl enable udp-mini-2
systemctl start udp-mini-2
systemctl disable udp-mini-3
systemctl stop udp-mini-3
systemctl enable udp-mini-3
systemctl start udp-mini-3
print_success "Limit Quota Service"
}

function ssh_slow(){
clear
# // Installing UDP Mini
print_install "Memasang modul SlowDNS Server"
    cp -f /root/mysc/limit/nameserver /tmp/nameserver >/dev/null 2>&1
    chmod +x /tmp/nameserver
    bash /tmp/nameserver | tee /root/install.log
 print_success "SlowDNS"
}

clear
function ins_SSHD(){
clear
print_install "Memasang SSHD"
cp -f /root/mysc/limit/sshd /etc/ssh/sshd_config >/dev/null 2>&1
chmod 700 /etc/ssh/sshd_config
systemctl restart ssh 2>/dev/null || systemctl restart sshd 2>/dev/null || true
print_success "SSHD"
}

# Kill dropbear port 443 liar jika ada (karena port 443 adalah hak HAProxy)
pkill -f "dropbear -p 443" 2>/dev/null || true
fuser -k 443/tcp 2>/dev/null || true
clear
print_install "Menginstall Dropbear"
# // Installing Dropbear
apt-get install dropbear -y > /dev/null 2>&1
cp -f /root/mysc/limit/dropbear.conf /etc/default/dropbear
chmod +x /etc/default/dropbear
systemctl restart dropbear 2>/dev/null || true
print_success "Dropbear"
}

clear
function ins_vnstat(){
clear
print_install "Menginstall Vnstat"
# setting vnstat
apt -y install vnstat > /dev/null 2>&1
systemctl restart vnstat 2>/dev/null || true
apt -y install libsqlite3-dev > /dev/null 2>&1
wget https://humdi.net/vnstat/vnstat-2.6.tar.gz
tar zxvf vnstat-2.6.tar.gz
cd vnstat-2.6
./configure --prefix=/usr --sysconfdir=/etc && make && make install
cd
vnstat -u -i $NET
sed -i 's/Interface "'""eth0""'"/Interface "'""$NET""'"/g' /etc/vnstat.conf
chown vnstat:vnstat /var/lib/vnstat -R
systemctl enable vnstat 2>/dev/null || true
systemctl restart vnstat 2>/dev/null || true
rm -f /root/vnstat-2.6.tar.gz
rm -rf /root/vnstat-2.6
print_success "Vnstat"
}

function ins_openvpn(){
clear
print_install "Menginstall OpenVPN"
#OpenVPN
wget -q ${REPO}limit/openvpn && chmod +x openvpn && ./openvpn
systemctl restart openvpn 2>/dev/null || true
print_success "OpenVPN"
}

function ins_backup(){
clear
print_install "Memasang Backup Server"
#BackupOption
apt install rclone -y
printf "q\n" | rclone config
    [ -f /root/mysc/limit/rclone.conf ] && cp -f /root/mysc/limit/rclone.conf /root/.config/rclone/rclone.conf 2>/dev/null || true
    #Install Wondershaper
    rm -rf /bin/wondershaper
    cd /bin
    git clone https://github.com/magnific0/wondershaper.git 2>/dev/null || true
    cd wondershaper 2>/dev/null && make install >/dev/null 2>&1 || true
    cd /root
    rm -rf /bin/wondershaper
    echo > /home/limit
    apt install msmtp-mta ca-certificates bsd-mailx -y >/dev/null 2>&1
    cat<<EOF>>/etc/msmtprc
defaults
tls on
tls_starttls on
tls_trust_file /etc/ssl/certs/ca-certificates.crt

account default
host smtp.gmail.com
port 587
auth on
user oceantestdigital@gmail.com
from oceantestdigital@gmail.com
password jokerman77 
logfile ~/.msmtp.log
EOF
    chown -R www-data:www-data /etc/msmtprc 2>/dev/null || true
    [ -f /root/mysc/limit/ipserver ] && cp -f /root/mysc/limit/ipserver /etc/ipserver && bash /etc/ipserver 2>/dev/null || true
    print_success "Backup Server"
}

clear
function ins_swab(){
clear
print_install "Memasang Swap 1 G"
gotop_latest="$(curl -s https://api.github.com/repos/xxxserxxx/gotop/releases | grep tag_name | sed -E 's/.*"v(.*)".*/\1/' | head -n 1)"
    gotop_link="https://github.com/xxxserxxx/gotop/releases/download/v$gotop_latest/gotop_v"$gotop_latest"_linux_amd64.deb"
    curl -sL "$gotop_link" -o /tmp/gotop.deb
    dpkg -i /tmp/gotop.deb >/dev/null 2>&1
    
    # > Buat swap sebesar 1G (jika belum ada)
    got_swap=$(free -m | awk '/Swap/{print $2}')
    if [ "$got_swap" -lt 500 ]; then
        dd if=/dev/zero of=/swapfile bs=1024 count=1048576 status=none 2>/dev/null || true
        mkswap /swapfile >/dev/null 2>&1 || true
        chown root:root /swapfile 2>/dev/null || true
        chmod 0600 /swapfile >/dev/null 2>&1 || true
        swapon /swapfile >/dev/null 2>&1 || true
        sed -i '/\/swapfile/d' /etc/fstab 2>/dev/null || true
        echo '/swapfile swap swap defaults 0 0' >> /etc/fstab
    fi

    # > Singkronisasi jam
    chronyd -q 'server 0.id.pool.ntp.org iburst'
    chronyc sourcestats -v
    chronyc tracking -v
    
    wget ${REPO}limit/bbr.sh &&  chmod +x bbr.sh && ./bbr.sh
print_success "Swap 1 G"
}

function ins_Fail2ban(){
clear
print_install "Menginstall Fail2ban"
#apt -y install fail2ban > /dev/null 2>&1
#sudo systemctl enable --now fail2ban
#/etc/init.d/fail2ban restart
#/etc/init.d/fail2ban status

# Instal DDOS Flate
rm -rf /usr/local/ddos
mkdir -p /usr/local/ddos

clear
# banner
echo "Banner /etc/kyt.txt" >>/etc/ssh/sshd_config
sed -i 's@DROPBEAR_BANNER=""@DROPBEAR_BANNER="/etc/kyt.txt"@g' /etc/default/dropbear

# Ganti Banner
cp -f /root/mysc/limit/issue.net /etc/kyt.txt
print_success "Fail2ban"
}

function ins_epro(){
clear
print_install "Menginstall ePro WebSocket Proxy"
    cp -f /root/mysc/limit/ws /usr/bin/ws >/dev/null 2>&1
    cp -f /root/mysc/limit/tun.conf /usr/bin/tun.conf >/dev/null 2>&1
    cp -f /root/mysc/limit/ws.service /etc/systemd/system/ws.service >/dev/null 2>&1
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
# haproxy resmi paket Ubuntu (jangan ditimpa binary lama libssl 1.1)
chmod +x /usr/sbin/haproxy 2>/dev/null || true
iptables -A FORWARD -m string --string "get_peers" --algo bm -j DROP
iptables -A FORWARD -m string --string "announce_peer" --algo bm -j DROP
iptables -A FORWARD -m string --string "find_node" --algo bm -j DROP
iptables -A FORWARD -m string --algo bm --string "BitTorrent" -j DROP
iptables -A FORWARD -m string --algo bm --string "BitTorrent protocol" -j DROP
iptables -A FORWARD -m string --algo bm --string "peer_id=" -j DROP
iptables -A FORWARD -m string --algo bm --string ".torrent" -j DROP
iptables -A FORWARD -m string --algo bm --string "announce.php?passkey=" -j DROP
iptables -A FORWARD -m string --algo bm --string "torrent" -j DROP
iptables -A FORWARD -m string --algo bm --string "announce" -j DROP
iptables -A FORWARD -m string --algo bm --string "info_hash" -j DROP
iptables-save > /etc/iptables.up.rules
iptables-restore -t < /etc/iptables.up.rules
netfilter-persistent save
netfilter-persistent reload

# remove unnecessary files
cd
apt autoclean -y >/dev/null 2>&1
apt autoremove -y >/dev/null 2>&1
print_success "ePro WebSocket Proxy"
}

function ins_restart(){
clear
print_install "Restarting  All Packet"
systemctl restart nginx 2>/dev/null || true
systemctl restart openvpn 2>/dev/null || true
systemctl restart ssh 2>/dev/null || systemctl restart sshd 2>/dev/null || true
# Kill proses liar di port 443 sebelum start HAProxy
pkill -f "dropbear -p 443" 2>/dev/null || true
fuser -k 443/tcp 2>/dev/null || true
systemctl restart dropbear 2>/dev/null || true
systemctl restart haproxy 2>/dev/null || true
systemctl restart xray 2>/dev/null || systemctl restart runn 2>/dev/null || true
systemctl restart cron 2>/dev/null || true
    systemctl daemon-reload
    systemctl start netfilter-persistent
    systemctl enable --now nginx 2>/dev/null || true
    systemctl enable --now runn 2>/dev/null || true
    systemctl enable --now rc-local 2>/dev/null || true
    systemctl enable --now dropbear 2>/dev/null || true
    systemctl enable --now openvpn 2>/dev/null || true
    systemctl enable --now cron 2>/dev/null || true
    systemctl enable --now haproxy 2>/dev/null || true
    systemctl enable --now netfilter-persistent 2>/dev/null || true
    systemctl enable --now ws 2>/dev/null || true
    systemctl enable --now fail2ban 2>/dev/null || true
history -c
echo "unset HISTFILE" >> /etc/profile

cd
rm -f /root/openvpn
rm -f /root/key.pem
rm -f /root/cert.pem
print_success "All Packet"
}

#Instal Menu
function menu(){
    clear
    print_install "Memasang Menu Packet"
    mkdir -p /usr/local/sbin /usr/local/bin
    wget -qO /tmp/menu.zip "${REPO}limit/menu.zip"
    wget -qO /usr/local/bin/get_account_exp.py "${REPO}core/scripts/get_account_exp.py"
    chmod +x /usr/local/bin/get_account_exp.py
    
    mkdir -p /tmp/menu_extract
    rm -rf /tmp/menu_extract/*
    unzip -qo /tmp/menu.zip -d /tmp/menu_extract/
    chmod +x /tmp/menu_extract/*
    mv -f /tmp/menu_extract/* /usr/local/sbin/
    rm -rf /tmp/menu_extract /tmp/menu.zip
    
    # Pastikan file menu terpasang di /usr/local/sbin dan /usr/bin agar langsung bisa dipanggil
    if [ -f /usr/local/sbin/menu ]; then
        cp -f /usr/local/sbin/menu /usr/bin/menu
        chmod +x /usr/bin/menu /usr/local/sbin/menu
    fi
}

# Membaut Default Menu 
function profile(){
clear
    cat >/root/.profile <<EOF
# ~/.profile: executed by Bourne-compatible login shells.
if [ "$BASH" ]; then
    if [ -f ~/.bashrc ]; then
        . ~/.bashrc
    fi
fi
mesg n || true
menu
EOF

cat >/etc/cron.d/xp_all <<-END
		SHELL=/bin/sh
		PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin
		0 0 * * * root /usr/local/sbin/xp
	END
cat >/etc/cron.d/auto_backup <<-END
		SHELL=/bin/sh
		PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin
		59 23 * * * root /usr/local/sbin/backup
	END
	cat >/etc/cron.d/logclean <<-END
		SHELL=/bin/sh
		PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin
		*/19 * * * * root /usr/local/sbin/clearlog
		END
    chmod 644 /root/.profile
	
    cat >/etc/cron.d/daily_reboot <<-END
		SHELL=/bin/sh
		PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin
		0 5 * * * root /sbin/reboot
	END

    echo "*/1 * * * * root echo -n > /var/log/nginx/access.log" >/etc/cron.d/log.nginx
    echo "*/1 * * * * root echo -n > /var/log/xray/access.log" >>/etc/cron.d/log.xray
    service cron restart
    cat >/home/daily_reboot <<-END
		5
	END

cat >/etc/systemd/system/rc-local.service <<EOF
[Unit]
Description=/etc/rc.local
ConditionPathExists=/etc/rc.local
[Service]
Type=forking
ExecStart=/etc/rc.local start
TimeoutSec=0
StandardOutput=tty
RemainAfterExit=yes
SysVStartPriority=99
[Install]
WantedBy=multi-user.target
EOF

echo "/bin/false" >>/etc/shells
echo "/usr/sbin/nologin" >>/etc/shells
cat >/etc/rc.local <<EOF
#!/bin/sh -e
# rc.local
# By default this script does nothing.
iptables -I INPUT -p udp --dport 5300 -j ACCEPT
iptables -t nat -I PREROUTING -p udp --dport 53 -j REDIRECT --to-ports 5300
systemctl restart netfilter-persistent
exit 0
EOF

    chmod +x /etc/rc.local
    
    AUTOREB=$(cat /home/daily_reboot 2>/dev/null || echo "5")
    SETT=11
    if [ "${AUTOREB:-0}" -gt "$SETT" ]; then
        TIME_DATE="PM"
    else
        TIME_DATE="AM"
    fi
print_success "Menu Packet"
}

# Restart layanan after install
function enable_services(){
clear
print_install "Enable Service"
    systemctl daemon-reload
    systemctl start netfilter-persistent
    systemctl enable --now rc-local
    systemctl enable --now cron
    systemctl enable --now netfilter-persistent
    systemctl restart nginx 2>/dev/null || true
    systemctl restart runn 2>/dev/null || true
    systemctl restart cron 2>/dev/null || true
    systemctl restart haproxy 2>/dev/null || true
    print_success "Enable Service"
    clear
}

# Fingsi Install Script
function instal(){
clear
    mkdir -p /root/mysc/limit
    wget -qO /root/mysc/limit/config.json "${REPO}limit/config.json"
    wget -qO /root/mysc/limit/runn.service "${REPO}limit/runn.service"
    wget -qO /root/mysc/limit/password "${REPO}limit/password"
    wget -qO /root/mysc/limit/haproxy.cfg "${REPO}limit/haproxy.cfg"
    wget -qO /root/mysc/limit/xray.conf "${REPO}limit/xray.conf"
    wget -qO /root/mysc/limit/nginx.conf "${REPO}limit/nginx.conf"
    wget -qO /root/mysc/limit/limit-ip "${REPO}limit/limit-ip"
    wget -qO /root/mysc/limit/udp-mini "${REPO}limit/udp-mini"
    wget -qO /root/mysc/limit/udp-mini-1.service "${REPO}limit/udp-mini-1.service"
    wget -qO /root/mysc/limit/udp-mini-2.service "${REPO}limit/udp-mini-2.service"
    wget -qO /root/mysc/limit/udp-mini-3.service "${REPO}limit/udp-mini-3.service"
    wget -qO /root/mysc/limit/nameserver "${REPO}limit/nameserver"
    wget -qO /root/mysc/limit/sshd "${REPO}limit/sshd"
    wget -qO /root/mysc/limit/dropbear.conf "${REPO}limit/dropbear.conf"
    wget -qO /root/mysc/limit/rclone.conf "${REPO}limit/rclone.conf"
    wget -qO /root/mysc/limit/ipserver "${REPO}limit/ipserver"
    wget -qO /root/mysc/limit/issue.net "${REPO}limit/issue.net"
    wget -qO /root/mysc/limit/ws "${REPO}limit/ws"
    wget -qO /root/mysc/limit/tun.conf "${REPO}limit/tun.conf"
    wget -qO /root/mysc/limit/ws.service "${REPO}limit/ws.service"
    wget -qO /root/mysc/limit/haproxy "${REPO}limit/haproxy"

    first_setup
    nginx_install
    base_package
    make_folder_xray
    pasang_domain
    password_default
    pasang_ssl
    install_xray
    ssh
    udp_mini
    ssh_slow
    ins_SSHD
    ins_dropbear
    ins_vnstat
    ins_openvpn
    ins_backup
    ins_swab
    ins_Fail2ban
    ins_epro
    ins_restart
    menu
    profile
    enable_services
    restart_system
}
instal
echo ""
history -c
rm -rf /root/menu
rm -rf /root/*.zip
rm -rf /root/*.sh
rm -rf /root/LICENSE
rm -rf /root/README.md
# rm -rf /root/domain (pertahankan file domain)
#sudo hostnamectl set-hostname $user
secs_to_human "$(($(date +%s) - ${start}))"
echo ""
echo -e "   \e[1;36m┌────────────────────────────────────────────────────┐\e[0m"
echo -e "   \e[1;36m│\e[1;32m      INSTALASI AUTOSCRIPT BERHASIL SELESAI!        \e[1;36m│\e[0m"
echo -e "   \e[1;36m├────────────────────────────────────────────────────┤\e[0m"
echo -e "   \e[1;36m│\e[0m  Tekan \e[1;33m[ Enter ]\e[0m untuk langsung membuka dashboard.    \e[1;36m│\e[0m"
echo -e "   \e[1;36m│\e[0m  Server siap digunakan untuk membuat akun VPN.      \e[1;36m│\e[0m"
echo -e "   \e[1;36m└────────────────────────────────────────────────────┘\e[0m"
echo ""
read -r -p "   Tekan [ Enter ] untuk membuka menu: "
menu
# reboot disabled for unattended install
