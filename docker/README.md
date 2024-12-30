docker pull --platform=linux/arm64 ghcr.io/sagernet/sing-box:latset
docker images 
# 查找镜像ID
docker images | grep sing-box

docker save xxxxxxx > sing-box-yjs.tar


docker pull --platform=linux/arm64 ghcr.io/sagernet/sing-box:v1.11.0-beta.15
docker pull --platform=linux/arm64 ghcr.io/sagernet/sing-box:v1.10.5
docker pull --platform=linux/arm64 tinyserve/clash:latset




-D /var/lib/sing-box -C /etc/sing-box run
usb1/singbox-yjs


