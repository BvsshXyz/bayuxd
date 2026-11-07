# 🚀 BAYU XD TUNNELING AUTOSCRIPT (v2.5 Stable)

> **All-In-One Multiport Tunneling VPN & Proxy Gateway for Ubuntu & Debian.**  
> Crafted with precision, ultra-clean UI (54 Columns Mobile-Friendly), real-time multi-login enforcer, and automated quota/expired management.

---

## ⚡ Fitur Unggulan (Core Highlights)

- 📱 **Mobile-First Termius UI (54 Columns):** Tampilan rapi, simetris, dan anti-geser di semua layar smartphone.
- 🕒 **Accurate Hourly Expiry:** Penghitungan masa aktif 24 jam presisi mengikuti jam & menit pembuatan akun (bukan cuma tebak tanggal).
- ⏱️ **Auto-Kill Trial System:** Akun trial otomatis terhapus bersih setelah 30 menit (dilengkapi live countdown).
- 🛡️ **Always-On Multi-Login Guard:** Proteksi multi-device login real-time (Dropbear & Xray Core) tanpa membebani CPU.
- ⚡ **Multi-Protocol Support:**
  - **SSH / WS:** OpenSSH, Dropbear TLS (443), WebSocket Python 3 Non-TLS (80, 8080).
  - **Xray VMess-WS:** Port 443 (TLS) & Port 80 (Non-TLS).
  - **Xray VLESS-WS:** Port 443 (TLS) & Port 80 (Non-TLS).
  - **Xray Trojan-WS:** Port 443 (TLS).
  - **SlowDNS / BadVPN UDPGW:** Port 7100, 7200, 7300.
- 🔢 **Numbered Selector Management:** Hapus & Perpanjang akun cukup ketik nomor urut `[01], [02]`, tanpa perlu ketik username manual.

---

## 📦 Cara Install (1-Line Command)

Jalankan perintah ini di terminal VPS (login sebagai `root`):

```bash
apt update -y && apt install -y curl wget && wget -q https://raw.githubusercontent.com/BvsshXyz/bayuxd/main/install.sh && chmod +x install.sh && ./install.sh
```

---

## 🖥️ Port Layanan (Default Port Configuration)

| Protokol | Port | Deskripsi |
| :--- | :--- | :--- |
| **Dropbear TLS / SSH-WS** | `443` | WebSocket TLS Multiplexer via HAProxy |
| **Dropbear Direct** | `109, 143` | Koneksi langsung Dropbear |
| **OpenSSH** | `22, 22022` | Standar remote login |
| **WebSocket Non-TLS** | `80, 8080` | Python 3 Async WebSocket Proxy |
| **Xray VMess WS** | `443` (TLS) / `80` (HTTP) | Path: `/vmess` |
| **Xray VLESS WS** | `443` (TLS) / `80` (HTTP) | Path: `/vless` |
| **Xray Trojan WS** | `443` (TLS) | Path: `/trojan` |
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
