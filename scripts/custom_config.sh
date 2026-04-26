#!/bin/bash

TARGET_DEVICE="${TARGET_DEVICE:-}"

# 检测是否为 x86 构建设备（Profile 名称包含 "x86-64"）
if [[ "$TARGET_DEVICE" == *"x86-64"* ]]; then
    echo "为 x86-64-ISO 增加专属软件包..."
    # 添加你想要的包
    PACKAGES="$PACKAGES luci-app-passwall luci-i18n-passwall-zh-cn"
    PACKAGES="$PACKAGES luci-app-adguardhome"
    # 移除不需要的包
    #PACKAGES="$PACKAGES -luci-app-vsftpd"
fi

export PACKAGES
