#!/bin/bash
# =====================================================
#  统一软件包管理（x86-64 全量 + 所有硬路由通用列表）
#  通过判断 $PROFILE 自动为 CR6608 做减法
#  适用于 build-iso.yml (x86) 和 Build Wireless Router
# =====================================================


# ═══════════════ x86-64 专用 openssl 冲突修复 ═══════════════
# ★ 首先强制使用 mbedtls 并排除 openssl ★
CUSTOM_PACKAGES="libustream-mbedtls \
-libustream-openssl \
-luci-ssl-openssl \
-luci-ssl \
-libcurl4-openssl \
-curl-openssl \
-ca-bundle-openssl \
-libopenssl-afalg \
-openvpn-openssl \
-luci-app-openvpn-server \
-luci-i18n-openvpn-server-zh-cn \
-luci-app-openvpn \
-luci-i18n-openvpn-zh-cn \
-wpad-openssl"

# ═══════════════ x86-64软件列表 ═══════════════
# 首页和网络向导
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-quickstart-zh-cn"
# 高级卸载
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-uninstall"
# 极光主题及配置（含中文）
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-theme-aurora luci-app-aurora-config luci-i18n-aurora-config-zh-cn"
# 去广告 AdGuard Home
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-adguardhome"
# Dae 代理核心及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-dae-zh-cn luci-app-dae"
# Daed 代理守护进程及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-daed-zh-cn luci-app-daed"
# PassWall 代理工具及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-passwall-zh-cn luci-app-passwall"
# SSR-Plus 代理插件
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-ssr-plus"
# PassWall 2 代理插件
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-passwall2"
# Nikki 代理插件及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-nikki-zh-cn luci-app-nikki"
# Nekobox 代理插件
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-nekobox"
# Momo 代理插件、主程序及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES momo luci-app-momo luci-i18n-momo-zh-cn"
# OpenClash 代理插件
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-openclash"
# HomeProxy 代理插件及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-homeproxy-zh-cn luci-app-homeproxy"
# Tailscale VPN 及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-tailscale luci-i18n-tailscale-zh-cn"
# 分区扩容工具及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-partexp luci-i18n-partexp-zh-cn"
# 看门狗 watchdog 及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-watchdog luci-i18n-watchdog-zh-cn"
# 酷猫主题
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-theme-kucat"
# 进阶设置（排除冲突的 Argon 配置）
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-advancedplus luci-i18n-advancedplus-zh-cn -luci-app-argon-config -luci-i18n-argon-config-zh-cn"
# MosDNS 及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-mosdns luci-i18n-mosdns-zh-cn"
# Turbo ACC 网络加速
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-turboacc"
# 应用过滤（家长控制）及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-appfilter luci-i18n-appfilter-zh-cn"
# 设置向导及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-netwizard luci-i18n-netwizard-zh-cn"
# Lucky 大吉及主程序
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-lucky lucky"
# 集客 AC 控制器及主程序
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-gecoosac gecoosac"
# 任务设置及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-taskplan luci-i18n-taskplan-zh-cn"
# Easytier 组网工具及主程序
CUSTOM_PACKAGES="$CUSTOM_PACKAGES easytier luci-app-easytier"
# 统一文件共享（含 webdav2）
CUSTOM_PACKAGES="$CUSTOM_PACKAGES webdav2 luci-app-unishare"
# IPSec VPN 服务器及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-ipsec-vpnd-zh-cn luci-app-ipsec-vpnd"
# Bandix 流量监控及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-bandix luci-i18n-bandix-zh-cn"
# IPTV 流媒体转发及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-rtp2httpd luci-i18n-rtp2httpd-zh-cn"
# 静态文件服务器 dufs 及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-dufs-zh-cn luci-app-dufs"
# 3Cat 多线程下载及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-3cat-zh-cn luci-app-3cat"
# 3G/4G 上网卡信息（轻量版）及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-3ginfo-lite-zh-cn luci-app-3ginfo-lite"
# 访问控制列表及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-acl-zh-cn luci-app-acl"
# ACME 证书自动化申请及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-acme-zh-cn luci-app-acme"
# 广告拦截（快速版）及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-adblock-fast-zh-cn luci-app-adblock-fast"
# 广告拦截（标准版）及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-adblock-zh-cn luci-app-adblock"
# 高级重启及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-advanced-reboot-zh-cn luci-app-advanced-reboot"
# AirPlay 2 音频接收及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-airplay2-zh-cn luci-app-airplay2"
# aMule 电驴客户端及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-amule-zh-cn luci-app-amule"
# Aria2 下载管理器及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-aria2-zh-cn luci-app-aria2"
# ARP 绑定（IP/MAC 绑定）及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-arpbind-zh-cn luci-app-arpbind"
# 有人值守系统升级及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-attendedsysupgrade-zh-cn luci-app-attendedsysupgrade"
# 自动重启及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-autoreboot-zh-cn luci-app-autoreboot"
# IP 封禁及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-banip-zh-cn luci-app-banip"
# 电池状态显示（主模块会自动安装）
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-battstatus-zh-cn"
# BCP38 入向源地址过滤及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-bcp38-zh-cn luci-app-bcp38"
# 校园网认证客户端（Go）及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-bitsrunlogin-go-zh-cn luci-app-bitsrunlogin-go"
# BMX7 动态路由协议及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-bmx7-zh-cn luci-app-bmx7"
# 802.1X 有线认证客户端及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-cd8021x-zh-cn luci-app-cd8021x"
# CIFS/SMB 网络共享挂载及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-cifs-mount-zh-cn luci-app-cifs-mount"
# ClamAV 杀毒引擎及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-clamav-zh-cn luci-app-clamav"
# Cloudflare DoH 隧道及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-cloudflared-zh-cn luci-app-cloudflared"
# 命令执行面板及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-commands-zh-cn luci-app-commands"
# CoovaChilli 强制门户及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-coovachilli-zh-cn luci-app-coovachilli"
# CPU 使用率限制及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-cpulimit-zh-cn luci-app-cpulimit"
# CrowdSec 防火墙联动及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-crowdsec-firewall-bouncer-zh-cn luci-app-crowdsec-firewall-bouncer"
# CloudShark 抓包分析及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-cshark-zh-cn luci-app-cshark"
# 仪表板增强（中文，主模块已内置）
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-dashboard-zh-cn"
# 分布式 WiFi 控制器及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-dawn-zh-cn luci-app-dawn"
# 无线认证守护进程及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-dcwapd-zh-cn luci-app-dcwapd"
# DDNS-GO 动态域名解析及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-ddns-go-zh-cn luci-app-ddns-go"
# 动态 DNS（标准版）及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-ddns-zh-cn luci-app-ddns"
# 磁盘管理器及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-diskman-zh-cn luci-app-diskman"
# ADS-B 航班追踪及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-dump1090-zh-cn luci-app-dump1090"
# 动态接入点管理及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-dynapoint-zh-cn luci-app-dynapoint"
# 邮件发送客户端及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-email-zh-cn luci-app-email"
# EoIP 隧道及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-eoip-zh-cn luci-app-eoip"
# 简易 QoS 及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-eqos-zh-cn luci-app-eqos"
# Luci 应用示例（开发者用）及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-example-zh-cn luci-app-example"
# FileBrowser Go 版及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-filebrowser-go-zh-cn luci-app-filebrowser-go"
# 文件管理器及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-filemanager-zh-cn luci-app-filemanager"
# FRP 内网穿透客户端及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-frpc-zh-cn luci-app-frpc"
# FRP 内网穿透服务端及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-frps-zh-cn luci-app-frps"
# fwknop 端口敲门及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-fwknopd-zh-cn luci-app-fwknopd"
# GOST 隧道代理及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-gost-zh-cn luci-app-gost"
# HAProxy TCP 负载均衡及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-haproxy-tcp-zh-cn luci-app-haproxy-tcp"
# 硬盘空闲休眠及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-hd-idle-zh-cn luci-app-hd-idle"
# HTTPS DNS 代理及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-https-dns-proxy-zh-cn luci-app-https-dns-proxy"
# IRQ 中断均衡及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-irqbalance-zh-cn luci-app-irqbalance"
# Keepalived 高可用及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-keepalived-zh-cn luci-app-keepalived"
# Ksmbd 内核级 SMB 及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-ksmbd-zh-cn luci-app-ksmbd"
# LLDP 链路发现及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-lldpd-zh-cn luci-app-lldpd"
# LXC 容器管理及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-lxc-zh-cn luci-app-lxc"
# MicroSocks SOCKS5 代理及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-microsocks-zh-cn luci-app-microsocks"
# MiniDLNA 流媒体及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-minidlna-zh-cn luci-app-minidlna"
# MiniEAP 校园网认证（使用 luci-proto-minieap）及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-proto-minieap luci-i18n-minieap-zh-cn"
# MJPG-Streamer 摄像头及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-mjpg-streamer-zh-cn luci-app-mjpg-streamer"
# 4G 模块频段锁定及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-modemband-zh-cn luci-app-modemband"
# Mosquitto MQTT 及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-mosquitto-zh-cn luci-app-mosquitto"
# MSD Lite 组播转单播及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-msd_lite-zh-cn luci-app-msd_lite"
# 音乐远程控制及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-music-remote-center-zh-cn luci-app-music-remote-center"
# MWAN3 负载均衡及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-mwan3-zh-cn luci-app-mwan3"
# N2N P2P VPN 及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-n2n-zh-cn luci-app-n2n"
# NATMap 端口映射及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-natmap-zh-cn luci-app-natmap"
# Netdata 性能监控及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-netdata-zh-cn luci-app-netdata"
# NextDNS 广告拦截及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-nextdns-zh-cn luci-app-nextdns"
# NFS 共享及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-nfs-zh-cn luci-app-nfs"
# nftables QoS 及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-nft-qos-zh-cn luci-app-nft-qos"
# Ngrok 内网穿透客户端及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-ngrokc-zh-cn luci-app-ngrokc"
# 实时带宽监控及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-nlbwmon-zh-cn luci-app-nlbwmon"
# NPS 内网穿透服务端及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-nps-zh-cn luci-app-nps"
# 网络 UPS 工具及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-nut-zh-cn luci-app-nut"
# OpenConnect VPN 服务端及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-ocserv-zh-cn luci-app-ocserv"
# OLED 屏幕显示及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-oled-zh-cn luci-app-oled"
# OLSR 路由协议及中文
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-olsr-zh-cn luci-app-olsr"
# OLSR 服务插件及中文
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-olsr-services-zh-cn luci-app-olsr-services"
# OLSR 网络可视化及中文
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-olsr-viz-zh-cn luci-app-olsr-viz"
# IGMP 代理及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-omcproxy-zh-cn luci-app-omcproxy"
# 开放列表（网速排行榜）及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-openlist-zh-cn luci-app-openlist"
# OpenWISP 集中管理客户端及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-openwisp-zh-cn luci-app-openwisp"
# OSCam 卡片服务器及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-oscam-zh-cn luci-app-oscam"
# 打印服务器 p910nd 及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-p910nd-zh-cn luci-app-p910nd"
# PageKite 内网穿透及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-pagekitec-zh-cn luci-app-pagekitec"
# 策略路由及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-pbr-zh-cn luci-app-pbr"
# PPPoE 服务端及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-pppoe-server-zh-cn luci-app-pppoe-server"
# Privoxy 网页过滤及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-privoxy-zh-cn luci-app-privoxy"
# PS3 游戏加载及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-ps3netsrv-zh-cn luci-app-ps3netsrv"
# qBittorrent BT 下载及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-qbittorrent-zh-cn luci-app-qbittorrent"
# QoS 流量控制及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-qos-zh-cn luci-app-qos"
# Radicale CalDAV/CardDAV 服务器及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-radicale-zh-cn luci-app-radicale"
# 内存清理及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-ramfree-zh-cn luci-app-ramfree"
# Rclone 网盘同步及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-rclone-zh-cn luci-app-rclone"
# RP-PPPoE 服务端及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-rp-pppoe-server-zh-cn luci-app-rp-pppoe-server"
# RustDesk 远程桌面服务端及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-rustdesk-server-zh-cn luci-app-rustdesk-server"
# Samba4 文件共享及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-samba4-zh-cn luci-app-samba4"
# 串口转网络及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-ser2net-zh-cn luci-app-ser2net"
# SmartDNS 及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-smartdns-zh-cn luci-app-smartdns"
# SMS 短信工具（4G 模块）及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-sms-tool-js-zh-cn luci-app-sms-tool-js"
# SNMP 及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-snmpd-zh-cn luci-app-snmpd"
# SoftEther VPN 及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-softethervpn-zh-cn luci-app-softethervpn"
# 认证启动页及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-splash-zh-cn luci-app-splash"
# Spotifyd 音乐接收器及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-spotifyd-zh-cn luci-app-spotifyd"
# SQM 智能队列管理及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-sqm-zh-cn luci-app-sqm"
# Squid 代理缓存及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-squid-zh-cn luci-app-squid"
# SSH 隧道管理及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-sshtunnel-zh-cn luci-app-sshtunnel"
# 流量统计及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-statistics-zh-cn luci-app-statistics"
# Syncthing 文件同步及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-syncthing-zh-cn luci-app-syncthing"
# 中山大学校园网认证及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-sysuh3c-zh-cn luci-app-sysuh3c"
# 定时网络唤醒及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-timewol-zh-cn luci-app-timewol"
# TinyProxy 轻量 HTTP 代理及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-tinyproxy-zh-cn luci-app-tinyproxy"
# Tor 匿名网络及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-tor-zh-cn luci-app-tor"
# Transmission BT 下载器及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-transmission-zh-cn luci-app-transmission"
# Travelmate WiFi 连接管理器及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-travelmate-zh-cn luci-app-travelmate"
# ttyd 网页终端及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-ttyd-zh-cn luci-app-ttyd"
# UA2F 用户代理伪装及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-ua2f-zh-cn luci-app-ua2f"
# udpxy 组播转 HTTP 及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-udpxy-zh-cn luci-app-udpxy"
# uHTTPd Web 服务器及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-uhttpd-zh-cn luci-app-uhttpd"
# Unbound DNS 及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-unbound-zh-cn luci-app-unbound"
# UPnP 即插即用及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-upnp-zh-cn luci-app-upnp"
# USB 打印机共享及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-usb-printer-zh-cn luci-app-usb-printer"
# usteer WiFi 漫游辅助及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-usteer-zh-cn luci-app-usteer"
# V2RayA 透明代理面板及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-v2raya-zh-cn luci-app-v2raya"
# KMS 激活服务器及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-vlmcsd-zh-cn luci-app-vlmcsd"
# vnStat2 流量统计及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-vnstat2-zh-cn luci-app-vnstat2"
# vsftpd FTP 服务器及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-vsftpd-zh-cn luci-app-vsftpd"
# 看门狗（断线重启）及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-watchcat-zh-cn luci-app-watchcat"
# 微信推送（Server 酱）及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-wechatpush-zh-cn luci-app-wechatpush"
# WiFi 定时开关及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-wifischedule-zh-cn luci-app-wifischedule"
# 网络唤醒及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-wol-zh-cn luci-app-wol"
# xfrpc 内网穿透及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-xfrpc-zh-cn luci-app-xfrpc"
# xinetd 服务管理及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-xinetd-zh-cn luci-app-xinetd"
# 校园网锐捷认证及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-xlnetacc-zh-cn luci-app-xlnetacc"
# ZeroTier 虚拟局域网及中文
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-zerotier-zh-cn luci-app-zerotier"


# ═══════════════ CR6608 精选软件 ═══════════════
# ★ 首先强制使用 mbedtls 并排除 openssl ★
CUSTOM_PACKAGES="libustream-mbedtls \
-libustream-openssl \
-luci-ssl-openssl \
-luci-ssl \
-libcurl4-openssl \
-curl-openssl \
-ca-bundle-openssl \
-libopenssl-afalg \
-openvpn-openssl \
-luci-app-openvpn-server \
-luci-i18n-openvpn-server-zh-cn \
-luci-app-openvpn \
-luci-i18n-openvpn-zh-cn \
-wpad-openssl"

if [[ "$PROFILE" == "xiaomi_mi-router-cr6608" ]]; then
    # 基础中文
    CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-base-zh-cn luci-i18n-firewall-zh-cn"
    # Argon 主题及配置
    CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-theme-argon luci-app-argon-config luci-i18n-argon-config-zh-cn"
    # TTYD 终端
    CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-ttyd luci-i18n-ttyd-zh-cn"
    # 自动重启
    CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-autoreboot luci-i18n-autoreboot-zh-cn"
    # DDNS-GO
    CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-ddns-go luci-i18n-ddns-go-zh-cn"
    # 网络唤醒
    CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-wol luci-i18n-wol-zh-cn"
    # 微信推送
    CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-wechatpush luci-i18n-wechatpush-zh-cn"
    # UPnP
    CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-upnp luci-i18n-upnp-zh-cn"
    # IP/MAC 绑定
    CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-arpbind luci-i18n-arpbind-zh-cn"
    # Turbo ACC 网络加速
    CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-turboacc"
    # OpenClash 代理
    CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-openclash"
    # 去广告 adblock
    CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-adblock luci-i18n-adblock-zh-cn"
    # 应用过滤
    CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-appfilter luci-i18n-appfilter-zh-cn"
    # ZeroTier 虚拟局域网
    CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-zerotier luci-i18n-zerotier-zh-cn"
    # IPv6 支持（默认已开启，这里可加 luci-proto-ipv6 确保界面可见）
    CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-proto-ipv6"
    # 节点小宝（如果你知道确切包名，请取消下面一行的注释并替换）
    # CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-easymesh luci-i18n-easymesh-zh-cn"
fi


# ═══════════════ newifi-d2 精选软件 ═══════════════
# ★ 首先强制使用 mbedtls 并排除 openssl ★
CUSTOM_PACKAGES="libustream-mbedtls \
-libustream-openssl \
-luci-ssl-openssl \
-luci-ssl \
-libcurl4-openssl \
-curl-openssl \
-ca-bundle-openssl \
-libopenssl-afalg \
-openvpn-openssl \
-luci-app-openvpn-server \
-luci-i18n-openvpn-server-zh-cn \
-luci-app-openvpn \
-luci-i18n-openvpn-zh-cn \
-wpad-openssl"

if [[ "$PROFILE" == "d-team_newifi-d2" ]]; then
    # 基础中文
    CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-base-zh-cn luci-i18n-firewall-zh-cn"
    # Argon 主题及配置
    CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-theme-argon luci-app-argon-config luci-i18n-argon-config-zh-cn"
    # TTYD 终端
    #CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-ttyd luci-i18n-ttyd-zh-cn"
    # 自动重启
    CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-autoreboot luci-i18n-autoreboot-zh-cn"
    # DDNS-GO
    CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-ddns-go luci-i18n-ddns-go-zh-cn"
    # 网络唤醒
    #CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-wol luci-i18n-wol-zh-cn"
    # 微信推送
    #CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-wechatpush luci-i18n-wechatpush-zh-cn"
    # UPnP
    CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-upnp luci-i18n-upnp-zh-cn"
    # IP/MAC 绑定
    CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-arpbind luci-i18n-arpbind-zh-cn"
    # Turbo ACC 网络加速
    CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-turboacc"
    # OpenClash 代理
    CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-openclash"
    # 去广告（使用更轻量的 adblock-fast 替代标准版）
    CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-adblock-fast luci-i18n-adblock-fast-zh-cn"
    # 应用过滤
    #CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-appfilter luci-i18n-appfilter-zh-cn"
    # ZeroTier 虚拟局域网
    CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-zerotier luci-i18n-zerotier-zh-cn"
    # IPv6 支持（默认已开启，这里可加 luci-proto-ipv6 确保界面可见）
    #CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-proto-ipv6"
    # 分区扩容工具及中文
    #CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-partexp luci-i18n-partexp-zh-cn"
    # USB 打印机共享及中文
    #CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-usb-printer-zh-cn luci-app-usb-printer"
    # Samba4 文件共享及中文
    #CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-samba4-zh-cn luci-app-samba4"
    # CIFS/SMB 网络共享挂载及中文
    #CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-cifs-mount-zh-cn luci-app-cifs-mount"
    # 节点小宝（如果你知道确切包名，请取消下面一行的注释并替换）
    # CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-easymesh luci-i18n-easymesh-zh-cn"
fi
