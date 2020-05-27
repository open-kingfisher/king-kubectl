#!/bin/sh

[ "$KUBECTL_URL" ] || https://storage.googleapis.com/kubernetes-release/release/$KUBECTL_VERSION/bin/linux/amd64/kubectl
[ "$TIME_ZONE" ] || TIME_ZONE="Asia/Shanghai"
[ "$ALPINE_REPO" ] || ALPINE_REPO="mirrors.aliyun.com"

sed -i 's/dl-cdn.alpinelinux.org/${ALPINE_REPO}/g' /etc/apk/repositories     
apk --no-cache add tzdata 
echo "${TIME_ZONE}" > /etc/timezone 
ln -sf /usr/share/zoneinfo/${TIME_ZONE} /etc/localtime 
mkdir /lib64 
ln -s /lib/libc.musl-x86_64.so.1 /lib64/ld-linux-x86-64.so.2
 
# Get the kubectl binary.
curl -LO $KUBECTL_URL

# Make the kubectl binary executable.
chmod +x  ./kubectl

# Move the kubectl executable to /usr/bin.
mv ./kubectl /usr/bin/kubectl

/usr/local/bin/king-kubectl
