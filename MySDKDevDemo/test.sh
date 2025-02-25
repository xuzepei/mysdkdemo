echo "#### 9. replace the old xcframework file for MySDKDemo"

PROJECT_DIR="."

# 我们framework的名字是和项目名一样的，如果不一样的的话，可以单独设置。
framework_name=MySDK

# 导出xcframework的路径
output_path=${PROJECT_DIR}/${framework_name}_XCFramework

# 源文件路径
SOURCE_PATH="${output_path}/${framework_name}.xcframework"
# 目标文件路径
DEST_PATH="../${framework_name}.xcframework"

echo "#### SOURCE_PATH: ${SOURCE_PATH}"
echo "#### DEST_PATH: ${DEST_PATH}"

rm -rf "$DEST_PATH"
# 拷贝并替换文件（使用 -f 强制覆盖）
cp -rf "$SOURCE_PATH" "$DEST_PATH"



echo "#### 10. ${framework_name}.xcframework copied and replaced successfully. 🍺🍺🍺"