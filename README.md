# 🔥 UFW Watch

A simple shell script for monitoring **UFW** logs with colored output.

---

## ✨ Features
- 📅 Shows events from the last 2 days
- 🟥 Blocked connections highlighted in red
- 🟩 Allowed connections highlighted in green
- 🌐 Displays interface, source, destination and port
- 📖 Reads logs directly from **/var/log/ufw.log**

---

## 📦 Installation

```bash
git clone https://github.com/YOURNAME/ufw-watch.git
cd ufw-watch
chmod +x ufw-watch.sh
```

## 🚀 Usage

```bash
sudo ./ufw-watch.sh
```

## 🖥️ Example output

```bash
Time: Sep  2 10:15:23 | Action: [31mUFW BLOCK[0m | Interface: enp3s0   | Source: 203.0.113.45   | Destination: 192.168.1.10   | Port: 22
Time: Sep  2 10:16:05 | Action: [32mUFW ALLOW[0m | Interface: enp3s0   | Source: 198.51.100.77  | Destination: 192.168.1.10   | Port: 443
```

## 📄 License
This project is licensed under the [MIT License](LICENSE).
