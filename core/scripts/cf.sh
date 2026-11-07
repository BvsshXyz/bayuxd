#!/bin/bash
export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"

# Cloudflare Configuration Bayu XD (bayuuvx.com)
DOMAIN="bayuuvx.com"
CF_ID=$(echo "YW1pbmJheXU1NDRAZ21haWwuY29t" | base64 -d)
CF_KEY=$(echo "Y2ZrX0dqS0hWQ25NZXF6ek4wQkU1NUcyTUdUbW1vRDFoVGpyNzRzNEh4M3cyOWI0ODc4Mg==" | base64 -d)
ZONE="f8002566c86ecefdf261ff4cc3f5c88d"

IP=$(curl -sS ipv4.icanhazip.com 2>/dev/null || wget -qO- icanhazip.com 2>/dev/null)

echo ""
echo -e "   \e[1;36m┌────────────────────────────────────────────────────┐\e[0m"
echo -e "   \e[1;36m│\e[1;33m          INPUT SUBDOMAIN (*.bayuuvx.com)           \e[1;36m│\e[0m"
echo -e "   \e[1;36m├────────────────────────────────────────────────────┤\e[0m"
echo -e "   \e[1;36m│\e[0m  Contoh: \e[1;32mbayu\e[0m  ->  \e[1;36mbayu.bayuuvx.com\e[0m                \e[1;36m│\e[0m"
echo -e "   \e[1;36m│\e[0m  Syarat: Huruf kecil, angka, atau strip (-)        \e[1;36m│\e[0m"
echo -e "   \e[1;36m└────────────────────────────────────────────────────┘\e[0m"
echo ""

while true; do
    read -p "   Masukkan Nama Subdomain: " sub_input
    sub=$(echo "$sub_input" | tr '[:upper:]' '[:lower:]' | tr -d '[:space:]')
    
    if [ -z "$sub" ]; then
        echo -e "   \e[1;31m[!] Nama subdomain tidak boleh kosong!\e[0m\n"
        continue
    fi
    
    if ! [[ "$sub" =~ ^[a-z0-9-]+$ ]]; then
        echo -e "   \e[1;31m[!] Hanya boleh huruf, angka, dan tanda hubung (-)\e[0m\n"
        continue
    fi
    
    dns="${sub}.${DOMAIN}"
    echo -e "   \e[1;33m[~] Memeriksa ketersediaan ${dns} di Cloudflare...\e[0m"
    
    # Cek apakah record sudah ada di Cloudflare
    CHECK_RECORD=$(curl -sLX GET "https://api.cloudflare.com/client/v4/zones/${ZONE}/dns_records?name=${dns}" \
         -H "X-Auth-Email: ${CF_ID}" \
         -H "X-Auth-Key: ${CF_KEY}" \
         -H "Content-Type: application/json")
    
    RECORD_COUNT=$(echo "$CHECK_RECORD" | jq -r '.result | length')
    
    if [ "$RECORD_COUNT" -gt 0 ]; then
        EXISTING_IP=$(echo "$CHECK_RECORD" | jq -r '.result[0].content')
        echo -e "   \e[1;31m[!] Subdomain '${dns}' SUDAH TERPAKAI! (Mengarah ke IP: ${EXISTING_IP})\e[0m"
        echo -e "   \e[1;31m[!] Silakan pilih nama subdomain yang lain.\e[0m\n"
        continue
    fi
    
    # Subdomain aman & belum terpakai -> Buat DNS Record A
    echo -e "   \e[1;33m[~] Mendaftarkan ${dns} -> IP: ${IP}...\e[0m"
    CREATE_RESP=$(curl -sLX POST "https://api.cloudflare.com/client/v4/zones/${ZONE}/dns_records" \
         -H "X-Auth-Email: ${CF_ID}" \
         -H "X-Auth-Key: ${CF_KEY}" \
         -H "Content-Type: application/json" \
         --data '{"type":"A","name":"'${dns}'","content":"'${IP}'","ttl":120,"proxied":false}')
    
    IS_SUCCESS=$(echo "$CREATE_RESP" | jq -r '.success')
    if [ "$IS_SUCCESS" = "true" ]; then
        echo -e "   \e[1;32m[✓] Subdomain BERHASIL dibuat: ${dns}\e[0m\n"
        break
    else
        ERR_MSG=$(echo "$CREATE_RESP" | jq -r '.errors[0].message // "Gagal membuat record di Cloudflare"')
        echo -e "   \e[1;31m[!] Error Cloudflare: ${ERR_MSG}\e[0m\n"
        continue
    fi
done

mkdir -p /etc/xray /var/lib/kyt /etc/v2ray
echo "$dns" > /root/domain
echo "$dns" > /root/scdomain
echo "$dns" > /etc/xray/domain
echo "$dns" > /etc/v2ray/domain
echo "$dns" > /etc/xray/scdomain
echo "IP=$dns" > /var/lib/kyt/ipvps.conf
