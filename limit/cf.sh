#!/bin/bash
export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"

# Cloudflare Configuration Bayu XD (bayuuvx.com)
DOMAIN="bayuuvx.com"
CF_ID=$(echo "YW1pbmJheXU1NDRAZ21haWwuY29t" | base64 -d)
CF_KEY=$(echo "Y2ZrX0dqS0hWQ25NZXF6ek4wQkU1NUcyTUdUbW1vRDFoVGpyNzRzNEh4M3cyOWI0ODc4Mg==" | base64 -d)
ZONE="f8002566c86ecefdf261ff4cc3f5c88d"

IP=$(curl -sS ipv4.icanhazip.com || wget -qO- icanhazip.com)
sub=$(tr </dev/urandom -dc a-z0-9 | head -c5)
dns="${sub}.${DOMAIN}"

echo -e "Menghubungkan IP (${IP}) ke Subdomain Cloudflare: ${dns}..."

# 1. Cek apakah record sudah ada
RECORD=$(curl -sLX GET "https://api.cloudflare.com/client/v4/zones/${ZONE}/dns_records?name=${dns}" \
     -H "X-Auth-Email: ${CF_ID}" \
     -H "X-Auth-Key: ${CF_KEY}" \
     -H "Content-Type: application/json" | jq -r '.result[0].id // empty')

# 2. Buat atau update DNS Record A
if [[ -z "$RECORD" || "$RECORD" == "null" ]]; then
     RECORD=$(curl -sLX POST "https://api.cloudflare.com/client/v4/zones/${ZONE}/dns_records" \
     -H "X-Auth-Email: ${CF_ID}" \
     -H "X-Auth-Key: ${CF_KEY}" \
     -H "Content-Type: application/json" \
     --data '{"type":"A","name":"'${dns}'","content":"'${IP}'","ttl":120,"proxied":false}' | jq -r '.result.id // empty')
else
     curl -sLX PUT "https://api.cloudflare.com/client/v4/zones/${ZONE}/dns_records/${RECORD}" \
     -H "X-Auth-Email: ${CF_ID}" \
     -H "X-Auth-Key: ${CF_KEY}" \
     -H "Content-Type: application/json" \
     --data '{"type":"A","name":"'${dns}'","content":"'${IP}'","ttl":120,"proxied":false}' >/dev/null 2>&1
fi

mkdir -p /etc/xray /var/lib/kyt /etc/v2ray
echo "$dns" > /root/domain
echo "$dns" > /root/scdomain
echo "$dns" > /etc/xray/domain
echo "$dns" > /etc/v2ray/domain
echo "$dns" > /etc/xray/scdomain
echo "IP=$dns" > /var/lib/kyt/ipvps.conf

echo -e "\e[1;32m[✓] Subdomain Berhasil Dibuat: ${dns}\e[0m"
