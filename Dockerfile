# 使用 Ubuntu 20.04 作为基础镜像
FROM ubuntu:20.04

# 避免时区选择交互式问题
ENV DEBIAN_FRONTEND=noninteractive

# 更新 Ubuntu 的软件包列表
RUN apt-get update

# 安装 Python 和 pip
RUN apt-get install -y python3 python3-pip

# 设置 Python 3 为默认
RUN update-alternatives --install /usr/bin/python python /usr/bin/python3 1
RUN update-alternatives --install /usr/bin/pip pip /usr/bin/pip3 1

# 创建一个工作目录
WORKDIR /app
