#!/bin/bash
# ====================================================
#   BAYU XD TUNNELING SYSTEM - SINKRONISASI UPDATE
#   Download & Install Latest Modules from GitHub
# ====================================================

C_BORDER="\033[1;36m"
C_HEAD="\033[1;37m"
C_TEXT="\033[0;37m"
C_VAL="\033[1;32m"
C_OFF="\033[1;31m"
C_NUM="\033[1;33m"
C_CYAN="\033[0;36m"
NC="\033[0m"

clear
echo -e "${C_BORDER}┌────────────────────────────────────────────────────┐${NC}"
echo -e "${C_BORDER}│${C_HEAD}              UPDATE AUTOSCRIPT BAYU XD             ${C_BORDER}│${NC}"
echo -e "${C_BORDER}│${C_CYAN}           Sinkronisasi Update dari GitHub          ${C_BORDER}│${NC}"
echo -e "${C_BORDER}├────────────────────────────────────────────────────┤${NC}"
echo -e "${C_BORDER}│${C_TEXT}  [~] Mengunduh modul & binary terbaru...           ${C_BORDER}│${NC}"

UPDATE_URL="https://raw.githubusercontent.com/BvsshXyz/bayuxd/main/limit/menu.zip"
wget -qO /tmp/menu.zip "$UPDATE_URL" 2>/dev/null

if [ -f /tmp/menu.zip ] && [ -s /tmp/menu.zip ]; then
    mkdir -p /tmp/menu_extract /usr/local/sbin
    unzip -qo /tmp/menu.zip -d /tmp/menu_extract/
    chmod +x /tmp/menu_extract/*
    mv -f /tmp/menu_extract/* /usr/local/sbin/
    cp -f /usr/local/sbin/menu /usr/bin/menu 2>/dev/null || true
    cp -f /usr/local/sbin/update /usr/bin/update 2>/dev/null || true
    rm -rf /tmp/menu_extract /tmp/menu.zip update.sh
    
    echo -e "${C_BORDER}│${C_VAL}  [✓] Semua modul & menu berhasil dipasang!         ${C_BORDER}│${NC}"
    echo -e "${C_BORDER}├────────────────────────────────────────────────────┤${NC}"
    echo -e "${C_BORDER}│${C_VAL}  Status: SCRIPT BERHASIL DI-UPDATE KE TERBARU!     ${C_BORDER}│${NC}"
    echo -e "${C_BORDER}└────────────────────────────────────────────────────┘${NC}"
else
    rm -rf /tmp/menu.zip
    echo -e "${C_BORDER}│${C_OFF}  [!] Gagal mengunduh pembaruan dari GitHub!        ${C_BORDER}│${NC}"
    echo -e "${C_BORDER}├────────────────────────────────────────────────────┤${NC}"
    echo -e "${C_BORDER}│${C_OFF}  Periksa koneksi internet VPS Anda.                ${C_BORDER}│${NC}"
    echo -e "${C_BORDER}└────────────────────────────────────────────────────┘${NC}"
fi

echo ""
echo -ne "${C_CYAN}Tekan [ Enter ] untuk kembali ke menu utama...${NC}"
read -r
menu
