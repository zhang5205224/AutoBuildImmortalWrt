!/bin/bash
# ============= imm仓库外的第三方插件==============
# ============= 若启用 则打开注释 ================
# ============= 但此文件也可以处理仓库内的软件去留 本质上是做了一个PACKAGES字符串的拼接 ================

# 各位注意 如果你构建的固件是硬路由 此文件的注释要酌情考虑是否打开 因为硬路由的闪存空间有限 若构建出来过大或者构建失败 记得调整本文件的注释
# 考虑到istore商店的集成与否 属于高频操作 故 目前已将集成store的操作放置在 工作流的UI 选项 用户自行勾选 则集成  不勾选则不集成 以减少修改此文件的次数

# 首页和网络向导
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-quickstart-zh-cn"
# 高级卸载 by YT Vedio Talk
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-uninstall"
# 极光主题 by github eamonxg
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-theme-aurora luci-app-aurora-config luci-i18n-aurora-config-zh-cn"
# 去广告adghome
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-adguardhome"
# 代理相关
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-openvpn-server luci-i18n-openvpn-server-zh-cn" # OpenVPN 服务端 + 中文包
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-openvpn-zh-cn"                               # OpenVPN 客户端中文包
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-dae-zh-cn"                                   # Dae 代理核心中文包（大鹅）
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-daed-zh-cn"                                  # Daed 代理守护进程中文包
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-passwall-zh-cn"                              # PassWall 代理工具中文包
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-ssr-plus"                                     # SSR-Plus 代理插件
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-passwall2"                                    # PassWall 2 代理插件
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-nikki-zh-cn"                                 # Nikki 代理插件中文包
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-nekobox"                                      # Nekobox 代理插件
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES momo luci-app-momo luci-i18n-momo-zh-cn"               # Momo 代理插件及其组件和中文包
# 同样是代理相关 但以下2个属于imm仓库内的软件 一般在build24.sh中已经集成 你也可以在此处调整它的去留 若去除组件则使用减号- 若添加则 不使用减号 或者 不处理
CUSTOM_PACKAGES="$CUSTOM_PACKAGES -luci-app-openclash"                                   # 移除 OpenClash 代理插件
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES -luci-i18n-homeproxy-zh-cn"                            # 移除 HomeProxy 代理插件中文包
# VPN
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-tailscale luci-i18n-tailscale-zh-cn"
# 分区扩容 by sirpdboy 
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-partexp luci-i18n-partexp-zh-cn"
# 看门狗watchdog by sirpdboy
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-watchdog luci-i18n-watchdog-zh-cn"
# 酷猫主题 by sirpdboy 
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-theme-kucat"
# 进阶设置 by sirpdboy 
# 当luci-app-advancedplus插件开启时 需排除冲突项 luci-app-argon-config和luci-i18n-argon-config-zh-cn 减号代表排除
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-advancedplus luci-i18n-advancedplus-zh-cn -luci-app-argon-config -luci-i18n-argon-config-zh-cn"
# MosDNS
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-mosdns luci-i18n-mosdns-zh-cn"
# Turbo ACC 网络加速
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-turboacc"
# 应用过滤 openappfilter.com
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-appfilter luci-i18n-appfilter-zh-cn"
# 设置向导 by sirpdboy
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-netwizard luci-i18n-netwizard-zh-cn"
# Lucky大吉 
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-lucky lucky"
# 集客AC
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-gecoosac gecoosac"
# 任务设置
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-taskplan luci-i18n-taskplan-zh-cn"
# Easytier
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES easytier luci-app-easytier"
# 统一文件共享
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES webdav2 luci-app-unishare"
# IPSec VPN 服务器
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-ipsec-vpnd-zh-cn"
# Bandix流量监控 by timsaya
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-bandix luci-i18n-bandix-zh-cn"
# IPTV 流媒体转发服务器 - rtp2httpd by stackia
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-rtp2httpd luci-i18n-rtp2httpd-zh-cn"
# 静态文件服务器dufs
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-dufs-zh-cn"

#===========================以下imm仓库内的软件==============================↓
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-3cat-zh-cn"                          # 3Cat（多线程下载工具）
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-3ginfo-lite-zh-cn"                   # 3G/4G 上网卡信息显示（轻量版）
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-acl-zh-cn"                           # 访问控制列表
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-acme-zh-cn"                          # ACME 证书自动化申请（Let's Encrypt）
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-adblock-fast-zh-cn"                  # 广告拦截（快速版）
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-adblock-zh-cn"                       # 广告拦截（标准版）
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-advanced-reboot-zh-cn"               # 高级重启
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-airplay2-zh-cn"                      # AirPlay 2 音频接收器
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-amule-zh-cn"                         # aMule（电驴客户端）
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-appfilter-zh-cn"                     # 应用过滤
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-aria2-zh-cn"                         # Aria2 下载管理器
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-arpbind-zh-cn"                       # ARP 绑定
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-attendedsysupgrade-zh-cn"            # 有人值守系统升级
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-autoreboot-zh-cn"                    # 自动重启
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-banip-zh-cn"                         # IP 封禁
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-battstatus-zh-cn"                    # 电池状态显示（适用于笔记本/移动设备）
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-bcp38-zh-cn"                         # BCP38 入向源地址过滤
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-bitsrunlogin-go-zh-cn"               # 某校园网认证客户端（Go版本）
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-bmx7-zh-cn"                          # BMX7 动态路由协议
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-cd8021x-zh-cn"                       # 802.1X 有线认证客户端
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-cifs-mount-zh-cn"                    # CIFS/SMB 网络共享挂载
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-clamav-zh-cn"                        # ClamAV 杀毒引擎
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-cloudflared-zh-cn"                   # Cloudflare DNS over HTTPS 隧道
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-commands-zh-cn"                      # 命令执行面板
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-coovachilli-zh-cn"                   # CoovaChilli 强制门户/认证热点
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-cpulimit-zh-cn"                      # CPU 使用率限制
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-crowdsec-firewall-bouncer-zh-cn"     # CrowdSec 防火墙联动组件
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-cshark-zh-cn"                        # CloudShark 抓包分析上传工具
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-dashboard-zh-cn"                     # 仪表盘增强
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-dawn-zh-cn"                          # 分布式 WiFi 控制器
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-dcwapd-zh-cn"                        # 无线认证守护进程
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-ddns-go-zh-cn"                       # DDNS-GO 动态域名解析（Go版）
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-ddns-zh-cn"                          # 动态 DNS（标准版）
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-diskman-zh-cn"                       # 磁盘管理器
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-dsl-zh-cn"                           # DSL 宽带控制
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-dump1090-zh-cn"                      # ADS-B 航班追踪解码器
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-dynapoint-zh-cn"                     # 动态接入点管理
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-email-zh-cn"                         # 邮件发送客户端
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-eoip-zh-cn"                          # EoIP 隧道
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-eqos-zh-cn"                          # 简易 QoS
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-example-zh-cn"                       # Luci 应用示例（开发者用）
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-filebrowser-go-zh-cn"                # FileBrowser 网页文件管理器（Go版）
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-filebrowser-zh-cn"                   # FileBrowser（标准版）
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-filemanager-zh-cn"                   # 文件管理器
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-frpc-zh-cn"                          # FRP 内网穿透客户端
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-frps-zh-cn"                          # FRP 内网穿透服务端
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-fwknopd-zh-cn"                       # fwknop 单包授权端口敲门
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-gost-zh-cn"                          # GOST 隧道代理
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-haproxy-tcp-zh-cn"                   # HAProxy TCP 负载均衡
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-hd-idle-zh-cn"                       # 硬盘空闲休眠
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-https-dns-proxy-zh-cn"               # HTTPS DNS 代理
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-ipsec-vpnd-zh-cn"                    # IPSec VPN 服务端
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-irqbalance-zh-cn"                    # IRQ 中断均衡
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-keepalived-zh-cn"                    # Keepalived 高可用
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-ksmbd-zh-cn"                         # Ksmbd 内核级 SMB 服务
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-lldpd-zh-cn"                         # LLDP 链路层发现协议
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-lxc-zh-cn"                           # LXC 容器管理
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-microsocks-zh-cn"                    # MicroSocks 轻量 SOCKS5 代理
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-minidlna-zh-cn"                      # MiniDLNA 流媒体服务器
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-minieap-zh-cn"                       # MiniEAP 校园网认证
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-mjpg-streamer-zh-cn"                 # MJPG-Streamer 摄像头视频流
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-modemband-zh-cn"                     # 4G 模块频段锁定
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-mosquitto-zh-cn"                     # Mosquitto MQTT 代理
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-msd_lite-zh-cn"                      # MSD Lite 组播转单播（IPTV）
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-music-remote-center-zh-cn"           # 音乐远程控制中心
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-mwan3-zh-cn"                         # MWAN3 多线负载均衡
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-n2n-zh-cn"                           # N2N P2P VPN
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-natmap-zh-cn"                        # NATMap 端口映射穿透
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-netdata-zh-cn"                       # Netdata 实时性能监控
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-nextdns-zh-cn"                       # NextDNS 广告拦截 DNS
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-nfs-zh-cn"                           # NFS 共享服务
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-nft-qos-zh-cn"                       # nftables QoS 流控
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-ngrokc-zh-cn"                        # Ngrok 内网穿透客户端
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-nlbwmon-zh-cn"                       # 实时带宽监控
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-nps-zh-cn"                           # NPS 内网穿透服务端
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-nut-zh-cn"                           # 网络 UPS 工具
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-ocserv-zh-cn"                        # OpenConnect VPN 服务端（AnyConnect）
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-oled-zh-cn"                          # OLED 屏幕显示工具
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-olsr-services-zh-cn"                 # OLSR 服务插件
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-olsr-viz-zh-cn"                      # OLSR 网络可视化
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-olsr-zh-cn"                          # OLSR 路由协议
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-omcproxy-zh-cn"                      # IGMP 代理
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-openlist-zh-cn"                      # 开放列表（网速排行榜）
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-openwisp-zh-cn"                      # OpenWISP 集中管理客户端
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-oscam-zh-cn"                         # OSCam 卡片服务器（卫星电视）
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-p910nd-zh-cn"                        # 打印服务器（9100端口）
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-pagekitec-zh-cn"                     # PageKite 内网穿透
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-pbr-zh-cn"                           # 策略路由（Policy Based Routing）
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-pppoe-relay-zh-cn"                   # PPPoE 中继代理
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-pppoe-server-zh-cn"                  # PPPoE 服务端
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-privoxy-zh-cn"                       # Privoxy 网页过滤代理
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-ps3netsrv-zh-cn"                     # PS3 游戏加载服务器
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-qbittorrent-zh-cn"                   # qBittorrent BT 下载器
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-qos-zh-cn"                           # QoS 流量控制
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-radicale-zh-cn"                      # Radicale CalDAV/CardDAV 服务器
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-ramfree-zh-cn"                       # 内存清理
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-rclone-zh-cn"                        # Rclone 网盘同步
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-rp-pppoe-server-zh-cn"               # RP-PPPoE 服务端
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-rustdesk-server-zh-cn"               # RustDesk 远程桌面服务端
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-samba4-zh-cn"                        # Samba4 文件共享
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-ser2net-zh-cn"                       # 串口转网络
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-smartdns-zh-cn"                      # SmartDNS 智能 DNS 解析
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-sms-tool-js-zh-cn"                   # SMS 短信工具（EC20/4G模块）
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-snmpd-zh-cn"                         # SNMP 网络管理协议
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-softethervpn-zh-cn"                  # SoftEther VPN
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-splash-zh-cn"                        # 认证启动页/广告页
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-spotifyd-zh-cn"                      # Spotifyd 音乐接收器
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-sqm-zh-cn"                           # SQM 智能队列管理（QoS）
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-squid-zh-cn"                         # Squid 代理缓存服务器
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-sshtunnel-zh-cn"                     # SSH 隧道管理
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-statistics-zh-cn"                    # 流量统计（基于collectd）
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-syncthing-zh-cn"                     # Syncthing 文件同步
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-sysuh3c-zh-cn"                       # 中山大学校园网认证（H3C 兼容）
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-timewol-zh-cn"                       # 定时网络唤醒
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-tinyproxy-zh-cn"                     # TinyProxy 轻量 HTTP 代理
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-tor-zh-cn"                           # Tor 匿名网络
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-transmission-zh-cn"                  # Transmission BT 下载器
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-travelmate-zh-cn"                    # Travelmate 自动 WiFi 连接管理器
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-ttyd-zh-cn"                          # ttyd 网页终端
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-ua2f-zh-cn"                          # UA2F 用户代理伪装
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-udpxy-zh-cn"                         # udpxy 组播转 HTTP 流
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-uhttpd-zh-cn"                        # uHTTPd Web 服务器
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-unbound-zh-cn"                       # Unbound DNS 解析器
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-upnp-zh-cn"                          # UPnP 即插即用
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-usb-printer-zh-cn"                   # USB 打印机共享
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-usteer-zh-cn"                        # usteer WiFi 漫游辅助
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-v2raya-zh-cn"                        # V2RayA 透明代理面板
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-vlmcsd-zh-cn"                        # vlmcsd KMS 激活服务器
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-vnstat2-zh-cn"                       # vnStat2 流量统计
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-vsftpd-zh-cn"                        # vsftpd FTP 服务器
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-watchcat-zh-cn"                      # 看门狗（网络断线自动重启）
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-wechatpush-zh-cn"                    # 微信推送（Server酱）
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-wifischedule-zh-cn"                  # WiFi 定时开关
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-wol-zh-cn"                           # 网络唤醒
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-xfrpc-zh-cn"                         # xfrpc 内网穿透
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-xinetd-zh-cn"                        # xinetd 服务管理
#CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-xlnetacc-zh-cn"                      # 校园网锐捷认证
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-i18n-zerotier-zh-cn"                      # ZeroTier 虚拟局域网客户端
