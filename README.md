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
git clone https://github.com/d3ad0x1/ufw-watch.git
cd ufw-watch
chmod +x ufw-watch.sh
```

## 🚀 Usage

```bash
sudo ./ufw-watch.sh
```

## 🖥️ Example output

```bash
Time: Sep  2 10:15:23 | Action: [UFW BLOCK] | Interface: enp3s0   | Source: 10.0.113.45   | Destination: 192.168.1.10   | Port: 22
Time: Sep  2 10:16:05 | Action: [UFW ALLOW] | Interface: enp3s0   | Source: 160.51.100.77  | Destination: 192.168.1.10   | Port: 443
```

## 🔖 GitHub Topics

![ufw](https://img.shields.io/badge/topic-ufw-red?logo=linux)
![security](https://img.shields.io/badge/topic-security-orange)
![monitoring](https://img.shields.io/badge/topic-monitoring-green)
![sysadmin](https://img.shields.io/badge/topic-sysadmin-informational)
![network](https://img.shields.io/badge/topic-network-lightgrey)
![automation](https://img.shields.io/badge/topic-automation-blueviolet)
![logging](https://img.shields.io/badge/topic-logging-critical)

## 📄 License
This project is licensed under the [MIT License](LICENSE).
