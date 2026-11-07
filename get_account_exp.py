import sys, re, datetime, subprocess, time

def get_tz_label():
    tz = time.strftime('%Z')
    if tz in ['WIB', 'WITA', 'WIT']:
        return tz
    offset_hours = -int(time.timezone / 3600)
    if offset_hours == 7:
        return 'WIB'
    elif offset_hours == 8:
        return 'WITA'
    elif offset_hours == 9:
        return 'WIT'
    return tz or 'WIB'

def get_exp(user, proto):
    tz = get_tz_label()
    db_map = {
        'ssh': '/etc/ssh/.ssh.db',
        'vmess': '/etc/vmess/.vmess.db',
        'vless': '/etc/vless/.vless.db',
        'trojan': '/etc/trojan/.trojan.db'
    }
    db = db_map.get(proto.lower(), f'/etc/{proto.lower()}/.{proto.lower()}.db')
    
    db_line = ""
    try:
        with open(db, 'r') as f:
            for line in f:
                parts = line.split()
                if len(parts) >= 2 and parts[1] == user:
                    db_line = line.strip()
                    break
    except Exception:
        pass
    
    is_trial = user.startswith('trial')
    
    # 1. Cek pola tanggal di DB line
    if db_line:
        # Match YYYY-MM-DD HH:MM
        m = re.search(r'(\d{4}-\d{2}-\d{2}\s+\d{2}:\d{2})', db_line)
        if m:
            dt = datetime.datetime.strptime(m.group(1), '%Y-%m-%d %H:%M')
            if is_trial:
                return f"30 Menit [{dt.strftime('%H:%M')}]"
            else:
                return f"{dt.strftime('%d %b, %Y')} [{dt.strftime('%H:%M')}]"
        
        # Match YYYY-MM-DD (format lama tanpa jam -> default 23:59)
        m = re.search(r'(\d{4}-\d{2}-\d{2})', db_line)
        if m:
            dt = datetime.datetime.strptime(m.group(1), '%Y-%m-%d')
            if is_trial:
                return "30 Menit"
            else:
                return f"{dt.strftime('%d %b, %Y')} [23:59]"
        
        # Match DD Mon, YYYY (format lama tanpa jam -> default 23:59)
        m = re.search(r'(\d{2}\s+[A-Za-z]{3},\s+\d{4})', db_line)
        if m:
            val = m.group(1)
            if is_trial:
                return "30 Menit"
            else:
                return f"{val} [23:59]"

    if is_trial:
        return "30 Menit"
        
    # 2. Cek dari chage (untuk akun SSH lawas yang belum ada di .ssh.db)
    try:
        res = subprocess.run(['chage', '-l', user], capture_output=True, text=True)
        for line in res.stdout.splitlines():
            if 'Account expires' in line:
                val = line.split(':', 1)[1].strip()
                if val and val != 'never':
                    try:
                        dt = datetime.datetime.strptime(val, '%b %d, %Y')
                        return f"{dt.strftime('%d %b, %Y')} [23:59]"
                    except Exception:
                        return f"{val} [23:59]"
    except Exception:
        pass

    return "Lifetime"

if __name__ == '__main__':
    u = sys.argv[1]
    p = sys.argv[2] if len(sys.argv) > 2 else 'ssh'
    print(get_exp(u, p))
