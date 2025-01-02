#!/bin/bash

# 要打包的文件夹
folder_to_package="Game"
# 打包后的文件名
package_name="${folder_to_package}_rules.tar.gz"

# 检查要打包的文件夹是否存在
if [ ! -d "$folder_to_package" ]; then
    echo "要打包的文件夹 $folder_to_package 不存在。"
    exit 1
fi

# 打包文件夹
tar -czf "$package_name" "$folder_to_package"

echo "文件夹 $folder_to_package 已打包成 $package_name。"

# 假设你已经在项目的根目录，添加打包文件到暂存区
git add "$package_name"

# 提交更改，这里的提交信息可以根据实际情况修改
git commit -m "Add Game release package"

gh release delete v1.0.0 -y
# 创建一个新的GitHub Release，这里的版本号可以根据实际情况修改
gh release create v1.0.0 "$package_name" -t "v1.0.0" -n "
cdn: https://cdn-hub.naloong.de/https://github.com/betteryjs/ACL4SSR/releases/download/v1.0.0/Game_rules.tar.gz
"
