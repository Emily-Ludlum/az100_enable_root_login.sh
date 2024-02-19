#!/bin/bash

# 初始化root用户密码
sudo passwd root

# 修改sshd_config文件
sudo sed -i '/^#PermitRootLogin/s/^#//' /etc/ssh/sshd_config
sudo sed -i '/^PermitRootLogin/s/prohibit-password/yes/' /etc/ssh/sshd_config

# 重启SSH服务
sudo service ssh restart

echo "已完成设置，root用户现在可以使用密码登录。"
