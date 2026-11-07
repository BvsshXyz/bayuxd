# 🚀 BAYU XD TUNNELING AUTOSCRIPT (v2.5 Stable)

> **All-In-One Multiport Tunneling VPN & Proxy Gateway for Ubuntu & Debian.**  
> Dikembangkan secara rapi, modern, mobile-friendly (UI 54-Kolom Termius), dengan penjadwalan expired akurat (WIB), dan proteksi multi-login otomatis.

---

## 📁 Struktur Direktori Repository

Repository ini sudah disusun secara modular agar rapi, mudah dibaca, dan mudah dikembangkan:

```text
bayuxd/
├── 📄 install.sh               # Script instalasi 1-klik utama
├── 📄 premi.sh                 # Core engine installer full-stack
├── 📄 update.sh                # Script update otomatis dari GitHub
├── 📄 get_account_exp.py       # Engine python penghitung masa aktif & jam expired
│
├── 📂 modules/                 # Kumpulan skrip CLI per kategori protokol
│   ├── 📁 ssh/                 # addssh, trial, renewssh, delssh, member, ceklim, lock, dll.
│   ├── 📁 vmess/               # addws, trialws, renewws, delws, cekws, lock-vmess, dll.
│   ├── 📁 vless/               # addvless, trialvless, renewvless, delvless, cekvless, dll.
│   ├── 📁 trojan/              # addtr, trialtr, renewtr, deltr, cektr, lock-trojan, dll.
│   ├── 📁 shadowsocks/         # addss, trialss, renewss, delss, cekss, user-ss
│   ├── 📁 menu/                # menu, menu2, m-sshws, m-vmess, m-vless, m-trojan, running
│   ├── 📁 backup/              # backup, restore, autobackup, menu-backup
│   └── 📁 system/              # speedtest, ram, about, reboot, clearcache, bbr, dll.
│
├── 📂 core/                    # Konfigurasi sistem & background service
│   ├── 📁 configs/             # config.json (Xray), haproxy.cfg, nginx.conf, dropbear.conf
│   ├── 📁 services/            # ws.service, autokill.service, runn.service, udp-mini.service
│   ├── 📁 binaries/            # dnstt-server, dnstt-client, udp-mini, haproxy, ws
│   └── 📁 scripts/             # ws.py (Python3 WS Proxy), xp (Auto-Delete Expired)
│
└── 📂 limit/                   # Arsip dependency deployment paket VPS
    └── 📦 menu.zip             # Arsip sync otomatis untuk sbin VPS
```

---

## ⚡ Fitur Unggulan (Core Highlights)

- 🌐 **Cloudflare Custom Subdomain:** Pilih domain sendiri atau buat subdomain kustom `*.bayuuvx.com` dengan filter anti-duplikat live API Cloudflare.
- 📱 **Mobile-First Termius UI (54 Columns):** Tampilan tabel rapi, simetris, dan anti-geser di semua layar smartphone.
- 🕒 **Accurate Hourly Expiry:** Penghitungan masa aktif 24 jam presisi mengikuti jam & menit pembuatan akun (format waktu lokal WIB).
- ⏱️ **Auto-Kill Trial System:** Akun trial otomatis terhapus bersih setelah 30 menit (dilengkapi estimasi jam mati).
- 🛡️ **Always-On Multi-Login Guard:** Proteksi multi-device login real-time (Dropbear & Xray Core) tanpa membebani CPU / merestart service.
- 🔢 **Numbered Selector Management:** Hapus & Perpanjang akun cukup ketik nomor urut `[01], [02]`, tanpa perlu ketik username manual.
- ⚡ **Multiport Protocol Support:**
  - **SSH / WS:** OpenSSH, Dropbear TLS (443), WebSocket Python 3 Non-TLS (80, 8080).
  - **Xray VMess-WS:** Port 443 (TLS) & Port 80 (Non-TLS).
  - **Xray VLESS-WS:** Port 443 (TLS) & Port 80 (Non-TLS).
  - **Xray Trojan-WS:** Port 443 (TLS).
  - **SlowDNS / BadVPN UDPGW:** Port 7100, 7200, 7300.

---

## 📦 Cara Install (1-Line Command)

Jalankan perintah ini di terminal VPS (login sebagai `root`):

```bash
apt update -y && apt install -y curl wget && bash <(curl -sL https://raw.githubusercontent.com/BvsshXyz/bayuxd/main/install.sh)
```

---

## 🖥️ Port Layanan (Default Port Configuration)

| Protokol | Port | Deskripsi |
| :--- | :--- | :--- |
| **Dropbear TLS / SSH-WS** | `443` | WebSocket TLS Multiplexer via HAProxy |
| **Dropbear Direct** | `109, 143` | Koneksi langsung Dropbear |
| **OpenSSH** | `22, 22022` | Standar remote login |
| **WebSocket Non-TLS** | `80, 8080` | Python 3 Async WebSocket Proxy |
| **OpenVPN TCP / UDP** | `443, 1194` (TCP) / `2200` (UDP) | Config download via web port 81 |
| **Xray VMess WS** | `443` (TLS) / `80` (HTTP) | Path: `/vmess` |
| **Xray VLESS WS** | `443` (TLS) / `80` (HTTP) | Path: `/vless` |
| **Xray Trojan WS** | `443` (TLS) | Path: `/trojan` |
| **Shadowsocks-2022** | `443` (AEAD Ciphers) | Proxy ringan anti-sensor |
| **SlowDNS** | `53, 5300` | SlowDNS Client & Server Query |
| **BadVPN UDPGW** | `7100, 7200, 7300` | Support UDP Voice Call & Game Online |

---

## ⚙️ Perintah Manajemen (CLI Commands)

Setelah instalasi selesai, menu utama otomatis terbuka setiap kali login SSH. Lu juga bisa ketik perintah ini secara manual:

- `menu` : Membuka dashboard utama
- `m-sshws` : Sub-menu manajemen SSH & WebSocket
- `m-vmess` : Sub-menu manajemen Xray VMess
- `m-vless` : Sub-menu manajemen Xray VLESS
- `m-trojan` : Sub-menu manajemen Xray Trojan
- `running` : Cek status semua service tunneling

---

## 👤 Developer & Maintainer

- **Author:** Bayu Agung Riadi (Bayu XD)
- **Telegram:** [@Bayuu_XD](https://t.me/Bayuu_XD)
- **Channel:** [@aibansos](https://t.me/aibansos)
- **Repository:** [https://github.com/BvsshXyz/bayuxd](https://github.com/BvsshXyz/bayuxd)
