#!/bin/bash
# =====================================================
#  设备专用调整（强制 mbedtls + 软件减法/加法）
#  所有软件包操作均附带中文注释
# =====================================================

TARGET_DEVICE="${TARGET_DEVICE:-}"

# ───────────────── x86-64 专用修复（解决 openssl 冲突）─────────────────
if [[ "$TARGET_DEVICE" == *"x86-64"* ]]; then
    # ★ 彻底解决 openssl 冲突 ★
    CUSTOM_PACKAGES="$CUSTOM_PACKAGES \
    # 强制保留 mbedtls SSL 后端
    libustream-mbedtls \
    # 移除 openssl 后端
    -libustream-openssl \
    # 移除依赖 openssl 的 Luci SSL 组件
    -luci-ssl-openssl \
    -luci-ssl \
    # 移除基于 openssl 的 curl 和 ca-bundle
    -libcurl4-openssl \
    -curl-openssl \
    -ca-bundle-openssl \
    # 移除 openssl afalg 引擎
    -libopenssl-afalg \
    # 移除 OpenVPN 的 openssl 版本，改用 mbedtls 版本
    -openvpn-openssl \
    openvpn-mbedtls"
fi

# ───────────────── 小米 CR6608 专用调整 ─────────────────
if [[ "$TARGET_DEVICE" == "xiaomi_mi-router-cr6608" ]]; then
    # ----- 同样先解决 openssl 冲突 -----
    CUSTOM_PACKAGES="$CUSTOM_PACKAGES \
    # 保留 mbedtls
    libustream-mbedtls \
    # 移除 openssl 后端
    -libustream-openssl \
    # 移除依赖 openssl 的 Luci SSL 组件
    -luci-ssl-openssl \
    -luci-ssl \
    # 移除基于 openssl 的 curl 及依赖
    -libcurl4-openssl \
    -curl-openssl \
    -ca-bundle-openssl \
    # 移除 openssl 的 afalg 引擎
    -libopenssl-afalg"

    # ═══════════ ① 移除非必需的重量级软件 ═══════════
    CUSTOM_PACKAGES="$CUSTOM_PACKAGES \
    # ----- 广告拦截（AdGuardHome 主程序体积过大）-----
    -luci-app-adguardhome \
    # ----- Docker 容器全家桶（极占空间）-----
    -luci-app-docker \
    -luci-app-dockerman \
    -luci-i18n-dockerman-zh-cn \
    # ----- BT 下载器 qBittorrent（体积大）-----
    -luci-app-qbittorrent \
    -luci-i18n-qbittorrent-zh-cn \
    # ----- BT 下载器 Transmission（体积大）-----
    -luci-app-transmission \
    -luci-i18n-transmission-zh-cn \
    # ----- Netdata 性能监控（美观但占资源）-----
    -luci-app-netdata \
    -luci-i18n-netdata-zh-cn \
    # ----- Syncthing 文件同步（依赖多、体积大）-----
    -luci-app-syncthing \
    -luci-i18n-syncthing-zh-cn \
    # ----- 音乐远程控制（owntone，需大量依赖）-----
    -luci-app-music-remote-center \
    -luci-i18n-music-remote-center-zh-cn \
    # ----- Lucky 大吉（多功能，体积大）-----
    -luci-app-lucky \
    -lucky \
    # ----- 集客 AC 控制器（企业应用）-----
    -luci-app-gecoosac \
    -gecoosac \
    # ----- AirPlay 音频接收（不实用）-----
    -luci-app-airplay2 \
    -luci-i18n-airplay2-zh-cn \
    # ----- aMule 电驴客户端（几乎无用）-----
    -luci-app-amule \
    -luci-i18n-amule-zh-cn \
    # ----- Aria2 下载器（可用其他替代）-----
    -luci-app-aria2 \
    -luci-i18n-aria2-zh-cn \
    # ----- PS3 游戏服务器（太老旧）-----
    -luci-app-ps3netsrv \
    -luci-i18n-ps3netsrv-zh-cn \
    # ----- Rclone 网盘同步（功能强大但体积大）-----
    -luci-app-rclone \
    -luci-i18n-rclone-zh-cn \
    # ----- Ksmbd 内核级 SMB（可用其他或直接移除）-----
    -luci-app-ksmbd \
    -luci-i18n-ksmbd-zh-cn \
    # ----- MiniDLNA 流媒体（老旧且依赖多）-----
    -luci-app-minidlna \
    -luci-i18n-minidlna-zh-cn \
    # ----- usteer WiFi 漫游辅助（家用一般不用）-----
    -luci-app-usteer \
    -luci-i18n-usteer-zh-cn \
    # ----- Samba4 文件共享（体积较大）-----
    -luci-app-samba4 \
    -luci-i18n-samba4-zh-cn \
    # ----- 硬盘休眠工具（不实用）-----
    -luci-app-hd-idle \
    -luci-i18n-hd-idle-zh-cn \
    # ----- FileBrowser Go 网页文件管理器（体积不小）-----
    -luci-app-filebrowser-go \
    -luci-i18n-filebrowser-go-zh-cn \
    # ----- LXC 容器管理（需要大内核和存储）-----
    -luci-app-lxc \
    -luci-i18n-lxc-zh-cn \
    # ----- CrowdSec 防火墙联动（复杂且依赖多）-----
    -luci-app-crowdsec-firewall-bouncer \
    -luci-i18n-crowdsec-firewall-bouncer-zh-cn \
    # ----- SoftEther VPN 全家桶（极复杂）-----
    -luci-app-softethervpn \
    -luci-i18n-softethervpn-zh-cn \
    # ----- OpenVPN 服务端/客户端（可用轻量替代）-----
    -luci-app-openvpn-server \
    -luci-i18n-openvpn-server-zh-cn \
    -luci-app-openvpn \
    -luci-i18n-openvpn-zh-cn \
    # ----- IPSec VPN 服务端-----
    -luci-app-ipsec-vpnd \
    -luci-i18n-ipsec-vpnd-zh-cn \
    # ----- OpenConnect VPN 服务端-----
    -luci-app-ocserv \
    -luci-i18n-ocserv-zh-cn \
    # ----- NFS 共享（普通用户极少用）-----
    -luci-app-nfs \
    -luci-i18n-nfs-zh-cn \
    # ----- OSCam 卡片服务器（卫星电视专用）-----
    -luci-app-oscam \
    -luci-i18n-oscam-zh-cn \
    # ----- SNMP 网络管理（专业用途）-----
    -luci-app-snmpd \
    -luci-i18n-snmpd-zh-cn \
    # ----- OpenWISP 集中管理-----
    -luci-app-openwisp \
    -luci-i18n-openwisp-zh-cn \
    # ----- ADS-B 航班追踪（玩具功能）-----
    -luci-app-dump1090 \
    -luci-i18n-dump1090-zh-cn \
    # ----- Spotify 音乐接收器（路由器当音箱）-----
    -luci-app-spotifyd \
    -luci-i18n-spotifyd-zh-cn \
    # ----- Radicale CalDAV/CardDAV 服务器-----
    -luci-app-radicale \
    -luci-i18n-radicale-zh-cn \
    # ----- MJPG-Streamer 摄像头视频流-----
    -luci-app-mjpg-streamer \
    -luci-i18n-mjpg-streamer-zh-cn \
    # ----- 3Cat 多线程下载工具-----
    -luci-app-3cat \
    -luci-i18n-3cat-zh-cn \
    # ----- MWAN3 多线负载（单线用户可去）-----
    -luci-app-mwan3 \
    -luci-i18n-mwan3-zh-cn \
    # ----- 策略路由-----
    -luci-app-pbr \
    -luci-i18n-pbr-zh-cn \
    # ----- NATMap 端口映射-----
    -luci-app-natmap \
    -luci-i18n-natmap-zh-cn \
    # ----- NPS 内网穿透服务端-----
    -luci-app-nps \
    -luci-i18n-nps-zh-cn \
    # ----- KMS 激活服务器-----
    -luci-app-kms \
    -luci-i18n-vlmcsd-zh-cn \
    # ----- vnStat2 流量统计-----
    -luci-app-vnstat2 \
    -luci-i18n-vnstat2-zh-cn \
    # ----- collectd 流量统计（监控类，体积大）-----
    -luci-app-statistics \
    -luci-i18n-statistics-zh-cn \
    # ----- Tor 匿名网络-----
    -luci-app-tor \
    -luci-i18n-tor-zh-cn \
    # ----- Privoxy 网页过滤代理-----
    -luci-app-privoxy \
    -luci-i18n-privoxy-zh-cn \
    # ----- Squid 代理缓存-----
    -luci-app-squid \
    -luci-i18n-squid-zh-cn \
    # ----- TinyProxy 轻量 HTTP 代理-----
    -luci-app-tinyproxy \
    -luci-i18n-tinyproxy-zh-cn \
    # ----- GOST 隧道代理-----
    -luci-app-gost \
    -luci-i18n-gost-zh-cn \
    # ----- Ngrok 内网穿透-----
    -luci-app-ngrokc \
    -luci-i18n-ngrokc-zh-cn \
    # ----- FRP 服务端（家用只做客户端即可）-----
    -luci-app-frps \
    -luci-i18n-frps-zh-cn \
    # ----- N2N P2P VPN（可被 ZeroTier 等替代）-----
    -luci-app-n2n \
    -luci-i18n-n2n-zh-cn \
    # ----- Easytier 组网工具（若保留 ZeroTier 则多余）-----
    -luci-app-easytier \
    -easytier \
    # ----- PageKite 内网穿透-----
    -luci-app-pagekitec \
    -luci-i18n-pagekitec-zh-cn \
    # ----- xfrpc 内网穿透-----
    -luci-app-xfrpc \
    -luci-i18n-xfrpc-zh-cn \
    # ----- SSH 隧道管理 UI（非必须）-----
    -luci-app-sshtunnel \
    -luci-i18n-sshtunnel-zh-cn \
    # ----- IPTV 转发 rtp2httpd（先移除，需要时再加）-----
    -luci-app-rtp2httpd \
    -luci-i18n-rtp2httpd-zh-cn \
    # ----- dufs 静态文件服务器-----
    -luci-app-dufs \
    -luci-i18n-dufs-zh-cn \
    # ----- 统一文件共享（依赖 webdav2）-----
    -luci-app-unishare \
    -webdav2 \
    # ----- CPU 限制工具-----
    -luci-app-cpulimit \
    -luci-i18n-cpulimit-zh-cn \
    # ----- OLED 屏幕显示（无屏幕无用）-----
    -luci-app-oled \
    -luci-i18n-oled-zh-cn \
    # ----- SMS 短信工具（需 4G 模块）-----
    -luci-app-sms-tool-js \
    -luci-i18n-sms-tool-js-zh-cn \
    # ----- 4G 模块频段锁定（无 4G 模块无用）-----
    -luci-app-modemband \
    -luci-i18n-modemband-zh-cn \
    # ----- USB 打印机共享-----
    -luci-app-usb-printer \
    -luci-i18n-usb-printer-zh-cn \
    # ----- 打印服务器 p910nd-----
    -luci-app-p910nd \
    -luci-i18n-p910nd-zh-cn"

    # ═══════════ ② 添加 CR6608 专属轻量软件 ═══════════
    CUSTOM_PACKAGES="$CUSTOM_PACKAGES \
    # Argon 主题（美观轻量）
    luci-theme-argon \
    # Argon 主题配置工具
    luci-app-argon-config \
    # Argon 配置中文翻译
    luci-i18n-argon-config-zh-cn \
    # ARP 绑定（IP/MAC 绑定）
    luci-app-arpbind \
    # ARP 绑定中文
    luci-i18n-arpbind-zh-cn \
    # DDNS-GO 动态域名解析
    luci-app-ddns-go \
    # DDNS-GO 中文
    luci-i18n-ddns-go-zh-cn \
    # DDNSTO 远程控制（体积小，易用）
    luci-app-ddnsto \
    # 网络唤醒（WOL）
    luci-app-wol \
    # WOL 中文
    luci-i18n-wol-zh-cn \
    # 微信推送（Server酱）
    luci-app-wechatpush \
    # 微信推送中文
    luci-i18n-wechatpush-zh-cn \
    # 应用过滤（家长控制）
    luci-app-appfilter \
    # 应用过滤中文
    luci-i18n-appfilter-zh-cn"

    # 节点小宝（若需要，请确认包名后取消注释，例如 luci-app-easymesh）
    # CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-easymesh luci-i18n-easymesh-zh-cn"
fi

export CUSTOM_PACKAGES
