#!/bin/bash
# ============= imm 25.12.x仓库外的第三方插件apk==========
# ============= 若启用 则打开注释 ========================
# ============= 但此文件也可以处理仓库内的软件去留 本质上是做了一个PACKAGES字符串的拼接 ================

# 各位注意 如果你构建的固件是硬路由 此文件的注释要酌情考虑是否打开 因为硬路由的闪存空间有限 若构建出来过大或者构建失败 记得调整本文件的注释
# 首页和网络向导(注意此插件依赖于istore商店 若集成它 则连同集成了istore商店)
# luci-i18n-quickstart-zh-cn：快速入门向导中文语言包，提供开机引导与快速配置界面
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-quickstart-zh-cn"

# 新增Run安装器 用于快速安装makeself打包的run文件 目前和quickfile的nginx配置冲突 请勿同时集成quickfile
# luci-app-run：Run安装器，用于一键安装.run格式的软件包
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-run"

# 新增非常好用的文件管理器 by github sbwml
# bash：Bash命令行解释器（运行依赖）
# quickfile：QuickFile 文件管理器后端程序
# luci-app-quickfile：QuickFile 网页文件管理器插件
# luci-i18n-quickfile-zh-cn：QuickFile 中文语言包
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES bash quickfile luci-app-quickfile luci-i18n-quickfile-zh-cn"

# 极光主题和配置 by github eamonxg
# luci-theme-aurora：Aurora 极光主题，现代化UI界面风格
# luci-app-aurora-config：极光主题配置插件，自定义主题样式
# luci-i18n-aurora-config-zh-cn：极光主题配置中文语言包
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-theme-aurora luci-app-aurora-config luci-i18n-aurora-config-zh-cn"

# 分区扩容 by sirpdboy 
# luci-app-partexp：分区扩容工具，一键扩展系统分区大小
# luci-i18n-partexp-zh-cn：分区扩容工具中文语言包
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-partexp luci-i18n-partexp-zh-cn"

# 流量监控 by timsaya
# bandix：Bandix 流量监控后端程序，精准统计设备流量
# luci-app-bandix：Bandix 流量监控插件，图形化展示流量数据
# luci-i18n-bandix-zh-cn：Bandix 中文语言包
CUSTOM_PACKAGES="$CUSTOM_PACKAGES bandix luci-app-bandix luci-i18n-bandix-zh-cn"

# 新增ssrp apk
# kmod-nft-tproxy：nftables 透明代理内核模块
# kmod-nft-socket：nftables 套接字匹配内核模块
# xray-core：Xray 代理核心程序
# naiveproxy：NaiveProxy 代理程序
# luci-app-ssr-plus：SSR Plus+ 代理管理插件
# luci-i18n-ssr-plus-zh-cn：SSR Plus+ 中文语言包
CUSTOM_PACKAGES="$CUSTOM_PACKAGES kmod-nft-tproxy kmod-nft-socket xray-core naiveproxy luci-app-ssr-plus luci-i18n-ssr-plus-zh-cn"

# 新增passwall2 apk
# geoview：GeoIP/GeoSite 地理信息查看工具
# xray-core：Xray 代理核心程序
# sing-box：Sing-box 通用代理核心程序
# hysteria：Hysteria 高速代理程序
# kmod-nft-socket：nftables 套接字匹配内核模块
# kmod-nft-tproxy：nftables 透明代理内核模块
# luci-app-passwall2：PassWall 2 代理管理插件
# luci-i18n-passwall2-zh-cn：PassWall 2 中文语言包
CUSTOM_PACKAGES="$CUSTOM_PACKAGES geoview xray-core sing-box hysteria kmod-nft-socket kmod-nft-tproxy luci-app-passwall2 luci-i18n-passwall2-zh-cn"

# IPTV 流媒体转发服务器 - rtp2httpd by stackia
# luci-app-rtp2httpd：RTP 转 HTTP 流媒体转发服务，用于IPTV组流转单播
# luci-i18n-rtp2httpd-zh-cn：RTP转HTTP服务中文语言包
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-rtp2httpd luci-i18n-rtp2httpd-zh-cn"

# 新增 clashoo by kenzok8 注意若集成clashoo 则不能集成nikki 目前它们俩配置冲突
# clashoo：Clash 代理核心程序
# luci-app-clashoo：Clashoo 代理管理插件
# luci-i18n-clashoo-zh-cn：Clashoo 中文语言包
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES clashoo luci-app-clashoo luci-i18n-clashoo-zh-cn"

# 新增 Lucky大吉 by gdy666 & sirpdboy 
# lucky：Lucky 核心程序，集反向代理、DDNS、端口转发于一体
# luci-app-lucky：Lucky 大吉插件管理界面
# luci-i18n-lucky-zh-cn：Lucky 大吉中文语言包
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-lucky lucky luci-i18n-lucky-zh-cn"

# daed 升级到1.28.0
# luci-i18n-daed-zh-cn：DAED 透明代理插件中文语言包（基于eBPF的透明代理工具）
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-daed-zh-cn"

# 任务设置 by sirpdboy
# luci-app-taskplan：任务计划插件，支持定时执行自定义命令/脚本
# luci-i18n-taskplan-zh-cn：任务计划中文语言包
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-taskplan luci-i18n-taskplan-zh-cn"

# MosDNS
# luci-app-mosdns：MosDNS DNS管理插件，支持DNS分流、广告过滤
# luci-i18n-mosdns-zh-cn：MosDNS 中文语言包
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-mosdns luci-i18n-mosdns-zh-cn"


# 仓库内代理相关apk
# luci-i18n-nikki-zh-cn：Nikki 代理插件中文语言包（新一代代理管理工具）
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-nikki-zh-cn"

#luci-app-openvpn-server 配置文件存在bug 因此请勿集成 避免报错 但你可以集成luci-i18n-openvpn-zh-cn
# luci-i18n-openvpn-zh-cn：OpenVPN 虚拟专用网络中文语言包
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-openvpn-zh-cn"

# luci-i18n-dae-zh-cn：DAE 透明代理插件中文语言包（基于eBPF）
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-dae-zh-cn"

# luci-i18n-homeproxy-zh-cn：HomeProxy 居家代理插件中文语言包
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-homeproxy-zh-cn"

# geoview：GeoIP/GeoSite 地理信息查看工具
# xray-core：Xray 代理核心程序
# sing-box：Sing-box 通用代理核心程序
# hysteria：Hysteria 高速代理程序
# luci-i18n-passwall-zh-cn：PassWall 代理插件中文语言包
CUSTOM_PACKAGES="$CUSTOM_PACKAGES geoview xray-core sing-box hysteria luci-i18n-passwall-zh-cn"

# luci-app-openclash：OpenClash 代理管理插件
# luci-compat：LuCI 兼容层，兼容旧版插件接口
# kmod-tun：TUN 虚拟网卡内核模块
# kmod-inet-diag：网络诊断内核模块
# kmod-nft-tproxy：nftables 透明代理内核模块
# bash：Bash 命令行解释器
# curl：网络数据传输工具
# ip-full：完整 IP 工具集
# unzip：Zip 压缩包解压工具
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-openclash luci-compat kmod-tun kmod-inet-diag kmod-nft-tproxy bash curl ip-full unzip"

# VPN
# luci-proto-wireguard：WireGuard VPN 协议支持
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-proto-wireguard"

# luci-app-tailscale-community：Tailscale 社区版插件，组建虚拟局域网
# luci-i18n-tailscale-community-zh-cn：Tailscale 社区版中文语言包
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-tailscale-community luci-i18n-tailscale-community-zh-cn"

# 内网穿透
# luci-i18n-zerotier-zh-cn：ZeroTier 内网穿透中文语言包
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-zerotier-zh-cn"

# luci-i18n-frpc-zh-cn：FRP 客户端内网穿透中文语言包
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-frpc-zh-cn"

# luci-i18n-frps-zh-cn：FRP 服务端内网穿透中文语言包
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-frps-zh-cn"

# luci-i18n-ddns-go-zh-cn：ddns-go 动态域名解析中文语言包
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-ddns-go-zh-cn"

# luci-i18n-ddns-zh-cn：系统自带 DDNS 动态域名中文语言包
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-ddns-zh-cn"

# luci-i18n-ngrokc-zh-cn：Ngrok 客户端内网穿透中文语言包
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-ngrokc-zh-cn"

# luci-i18n-nps-zh-cn：NPS 内网穿透插件中文语言包
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-nps-zh-cn"

# luci-i18n-xfrpc-zh-cn：XFRP 客户端内网穿透中文语言包
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-xfrpc-zh-cn"

# 网盘聚合
# luci-i18n-openlist-zh-cn：OpenList 网盘聚合插件中文语言包
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-openlist-zh-cn"

# 文件管理
# luci-i18n-filebrowser-go-zh-cn：FileBrowser Go版文件管理器中文语言包
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-filebrowser-go-zh-cn"

# luci-i18n-filebrowser-zh-cn：FileBrowser 文件管理器中文语言包
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-filebrowser-zh-cn"

# luci-i18n-filemanager-zh-cn：系统自带文件管理器中文语言包
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-filemanager-zh-cn"

# 网络唤醒
# luci-i18n-timewol-zh-cn：定时网络唤醒中文语言包
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-timewol-zh-cn"

# luci-i18n-wol-zh-cn：网络唤醒中文语言包
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-wol-zh-cn"

# 自定义命令
# luci-i18n-commands-zh-cn：自定义命令插件中文语言包
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-commands-zh-cn"


#===========================以下imm仓库内的软件==============================↓
# 3CAT 网络质量检测工具中文语言包，支持三网测速、延迟检测
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-3cat-zh-cn"

# 3G/4G 模块信息轻量版中文语言包，查看移动网络模块状态
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-3ginfo-lite-zh-cn"

# 访问控制列表(ACL)中文语言包，控制设备网络访问权限
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-acl-zh-cn"

# ACME 自动申请SSL证书中文语言包，支持Let's Encrypt免费证书
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-acme-zh-cn"

# AdBlock Fast 快速广告过滤中文语言包，轻量型广告拦截
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-adblock-fast-zh-cn"

# AdBlock 广告过滤中文语言包，功能完整的广告拦截插件
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-adblock-zh-cn"

# 高级重启中文语言包，支持定时重启、按配置重启
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-advanced-reboot-zh-cn"

# AirPlay 2 投屏接收中文语言包，将设备变为AirPlay音频接收端
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-airplay2-zh-cn"

# aMule 电驴下载中文语言包，eDonkey网络P2P下载工具
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-amule-zh-cn"

# 应用过滤中文语言包，可封禁指定APP、游戏的网络访问
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-appfilter-zh-cn"

# Aria2 下载工具中文语言包，支持HTTP/BT/磁力等多协议下载
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-aria2-zh-cn"

# ARP 绑定中文语言包，IP与MAC地址绑定，防止ARP欺骗
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-arpbind-zh-cn"

# 在线系统升级中文语言包，支持增量升级、保留配置升级
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-attendedsysupgrade-zh-cn"

# 定时重启中文语言包，简单的定时重启路由器功能
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-autoreboot-zh-cn"

# BanIP IP封禁中文语言包，自动封禁恶意IP地址
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-banip-zh-cn"

# 电池状态中文语言包，用于查看带电池设备的电量状态
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-battstatus-zh-cn"

# BCP38 网络过滤中文语言包，防止源地址欺骗的入站过滤
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-bcp38-zh-cn"

# 北华大学校园网认证中文语言包，北华大学校园网自动登录
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-bitsrunlogin-go-zh-cn"

# BMX7 路由协议中文语言包，网状网络路由协议配置
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-bmx7-zh-cn"

# 802.1X 认证中文语言包，企业级网络接入认证
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-cd8021x-zh-cn"

# CIFS 挂载中文语言包，挂载Windows共享文件夹
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-cifs-mount-zh-cn"

# ClamAV 杀毒软件中文语言包，开源防病毒扫描工具
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-clamav-zh-cn"

# Cloudflare Tunnel 隧道中文语言包，Cloudflare零信任内网穿透
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-cloudflared-zh-cn"

# CoovaChilli 热点认证中文语言包，Portal页面式WiFi热点认证
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-coovachilli-zh-cn"

# CPU 限制中文语言包，限制进程CPU使用率，防止占满
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-cpulimit-zh-cn"

# CrowdSec 防火墙中文语言包，协作式恶意IP封禁系统
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-crowdsec-firewall-bouncer-zh-cn"

# cshark 网络抓包中文语言包，网页端轻量网络抓包工具
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-cshark-zh-cn"

# 仪表盘中文语言包，系统状态概览仪表盘
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-dashboard-zh-cn"

# Dawn 无线网络管理中文语言包，优化WiFi漫游与频段管理
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-dawn-zh-cn"

# DCWAPD 无线控制器中文语言包，集中管理多个无线AP
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-dcwapd-zh-cn"

# 磁盘管理中文语言包，管理硬盘分区、挂载、格式化
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-diskman-zh-cn"

# DSL 调制解调器中文语言包，ADSL/VDSL宽带配置
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-dsl-zh-cn"

# Dump1090 ADS-B接收中文语言包，接收民航飞机ADS-B信号
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-dump1090-zh-cn"

# 动态端点中文语言包，动态更新IP的端口转发/隧道配置
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-dynapoint-zh-cn"

# 邮件服务中文语言包，SMTP邮件发送与通知配置
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-email-zh-cn"

# EoIP 以太网隧道中文语言包，二层以太网隧道协议
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-eoip-zh-cn"

# EQoS 流量控制中文语言包，基于IP的带宽限速与优先级
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-eqos-zh-cn"

# 示例插件中文语言包，LuCI插件开发示例模板
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-example-zh-cn"

# Fwknopd 端口敲门中文语言包，通过特定数据包序列开启端口
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-fwknopd-zh-cn"

# GOST 代理中文语言包，GO语言实现的多协议代理工具
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-gost-zh-cn"

# HAProxy TCP代理中文语言包，TCP/UDP负载均衡与反向代理
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-haproxy-tcp-zh-cn"

# 硬盘空闲休眠中文语言包，硬盘空闲时自动休眠省电
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-hd-idle-zh-cn"

# HTTPS DNS代理中文语言包，DoH加密DNS解析
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-https-dns-proxy-zh-cn"

# IPsec VPN 中文语言包，IPsec协议虚拟专用网络
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-ipsec-vpnd-zh-cn"

# 中断平衡中文语言包，均衡CPU硬件中断，提升性能
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-irqbalance-zh-cn"

# Keepalived 高可用中文语言包，双机热备与故障转移
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-keepalived-zh-cn"

# KSamba 文件共享中文语言包，内核级Samba文件共享服务
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-ksmbd-zh-cn"

# LLDP 链路发现中文语言包，链路层发现协议，识别网络拓扑
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-lldpd-zh-cn"

# LXC 容器中文语言包，轻量级Linux系统容器
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-lxc-zh-cn"

# MicroSocks 微型代理中文语言包，轻量Socks5代理服务
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-microsocks-zh-cn"

# MiniDLNA 媒体服务中文语言包，DLNA局域网媒体共享
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-minidlna-zh-cn"

# MiniEAP 校园网认证中文语言包，支持锐捷、深澜等校园网认证
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-minieap-zh-cn"

# MJPG-Streamer 视频流中文语言包，USB摄像头网络视频流
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-mjpg-streamer-zh-cn"

# 调制解调器频段管理中文语言包，设置4G/5G模块工作频段
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-modemband-zh-cn"

# Mosquitto MQTT中文语言包，MQTT消息代理服务，物联网常用
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-mosquitto-zh-cn"

# MSD Lite 轻量组播代理中文语言包，IPTV组播转单播轻量版
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-msd_lite-zh-cn"

# 音乐遥控中心中文语言包，统一控制多个音乐播放设备
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-music-remote-center-zh-cn"

# MWAN3 多WAN负载均衡中文语言包，多宽带叠加与故障转移
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-mwan3-zh-cn"

# N2N 虚拟局域网中文语言包，点对点组建虚拟局域网
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-n2n-zh-cn"

# NATMap 端口映射中文语言包，全自动端口映射与打洞
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-natmap-zh-cn"

# Netdata 系统监控中文语言包，实时系统性能监控仪表盘
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-netdata-zh-cn"

# NextDNS 中文语言包，NextDNS加密DNS与广告过滤
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-nextdns-zh-cn"

# NFS 文件共享中文语言包，Linux网络文件系统共享
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-nfs-zh-cn"

# nftables QoS 中文语言包，基于nftables的流量控制
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-nft-qos-zh-cn"

# NLBWmon 带宽监控中文语言包，按IP统计带宽使用情况
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-nlbwmon-zh-cn"

# NUT UPS监控中文语言包，不间断电源状态监控
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-nut-zh-cn"

# OCServ AnyConnect VPN中文语言包，Cisco AnyConnect兼容VPN服务
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-ocserv-zh-cn"

# OLED 屏幕控制中文语言包，控制路由器OLED显示屏显示内容
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-oled-zh-cn"

# OLSR 路由协议服务中文语言包，优化链路状态路由协议服务
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-olsr-services-zh-cn"

# OLSR 路由可视化中文语言包，OLSR网络拓扑可视化
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-olsr-viz-zh-cn"

# OLSR 路由协议中文语言包，优化链路状态路由协议配置
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-olsr-zh-cn"

# OMCProxy 组播代理中文语言包，IGMP组播代理，用于IPTV
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-omcproxy-zh-cn"

# OpenWisp 集中管理中文语言包，OpenWisp网络设备集中管理平台
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-openwisp-zh-cn"

# OSCam 卫星卡共享中文语言包，卫星电视收视卡网络共享
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-oscam-zh-cn"

# P910nd USB打印服务器中文语言包，将USB打印机变为网络打印机
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-p910nd-zh-cn"

# PageKite 内网穿透中文语言包，PageKite内网穿透服务
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-pagekitec-zh-cn"

# PBR 策略路由中文语言包，基于规则的策略路由配置
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-pbr-zh-cn"

# PPPoE 中继中文语言包，透传PPPoE拨号报文
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-pppoe-relay-zh-cn"

# PPPoE 服务器中文语言包，搭建PPPoE拨号服务器
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-pppoe-server-zh-cn"

# Privoxy 代理中文语言包，带过滤功能的HTTP代理
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-privoxy-zh-cn"

# PS3 网络服务中文语言包，PS3游戏网络共享服务
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-ps3netsrv-zh-cn"

# qBittorrent BT下载中文语言包，BT/磁力下载工具
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-qbittorrent-zh-cn"

# QoS 流量控制中文语言包，传统iptables QoS流量管理
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-qos-zh-cn"

# Radicale 日历通讯录中文语言包，CalDAV/CardDAV同步服务
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-radicale-zh-cn"

# 内存释放中文语言包，手动释放系统缓存与内存
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-ramfree-zh-cn"

# Rclone 云盘同步中文语言包，多网盘挂载与同步工具
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-rclone-zh-cn"

# RP-PPPoE 服务器中文语言包，Roaring Penguin PPPoE服务端
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-rp-pppoe-server-zh-cn"

# RustDesk 服务端中文语言包，自建远程桌面服务端
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-rustdesk-server-zh-cn"

# Samba4 文件共享中文语言包，Windows风格文件/打印共享
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-samba4-zh-cn"

# Ser2Net 串口转网络中文语言包，将串口设备映射为网络端口
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-ser2net-zh-cn"

# SmartDNS DNS中文语言包，智能DNS分流与解析优化
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-smartdns-zh-cn"

# 短信工具中文语言包，4G/5G模块短信收发管理
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-sms-tool-js-zh-cn"

# SNMP 网络管理中文语言包，简单网络管理协议服务
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-snmpd-zh-cn"

# SoftEther VPN 中文语言包，多协议开源VPN服务
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-softethervpn-zh-cn"

# 热点认证页面中文语言包，WiFi热点Portal认证页面
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-splash-zh-cn"

# Spotifyd 服务端中文语言包，Spotify音乐播放服务端
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-spotifyd-zh-cn"

# SQM 智能队列管理中文语言包，网络拥塞控制，降低延迟
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-sqm-zh-cn"

# Squid 代理中文语言包，高性能HTTP缓存代理服务器
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-squid-zh-cn"

# SSH 隧道中文语言包，基于SSH的端口转发与隧道
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-sshtunnel-zh-cn"

# 系统统计中文语言包，网络、CPU、内存等数据统计图表
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-statistics-zh-cn"

# Syncthing 文件同步中文语言包，点对点跨设备文件同步
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-syncthing-zh-cn"

# 深澜校园网认证中文语言包，深澜H3C校园网自动登录
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-sysuh3c-zh-cn"

# TinyProxy 轻量代理中文语言包，轻量级HTTP代理服务
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-tinyproxy-zh-cn"

# Tor 匿名网络中文语言包，洋葱路由匿名访问网络
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-tor-zh-cn"

# Transmission BT下载中文语言包，轻量BT/磁力下载客户端
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-transmission-zh-cn"

# 旅行模式中文语言包，自动切换WiFi热点与无线中继
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-travelmate-zh-cn"

# TTYD 网页终端中文语言包，浏览器中使用命令行终端
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-ttyd-zh-cn"

# UA2F UA伪装中文语言包，修改HTTP User-Agent绕过运营商检测
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-ua2f-zh-cn"

# udpxy 组播转单播中文语言包，IPTV UDP组播转HTTP单播
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-udpxy-zh-cn"

# uHTTPd Web服务器中文语言包，OpenWrt默认Web服务器配置
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-uhttpd-zh-cn"

# Unbound DNS解析中文语言包，递归DNS解析服务器
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-unbound-zh-cn"

# UPnP 端口映射中文语言包，通用即插即用自动端口映射
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-upnp-zh-cn"

# USB 打印机中文语言包，USB打印机管理与共享
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-usb-printer-zh-cn"

# uSteer 无线漫游中文语言包，优化WiFi客户端漫游体验
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-usteer-zh-cn"

# V2rayA 代理中文语言包，V2Ray/Xray图形管理客户端
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-v2raya-zh-cn"

# KMS 激活服务中文语言包，Windows/Office KMS本地激活服务
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-vlmcsd-zh-cn"

# vnStat2 流量统计中文语言包，长期网络流量统计与图表
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-vnstat2-zh-cn"

# vsftpd FTP服务器中文语言包，轻量安全的FTP文件共享服务
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-vsftpd-zh-cn"

# Watchcat 看门狗中文语言包，网络异常时自动重启设备
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-watchcat-zh-cn"

# 微信推送中文语言包，通过微信发送设备状态与告警通知
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-wechatpush-zh-cn"

# WiFi定时中文语言包，定时开关WiFi无线电
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-wifischedule-zh-cn"

# xinetd 超级守护进程中文语言包，管理网络服务的守护进程
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-xinetd-zh-cn"

# 迅雷快鸟网络加速中文语言包，迅雷快鸟带宽提速服务
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-xlnetacc-zh-cn"
