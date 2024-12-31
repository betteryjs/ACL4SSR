#!/bin/bash

# 源文件夹路径
src_folder="./SSTap-Rule/rules"
# 目标文件夹路径
dst_folder="./Game/Netch"

# 检查源文件夹是否存在
if [ ! -d "$src_folder" ]; then
    echo "源文件夹 $src_folder 不存在。"
    exit 1
fi

# 检查目标文件夹是否存在，不存在则创建
 if [ ! -d "$dst_folder" ]; then
        mkdir -p "$dst_folder"
        echo "文件夹 $dst_folder 创建成功。"
    else
        echo "文件夹 $dst_folder 已存在。"
fi

for file in "$src_folder"/*.rules; do
    if [ -f "$file" ]; then
        # 获取文件名（不包含路径和后缀）
        file_name=$(basename "$file" ".rules")
        # 复制文件到目标文件夹并修改后缀
        cp "$file" "$dst_folder/$file_name.txt"
    fi
done
cp -r "./SSTap-Rule/rules" "Game/SStap"


git add .
git commit -m "fix Game"
git push origin master