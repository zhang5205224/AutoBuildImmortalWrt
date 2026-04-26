#!/bin/bash
# =====================================================
#  仅对 x86-64 目标加载所有自定义软件包
#  若需编译其他设备（如 CR6608），此段配置不会启用
# =====================================================

TARGET_DEVICE="${TARGET_DEVICE:-}"

if [[ "$TARGET_DEVICE" == *"x86-64"* ]]; then

    # ---------- 首页和网络向导 ----------
    PACKAGES="$PACKAGES luci-i18n-quickstart-zh-cn"

    # ---------- 高级卸载 by YT Vedio Talk ----------
    PACKAGES="$PACKAGES luci-app-uninstall"

    # ---------- 极光主题 by github eamonxg ----------
    PACKAGES="$PACKAGES luci-theme-aurora luci-app-aurora-config luci-i18n-aurora-config-zh-cn"

    # ---------- 去广告 adghome ----------
    PACKAGES="$PACKAGES luci-app-adguardhome"

    # ---------- 代理相关 ----------
    PACKAGES="$PACKAGES luci-app-openvpn-server luci-i18n-openvpn-server-zh-cn"  # OpenVPN 服务端 + 中文包
    PACKAGES="$PACKAGES luci-i18n-openvpn-zh-cn"                                # OpenVPN 客户端中文包
    PACKAGES="$PACKAGES luci-i18n-dae-zh-cn luci-app-dae"                       # Dae 代理核心中文包（大鹅）
    PACKAGES="$PACKAGES luci-i18n-daed-zh-cn luci-app-daed"                     # Daed 代理守护进程中文包
    PACKAGES="$PACKAGES luci-i18n-passwall-zh-cn luci-app-passwall"             # PassWall 代理工具中文包
    PACKAGES="$PACKAGES luci-app-ssr-plus"                                      # SSR-Plus 代理插件
    PACKAGES="$PACKAGES luci-app-passwall2"                                     # PassWall 2 代理插件
    PACKAGES="$PACKAGES luci-i18n-nikki-zh-cn luci-app-nikki"                   # Nikki 代理插件中文包
    PACKAGES="$PACKAGES luci-app-nekobox"                                       # Nekobox 代理插件
    PACKAGES="$PACKAGES momo luci-app-momo luci-i18n-momo-zh-cn"                # Momo 代理插件及其组件和中文包

    # 同样是代理相关（imm仓库集成），添加 OpenClash 与 HomeProxy
    PACKAGES="$PACKAGES luci-app-openclash"                                     # 添加 OpenClash 代理插件
    PACKAGES="$PACKAGES luci-i18n-homeproxy-zh-cn luci-app-homeproxy"           # 添加 HomeProxy 代理插件中文包与主程序

    # ---------- VPN ----------
    PACKAGES="$PACKAGES luci-app-tailscale luci-i18n-tailscale-zh-cn"

    # ---------- 分区扩容 by sirpdboy ----------
    PACKAGES="$PACKAGES luci-app-partexp luci-i18n-partexp-zh-cn"

    # ---------- 看门狗 watchdog by sirpdboy ----------
    PACKAGES="$PACKAGES luci-app-watchdog luci-i18n-watchdog-zh-cn"

    # ---------- 酷猫主题 by sirpdboy ----------
    PACKAGES="$PACKAGES luci-theme-kucat"

    # ---------- 进阶设置 by sirpdboy ----------
    # 开启 advancedplus 时需排除冲突的 argon 主题配置
    PACKAGES="$PACKAGES luci-app-advancedplus luci-i18n-advancedplus-zh-cn -luci-app-argon-config -luci-i18n-argon-config-zh-cn"

    # ---------- MosDNS ----------
    PACKAGES="$PACKAGES luci-app-mosdns luci-i18n-mosdns-zh-cn"

    # ---------- Turbo ACC 网络加速 ----------
    PACKAGES="$PACKAGES luci-app-turboacc"

    # ---------- 应用过滤 openappfilter.com ----------
    PACKAGES="$PACKAGES luci-app-appfilter luci-i18n-appfilter-zh-cn"

    # ---------- 设置向导 by sirpdboy ----------
    PACKAGES="$PACKAGES luci-app-netwizard luci-i18n-netwizard-zh-cn"

    # ---------- Lucky 大吉 ----------
    PACKAGES="$PACKAGES luci-app-lucky lucky"

    # ---------- 集客 AC ----------
    PACKAGES="$PACKAGES luci-app-gecoosac gecoosac"

    # ---------- 任务设置 ----------
    PACKAGES="$PACKAGES luci-app-taskplan luci-i18n-taskplan-zh-cn"

    # ---------- Easytier ----------
    PACKAGES="$PACKAGES easytier luci-app-easytier"

    # ---------- 统一文件共享 ----------
    PACKAGES="$PACKAGES webdav2 luci-app-unishare"

    # ---------- IPSec VPN 服务器 ----------
    PACKAGES="$PACKAGES luci-i18n-ipsec-vpnd-zh-cn luci-app-ipsec-vpnd"

    # ---------- Bandix 流量监控 by timsaya ----------
    PACKAGES="$PACKAGES luci-app-bandix luci-i18n-bandix-zh-cn"

    # ---------- IPTV 流媒体转发服务器 - rtp2httpd by stackia ----------
    PACKAGES="$PACKAGES luci-app-rtp2httpd luci-i18n-rtp2httpd-zh-cn"

    # ---------- 静态文件服务器 dufs ----------
    PACKAGES="$PACKAGES luci-i18n-dufs-zh-cn luci-app-dufs"

    # ==================== 以下 imm 仓库内的软件 ====================
    PACKAGES="$PACKAGES luci-i18n-3cat-zh-cn luci-app-3cat"                       # 3Cat（多线程下载工具）
    PACKAGES="$PACKAGES luci-i18n-3ginfo-lite-zh-cn luci-app-3ginfo-lite"         # 3G/4G 上网卡信息显示（轻量版）
    PACKAGES="$PACKAGES luci-i18n-acl-zh-cn luci-app-acl"                         # 访问控制列表
    PACKAGES="$PACKAGES luci-i18n-acme-zh-cn luci-app-acme"                       # ACME 证书自动化申请
    PACKAGES="$PACKAGES luci-i18n-adblock-fast-zh-cn luci-app-adblock-fast"       # 广告拦截（快速版）
    PACKAGES="$PACKAGES luci-i18n-adblock-zh-cn luci-app-adblock"                 # 广告拦截（标准版）
    PACKAGES="$PACKAGES luci-i18n-advanced-reboot-zh-cn luci-app-advanced-reboot" # 高级重启
    PACKAGES="$PACKAGES luci-i18n-airplay2-zh-cn luci-app-airplay2"               # AirPlay 2 音频接收器
    PACKAGES="$PACKAGES luci-i18n-amule-zh-cn luci-app-amule"                     # aMule 电驴客户端
    PACKAGES="$PACKAGES luci-i18n-aria2-zh-cn luci-app-aria2"                     # Aria2 下载管理器
    PACKAGES="$PACKAGES luci-i18n-arpbind-zh-cn luci-app-arpbind"                 # ARP 绑定
    PACKAGES="$PACKAGES luci-i18n-attendedsysupgrade-zh-cn luci-app-attendedsysupgrade" # 有人值守系统升级
    PACKAGES="$PACKAGES luci-i18n-autoreboot-zh-cn luci-app-autoreboot"           # 自动重启
    PACKAGES="$PACKAGES luci-i18n-banip-zh-cn luci-app-banip"                     # IP 封禁
    PACKAGES="$PACKAGES luci-i18n-battstatus-zh-cn luci-app-battstatus"           # 电池状态显示
    PACKAGES="$PACKAGES luci-i18n-bcp38-zh-cn luci-app-bcp38"                     # BCP38 入向源地址过滤
    PACKAGES="$PACKAGES luci-i18n-bitsrunlogin-go-zh-cn luci-app-bitsrunlogin-go" # 校园网认证客户端（Go）
    PACKAGES="$PACKAGES luci-i18n-bmx7-zh-cn luci-app-bmx7"                       # BMX7 动态路由协议
    PACKAGES="$PACKAGES luci-i18n-cd8021x-zh-cn luci-app-cd8021x"                 # 802.1X 有线认证客户端
    PACKAGES="$PACKAGES luci-i18n-cifs-mount-zh-cn luci-app-cifs-mount"           # CIFS/SMB 网络共享挂载
    PACKAGES="$PACKAGES luci-i18n-clamav-zh-cn luci-app-clamav"                   # ClamAV 杀毒引擎
    PACKAGES="$PACKAGES luci-i18n-cloudflared-zh-cn luci-app-cloudflared"         # Cloudflare DoH 隧道
    PACKAGES="$PACKAGES luci-i18n-commands-zh-cn luci-app-commands"               # 命令执行面板
    PACKAGES="$PACKAGES luci-i18n-coovachilli-zh-cn luci-app-coovachilli"         # CoovaChilli 强制门户
    PACKAGES="$PACKAGES luci-i18n-cpulimit-zh-cn luci-app-cpulimit"               # CPU 使用率限制
    PACKAGES="$PACKAGES luci-i18n-crowdsec-firewall-bouncer-zh-cn luci-app-crowdsec-firewall-bouncer" # CrowdSec 防火墙联动
    PACKAGES="$PACKAGES luci-i18n-cshark-zh-cn luci-app-cshark"                   # CloudShark 抓包分析
    PACKAGES="$PACKAGES luci-i18n-dashboard-zh-cn luci-app-dashboard"             # 仪表盘增强
    PACKAGES="$PACKAGES luci-i18n-dawn-zh-cn luci-app-dawn"                       # 分布式 WiFi 控制器
    PACKAGES="$PACKAGES luci-i18n-dcwapd-zh-cn luci-app-dcwapd"                   # 无线认证守护进程
    PACKAGES="$PACKAGES luci-i18n-ddns-go-zh-cn luci-app-ddns-go"                 # DDNS-GO
    PACKAGES="$PACKAGES luci-i18n-ddns-zh-cn luci-app-ddns"                       # 动态 DNS（标准版）
    PACKAGES="$PACKAGES luci-i18n-diskman-zh-cn luci-app-diskman"                 # 磁盘管理器
    PACKAGES="$PACKAGES luci-i18n-dsl-zh-cn luci-app-dsl"                         # DSL 宽带控制
    PACKAGES="$PACKAGES luci-i18n-dump1090-zh-cn luci-app-dump1090"               # ADS-B 航班追踪
    PACKAGES="$PACKAGES luci-i18n-dynapoint-zh-cn luci-app-dynapoint"             # 动态接入点管理
    PACKAGES="$PACKAGES luci-i18n-email-zh-cn luci-app-email"                     # 邮件发送客户端
    PACKAGES="$PACKAGES luci-i18n-eoip-zh-cn luci-app-eoip"                       # EoIP 隧道
    PACKAGES="$PACKAGES luci-i18n-eqos-zh-cn luci-app-eqos"                       # 简易 QoS
    PACKAGES="$PACKAGES luci-i18n-example-zh-cn luci-app-example"                 # Luci 应用示例（开发者用）
    PACKAGES="$PACKAGES luci-i18n-filebrowser-go-zh-cn luci-app-filebrowser-go"   # FileBrowser（Go 版）
    PACKAGES="$PACKAGES luci-i18n-filebrowser-zh-cn luci-app-filebrowser"         # FileBrowser（标准版）
    PACKAGES="$PACKAGES luci-i18n-filemanager-zh-cn luci-app-filemanager"         # 文件管理器
    PACKAGES="$PACKAGES luci-i18n-frpc-zh-cn luci-app-frpc"                       # FRP 内网穿透客户端
    PACKAGES="$PACKAGES luci-i18n-frps-zh-cn luci-app-frps"                       # FRP 内网穿透服务端
    PACKAGES="$PACKAGES luci-i18n-fwknopd-zh-cn luci-app-fwknopd"                 # fwknop 端口敲门
    PACKAGES="$PACKAGES luci-i18n-gost-zh-cn luci-app-gost"                       # GOST 隧道代理
    PACKAGES="$PACKAGES luci-i18n-haproxy-tcp-zh-cn luci-app-haproxy-tcp"         # HAProxy TCP 负载均衡
    PACKAGES="$PACKAGES luci-i18n-hd-idle-zh-cn luci-app-hd-idle"                 # 硬盘空闲休眠
    PACKAGES="$PACKAGES luci-i18n-https-dns-proxy-zh-cn luci-app-https-dns-proxy" # HTTPS DNS 代理
    PACKAGES="$PACKAGES luci-i18n-irqbalance-zh-cn luci-app-irqbalance"           # IRQ 中断均衡
    PACKAGES="$PACKAGES luci-i18n-keepalived-zh-cn luci-app-keepalived"           # Keepalived 高可用
    PACKAGES="$PACKAGES luci-i18n-ksmbd-zh-cn luci-app-ksmbd"                     # Ksmbd 内核级 SMB
    PACKAGES="$PACKAGES luci-i18n-lldpd-zh-cn luci-app-lldpd"                     # LLDP 链路发现
    PACKAGES="$PACKAGES luci-i18n-lxc-zh-cn luci-app-lxc"                         # LXC 容器管理
    PACKAGES="$PACKAGES luci-i18n-microsocks-zh-cn luci-app-microsocks"           # MicroSocks SOCKS5 代理
    PACKAGES="$PACKAGES luci-i18n-minidlna-zh-cn luci-app-minidlna"               # MiniDLNA 流媒体
    PACKAGES="$PACKAGES luci-i18n-minieap-zh-cn luci-app-minieap"                 # MiniEAP 校园网认证
    PACKAGES="$PACKAGES luci-i18n-mjpg-streamer-zh-cn luci-app-mjpg-streamer"     # MJPG-Streamer 摄像头
    PACKAGES="$PACKAGES luci-i18n-modemband-zh-cn luci-app-modemband"             # 4G 模块频段锁定
    PACKAGES="$PACKAGES luci-i18n-mosquitto-zh-cn luci-app-mosquitto"             # Mosquitto MQTT
    PACKAGES="$PACKAGES luci-i18n-msd_lite-zh-cn luci-app-msd_lite"               # MSD Lite 组播转单播
    PACKAGES="$PACKAGES luci-i18n-music-remote-center-zh-cn luci-app-music-remote-center" # 音乐远程控制
    PACKAGES="$PACKAGES luci-i18n-mwan3-zh-cn luci-app-mwan3"                     # MWAN3 负载均衡
    PACKAGES="$PACKAGES luci-i18n-n2n-zh-cn luci-app-n2n"                         # N2N P2P VPN
    PACKAGES="$PACKAGES luci-i18n-natmap-zh-cn luci-app-natmap"                   # NATMap 端口映射
    PACKAGES="$PACKAGES luci-i18n-netdata-zh-cn luci-app-netdata"                 # Netdata 性能监控
    PACKAGES="$PACKAGES luci-i18n-nextdns-zh-cn luci-app-nextdns"                 # NextDNS 广告拦截
    PACKAGES="$PACKAGES luci-i18n-nfs-zh-cn luci-app-nfs"                         # NFS 共享
    PACKAGES="$PACKAGES luci-i18n-nft-qos-zh-cn luci-app-nft-qos"                 # nftables QoS
    PACKAGES="$PACKAGES luci-i18n-ngrokc-zh-cn luci-app-ngrokc"                   # Ngrok 内网穿透客户端
    PACKAGES="$PACKAGES luci-i18n-nlbwmon-zh-cn luci-app-nlbwmon"                 # 实时带宽监控
    PACKAGES="$PACKAGES luci-i18n-nps-zh-cn luci-app-nps"                         # NPS 内网穿透服务端
    PACKAGES="$PACKAGES luci-i18n-nut-zh-cn luci-app-nut"                         # 网络 UPS 工具
    PACKAGES="$PACKAGES luci-i18n-ocserv-zh-cn luci-app-ocserv"                   # OpenConnect VPN 服务端
    PACKAGES="$PACKAGES luci-i18n-oled-zh-cn luci-app-oled"                       # OLED 屏幕显示
    PACKAGES="$PACKAGES luci-i18n-olsr-zh-cn luci-app-olsr"                       # OLSR 路由协议
    PACKAGES="$PACKAGES luci-i18n-olsr-services-zh-cn luci-app-olsr-services"     # OLSR 服务插件
    PACKAGES="$PACKAGES luci-i18n-olsr-viz-zh-cn luci-app-olsr-viz"               # OLSR 网络可视化
    PACKAGES="$PACKAGES luci-i18n-omcproxy-zh-cn luci-app-omcproxy"               # IGMP 代理
    PACKAGES="$PACKAGES luci-i18n-openlist-zh-cn luci-app-openlist"               # 开放列表（网速排行榜）
    PACKAGES="$PACKAGES luci-i18n-openwisp-zh-cn luci-app-openwisp"               # OpenWISP 集中管理客户端
    PACKAGES="$PACKAGES luci-i18n-oscam-zh-cn luci-app-oscam"                     # OSCam 卡片服务器
    PACKAGES="$PACKAGES luci-i18n-p910nd-zh-cn luci-app-p910nd"                   # 打印服务器
    PACKAGES="$PACKAGES luci-i18n-pagekitec-zh-cn luci-app-pagekitec"             # PageKite 内网穿透
    PACKAGES="$PACKAGES luci-i18n-pbr-zh-cn luci-app-pbr"                         # 策略路由
    PACKAGES="$PACKAGES luci-i18n-pppoe-relay-zh-cn luci-app-pppoe-relay"         # PPPoE 中继
    PACKAGES="$PACKAGES luci-i18n-pppoe-server-zh-cn luci-app-pppoe-server"       # PPPoE 服务端
    PACKAGES="$PACKAGES luci-i18n-privoxy-zh-cn luci-app-privoxy"                 # Privoxy 网页过滤
    PACKAGES="$PACKAGES luci-i18n-ps3netsrv-zh-cn luci-app-ps3netsrv"             # PS3 游戏加载
    PACKAGES="$PACKAGES luci-i18n-qbittorrent-zh-cn luci-app-qbittorrent"         # qBittorrent BT 下载
    PACKAGES="$PACKAGES luci-i18n-qos-zh-cn luci-app-qos"                         # QoS 流量控制
    PACKAGES="$PACKAGES luci-i18n-radicale-zh-cn luci-app-radicale"               # Radicale CalDAV/CardDAV
    PACKAGES="$PACKAGES luci-i18n-ramfree-zh-cn luci-app-ramfree"                 # 内存清理
    PACKAGES="$PACKAGES luci-i18n-rclone-zh-cn luci-app-rclone"                   # Rclone 网盘同步
    PACKAGES="$PACKAGES luci-i18n-rp-pppoe-server-zh-cn luci-app-rp-pppoe-server" # RP-PPPoE 服务端
    PACKAGES="$PACKAGES luci-i18n-rustdesk-server-zh-cn luci-app-rustdesk-server" # RustDesk 远程桌面服务端
    PACKAGES="$PACKAGES luci-i18n-samba4-zh-cn luci-app-samba4"                   # Samba4 文件共享
    PACKAGES="$PACKAGES luci-i18n-ser2net-zh-cn luci-app-ser2net"                 # 串口转网络
    PACKAGES="$PACKAGES luci-i18n-smartdns-zh-cn luci-app-smartdns"               # SmartDNS
    PACKAGES="$PACKAGES luci-i18n-sms-tool-js-zh-cn luci-app-sms-tool-js"         # SMS 短信工具（4G 模块）
    PACKAGES="$PACKAGES luci-i18n-snmpd-zh-cn luci-app-snmpd"                     # SNMP
    PACKAGES="$PACKAGES luci-i18n-softethervpn-zh-cn luci-app-softethervpn"       # SoftEther VPN
    PACKAGES="$PACKAGES luci-i18n-splash-zh-cn luci-app-splash"                   # 认证启动页
    PACKAGES="$PACKAGES luci-i18n-spotifyd-zh-cn luci-app-spotifyd"               # Spotifyd 音乐接收器
    PACKAGES="$PACKAGES luci-i18n-sqm-zh-cn luci-app-sqm"                         # SQM 智能队列管理
    PACKAGES="$PACKAGES luci-i18n-squid-zh-cn luci-app-squid"                     # Squid 代理缓存
    PACKAGES="$PACKAGES luci-i18n-sshtunnel-zh-cn luci-app-sshtunnel"             # SSH 隧道管理
    PACKAGES="$PACKAGES luci-i18n-statistics-zh-cn luci-app-statistics"           # 流量统计
    PACKAGES="$PACKAGES luci-i18n-syncthing-zh-cn luci-app-syncthing"             # Syncthing 文件同步
    PACKAGES="$PACKAGES luci-i18n-sysuh3c-zh-cn luci-app-sysuh3c"                 # 中山大学校园网认证
    PACKAGES="$PACKAGES luci-i18n-timewol-zh-cn luci-app-timewol"                 # 定时网络唤醒
    PACKAGES="$PACKAGES luci-i18n-tinyproxy-zh-cn luci-app-tinyproxy"             # TinyProxy 轻量 HTTP 代理
    PACKAGES="$PACKAGES luci-i18n-tor-zh-cn luci-app-tor"                         # Tor 匿名网络
    PACKAGES="$PACKAGES luci-i18n-transmission-zh-cn luci-app-transmission"       # Transmission BT 下载器
    PACKAGES="$PACKAGES luci-i18n-travelmate-zh-cn luci-app-travelmate"           # Travelmate WiFi 连接管理器
    PACKAGES="$PACKAGES luci-i18n-ttyd-zh-cn luci-app-ttyd"                       # ttyd 网页终端
    PACKAGES="$PACKAGES luci-i18n-ua2f-zh-cn luci-app-ua2f"                       # UA2F 用户代理伪装
    PACKAGES="$PACKAGES luci-i18n-udpxy-zh-cn luci-app-udpxy"                     # udpxy 组播转 HTTP
    PACKAGES="$PACKAGES luci-i18n-uhttpd-zh-cn luci-app-uhttpd"                   # uHTTPd Web 服务器
    PACKAGES="$PACKAGES luci-i18n-unbound-zh-cn luci-app-unbound"                 # Unbound DNS
    PACKAGES="$PACKAGES luci-i18n-upnp-zh-cn luci-app-upnp"                       # UPnP 即插即用
    PACKAGES="$PACKAGES luci-i18n-usb-printer-zh-cn luci-app-usb-printer"         # USB 打印机共享
    PACKAGES="$PACKAGES luci-i18n-usteer-zh-cn luci-app-usteer"                   # usteer WiFi 漫游辅助
    PACKAGES="$PACKAGES luci-i18n-v2raya-zh-cn luci-app-v2raya"                   # V2RayA 透明代理面板
    PACKAGES="$PACKAGES luci-i18n-vlmcsd-zh-cn luci-app-vlmcsd"                   # KMS 激活服务器
    PACKAGES="$PACKAGES luci-i18n-vnstat2-zh-cn luci-app-vnstat2"                 # vnStat2 流量统计
    PACKAGES="$PACKAGES luci-i18n-vsftpd-zh-cn luci-app-vsftpd"                   # vsftpd FTP 服务器
    PACKAGES="$PACKAGES luci-i18n-watchcat-zh-cn luci-app-watchcat"               # 看门狗（断线重启）
    PACKAGES="$PACKAGES luci-i18n-wechatpush-zh-cn luci-app-wechatpush"           # 微信推送（Server 酱）
    PACKAGES="$PACKAGES luci-i18n-wifischedule-zh-cn luci-app-wifischedule"       # WiFi 定时开关
    PACKAGES="$PACKAGES luci-i18n-wol-zh-cn luci-app-wol"                         # 网络唤醒
    PACKAGES="$PACKAGES luci-i18n-xfrpc-zh-cn luci-app-xfrpc"                     # xfrpc 内网穿透
    PACKAGES="$PACKAGES luci-i18n-xinetd-zh-cn luci-app-xinetd"                   # xinetd 服务管理
    PACKAGES="$PACKAGES luci-i18n-xlnetacc-zh-cn luci-app-xlnetacc"               # 校园网锐捷认证
    PACKAGES="$PACKAGES luci-i18n-zerotier-zh-cn luci-app-zerotier"               # ZeroTier 虚拟局域网

fi

export PACKAGES
