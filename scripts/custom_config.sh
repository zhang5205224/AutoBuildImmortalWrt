#!/bin/bash
# =====================================================
#  设备专用调整 (减法为主，x86-64 附加修复)
#
#  运行逻辑：
#    - 编译 x86-64 时：
#        • 强制排除 libustream-openssl 避免与默认 mbedtls 冲突
#        • 保留 shell/custom-packages.sh 中全部软件
#    - 编译小米 CR6608 时：
#        • 先移除体积巨大或不适合嵌入式设备的软件
#        • 再补充专属轻量级软件
# =====================================================

TARGET_DEVICE="${TARGET_DEVICE:-}"

# ───────────────── x86-64 专用修复 ─────────────────
if [[ "$TARGET_DEVICE" == *"x86-64"* ]]; then
    # 强制排除 openssl SSL 后端，避免与默认 mbedtls 冲突
    CUSTOM_PACKAGES="$CUSTOM_PACKAGES -libustream-openssl"
    # 注意：其他所有软件已由 shell/custom-packages.sh 提供，此处无需重复
fi

# ───────────────── 小米 CR6608 专用调整 ─────────────────
if [[ "$TARGET_DEVICE" == "xiaomi_mi-router-cr6608" ]]; then
    # ① 移除体积巨大或不适合嵌入式的软件
    CUSTOM_PACKAGES="$CUSTOM_PACKAGES \
    # ----- 广告拦截（主程序太大，轻量版 adblock 已保留）-----
    -luci-app-adguardhome \
    # ----- Docker 全家桶（太占空间）-----
    -luci-app-docker -luci-app-dockerman -luci-i18n-dockerman-zh-cn \
    # ----- BT 下载工具（体积大，路由器不必要）-----
    -luci-app-qbittorrent -luci-i18n-qbittorrent-zh-cn \
    -luci-app-transmission -luci-i18n-transmission-zh-cn \
    # ----- 性能监控（美观但占用资源）-----
    -luci-app-netdata -luci-i18n-netdata-zh-cn \
    # ----- 文件同步（体积大，依赖多）-----
    -luci-app-syncthing -luci-i18n-syncthing-zh-cn \
    # ----- 家庭音乐中心（需大量依赖）-----
    -luci-app-music-remote-center -luci-i18n-music-remote-center-zh-cn \
    # ----- Lucky 大吉（多功能工具集，体积大）-----
    -luci-app-lucky -lucky \
    # ----- 集客 AC 控制器（企业级应用，家用不必要）-----
    -luci-app-gecoosac -gecoosac \
    # ----- AirPlay 音频接收（路由器当音响用）-----
    -luci-app-airplay2 -luci-i18n-airplay2-zh-cn \
    # ----- 电驴客户端（几乎没人用了）-----
    -luci-app-amule -luci-i18n-amule-zh-cn \
    # ----- Aria2 下载器（可替代，体积不小）-----
    -luci-app-aria2 -luci-i18n-aria2-zh-cn \
    # ----- PS3 游戏服务器（太老了）-----
    -luci-app-ps3netsrv -luci-i18n-ps3netsrv-zh-cn \
    # ----- Rclone 网盘同步（功能强大但体积也大）-----
    -luci-app-rclone -luci-i18n-rclone-zh-cn \
    # ----- 内核级 SMB 共享（可被 samba4 替代，但后者也去掉了）-----
    -luci-app-ksmbd -luci-i18n-ksmbd-zh-cn \
    # ----- MiniDLNA 流媒体（老旧且依赖多）-----
    -luci-app-minidlna -luci-i18n-minidlna-zh-cn \
    # ----- WiFi 漫游辅助（家用一般不需要）-----
    -luci-app-usteer -luci-i18n-usteer-zh-cn \
    # ----- Samba4 文件共享（体积大）-----
    -luci-app-samba4 -luci-i18n-samba4-zh-cn \
    # ----- 硬盘空闲休眠（对路由器不实用）-----
    -luci-app-hd-idle -luci-i18n-hd-idle-zh-cn \
    # ----- 网页文件管理器（Go 版本，体积不小）-----
    -luci-app-filebrowser-go -luci-i18n-filebrowser-go-zh-cn \
    # ----- LXC 容器管理（需要大内核和存储）-----
    -luci-app-lxc -luci-i18n-lxc-zh-cn \
    # ----- CrowdSec 防火墙联动（复杂且依赖多）-----
    -luci-app-crowdsec-firewall-bouncer -luci-i18n-crowdsec-firewall-bouncer-zh-cn \
    # ----- SoftEther VPN 全家桶（极复杂）-----
    -luci-app-softethervpn -luci-i18n-softethervpn-zh-cn \
    # ----- OpenVPN 服务端/客户端（可用轻量替代）-----
    -luci-app-openvpn-server -luci-i18n-openvpn-server-zh-cn \
    -luci-app-openvpn -luci-i18n-openvpn-zh-cn \
    # ----- IPSec VPN 服务端（复杂）-----
    -luci-app-ipsec-vpnd -luci-i18n-ipsec-vpnd-zh-cn \
    # ----- OpenConnect VPN 服务端（AnyConnect 替代）-----
    -luci-app-ocserv -luci-i18n-ocserv-zh-cn \
    # ----- NFS 共享（普通用户用不到）-----
    -luci-app-nfs -luci-i18n-nfs-zh-cn \
    # ----- OSCam 卡片服务器（卫星电视专用）-----
    -luci-app-oscam -luci-i18n-oscam-zh-cn \
    # ----- SNMP 网络管理协议（专业用途）-----
    -luci-app-snmpd -luci-i18n-snmpd-zh-cn \
    # ----- OpenWISP 集中管理（通常用于大规模部署）-----
    -luci-app-openwisp -luci-i18n-openwisp-zh-cn \
    # ----- 航班追踪（纯粹玩具功能）-----
    -luci-app-dump1090 -luci-i18n-dump1090-zh-cn \
    # ----- Spotify 音乐接收器（路由器当播放器）-----
    -luci-app-spotifyd -luci-i18n-spotifyd-zh-cn \
    # ----- CalDAV/CardDAV 服务器（小众需求）-----
    -luci-app-radicale -luci-i18n-radicale-zh-cn \
    # ----- 摄像头视频流（需要额外硬件）-----
    -luci-app-mjpg-streamer -luci-i18n-mjpg-streamer-zh-cn \
    # ----- 3Cat 多线程下载（很少用）-----
    -luci-app-3cat -luci-i18n-3cat-zh-cn \
    # ----- MWAN3 多线负载（单线用户可去掉）-----
    -luci-app-mwan3 -luci-i18n-mwan3-zh-cn \
    # ----- 策略路由（高级玩法）-----
    -luci-app-pbr -luci-i18n-pbr-zh-cn \
    # ----- NATMap 端口映射（非必要）-----
    -luci-app-natmap -luci-i18n-natmap-zh-cn \
    # ----- NPS 内网穿透服务端（可用 frpc 等替代）-----
    -luci-app-nps -luci-i18n-nps-zh-cn \
    # ----- KMS 激活服务器（非必须）-----
    -luci-app-kms -luci-i18n-vlmcsd-zh-cn \
    # ----- vnStat2 流量统计（占用空间）-----
    -luci-app-vnstat2 -luci-i18n-vnstat2-zh-cn \
    # ----- collectd 流量统计（监控类，体积大）-----
    -luci-app-statistics -luci-i18n-statistics-zh-cn \
    # ----- Tor 匿名网络（普通用户用不上）-----
    -luci-app-tor -luci-i18n-tor-zh-cn \
    # ----- 各种代理缓存/过滤服务（保留一个主代理即可）-----
    -luci-app-privoxy -luci-i18n-privoxy-zh-cn \
    -luci-app-squid -luci-i18n-squid-zh-cn \
    -luci-app-tinyproxy -luci-i18n-tinyproxy-zh-cn \
    # ----- GOST 隧道代理（保留主代理即可）-----
    -luci-app-gost -luci-i18n-gost-zh-cn \
    # ----- Ngrok 内网穿透（可用 frpc 替代）-----
    -luci-app-ngrokc -luci-i18n-ngrokc-zh-cn \
    # ----- FRP 服务端（家用一般只做客户端）-----
    -luci-app-frps -luci-i18n-frps-zh-cn \
    # ----- N2N P2P VPN（可被 tailscale/zerotier 替代）-----
    -luci-app-n2n -luci-i18n-n2n-zh-cn \
    # ----- Easytier 组网工具（若使用 zerotier 则多余）-----
    -luci-app-easytier -easytier \
    # ----- PageKite 内网穿透（较为小众）-----
    -luci-app-pagekitec -luci-i18n-pagekitec-zh-cn \
    # ----- xfrpc 内网穿透（冗余）-----
    -luci-app-xfrpc -luci-i18n-xfrpc-zh-cn \
    # ----- SSH 隧道管理（非必要 UI）-----
    -luci-app-sshtunnel -luci-i18n-sshtunnel-zh-cn \
    # ----- IPTV 转发（家用可保留，但 CR6608 存储有限，先移除）-----
    -luci-app-rtp2httpd -luci-i18n-rtp2httpd-zh-cn \
    # ----- dufs 静态文件服务器（按需保留，这里先去掉）-----
    -luci-app-dufs -luci-i18n-dufs-zh-cn \
    # ----- 统一文件共享（依赖 webdav2，空间紧张可去）-----
    -luci-app-unishare -webdav2 \
    # ----- CPU 限制（不常用）-----
    -luci-app-cpulimit -luci-i18n-cpulimit-zh-cn \
    # ----- OLED 屏幕显示（无屏幕的路由器无用）-----
    -luci-app-oled -luci-i18n-oled-zh-cn \
    # ----- 短信工具（需要 4G 模块）-----
    -luci-app-sms-tool-js -luci-i18n-sms-tool-js-zh-cn \
    # ----- 4G 模块频段锁定（无 4G 模块则无用）-----
    -luci-app-modemband -luci-i18n-modemband-zh-cn \
    # ----- USB 打印机和打印服务器（无打印机可去）-----
    -luci-app-usb-printer -luci-i18n-usb-printer-zh-cn \
    -luci-app-p910nd -luci-i18n-p910nd-zh-cn"

    # ② 补充 CR6608 专属轻量软件
    CUSTOM_PACKAGES="$CUSTOM_PACKAGES \
    # Argon 主题与配置（美观轻量）
    luci-theme-argon luci-app-argon-config luci-i18n-argon-config-zh-cn \
    # IP/MAC 绑定（ARP 绑定）
    luci-app-arpbind luci-i18n-arpbind-zh-cn \
    # DDNS-GO 动态域名解析
    luci-app-ddns-go luci-i18n-ddns-go-zh-cn \
    # DDNSTO 远程控制
    luci-app-ddnsto \
    # 网络唤醒 (WOL)
    luci-app-wol luci-i18n-wol-zh-cn \
    # 微信推送
    luci-app-wechatpush luci-i18n-wechatpush-zh-cn \
    # 应用过滤 / 家长控制
    luci-app-appfilter luci-i18n-appfilter-zh-cn"

    # ③ 节点小宝（请确认包名后取消注释）
    # CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-easymesh luci-i18n-easymesh-zh-cn"

    # 注意：IPv6、无线、无线中继、Turbo ACC、OpenClash、ZeroTier、
    # TTYD、autoreboot、UPnP、adblock 等均已默认保留，无需额外操作
fi

export CUSTOM_PACKAGES
