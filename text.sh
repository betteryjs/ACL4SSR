dst_folder="./Game/netch"
# 检查目标文件夹是否存在，不存在则创建


 if [ ! -d "$dst_folder" ]; then
        mkdir -p "$dst_folder"
        echo "文件夹 $dst_folder 创建成功。"
    else
        echo "文件夹 $dst_folder 已存在。"
fi