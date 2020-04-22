# Kingfisher Kubectl
[![License](https://img.shields.io/badge/license-Apache%202-4EB1BA.svg)](https://www.apache.org/licenses/LICENSE-2.0.html)
[![Go Report Card](https://goreportcard.com/badge/github.com/open-kingfisher/king-kubectl)](https://goreportcard.com/report/github.com/open-kingfisher/king-kubectl)

在平台页面直接使用Kubectl命令行工具管理Kubernetes集群

![image](screenshots/kubectl.gif)

## 依赖

- Golang： `Go >= 1.13`

## 使用说明

- 项目中king-kubectl.sh 文件中有下载kubectl 二进制文件的命令，如果不能下载或者下载慢，**强烈建议**提前下载好，放到自己的Web服务上面，并替换如下命令。
>```Bash
>curl -LO https://storage.googleapis.com/kubernetes-release/release/$KUBECTL_VERSION/bin/linux/amd64/kubectl
>```
- $KUBECTL_VERSION 此环境变量是根据Kubernetes集群版本自动创建的
- 项目中kubectl目录里面有部分kubectl二进制文件，将不定期更新
- [kubectl releases](https://github.com/kubernetes/kubectl/releases)

## Makefile的使用

- 根据需求修改对应的REGISTRY变量，即可修改推送的仓库地址
- 编译成二进制文件： make build
- 生成镜像推送到镜像仓库： make push

