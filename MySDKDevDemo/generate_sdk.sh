# Type a script or drag a script file from your workspace to insert its path.
#!/bin/sh
# 如果脚本放进Xcode的run script中运行，可以不设置这个PROJECT_NAME，
# 因为它同时也是 Xcode 项目的全局变量，用于获取项目名。
#PROJECT_NAME=MySDK

# 获取项目根目录
#PROJECT_DIR="/Users/xuzepei/mysdkdemo/MySDKDevDemo"
PROJECT_DIR="."

# 输出当前项目目录
echo "#### 1. project directory: $PROJECT_DIR"

# 我们framework的名字是和项目名一样的，如果不一样的的话，可以单独设置。
project_name=MySDKDevDemo
framework_name=MySDKWork

# 导出xcframework的路径
output_path=${PROJECT_DIR}/${framework_name}_XCFramework

echo "#### 2. output_path: $output_path" 

# 模拟器的存档位置
simulator_archive_path=$output_path/simulator.xcarchive
# 真机的存档位置
iOS_device_archive_path=$output_path/iOS.xcarchive

echo "#### 3. clean old files"  

# 删除旧版，然后创建新版
rm -r $output_path
mkdir $output_path

echo "#### 4. start buliding for simulator"  

# 打包模拟器, 如果使用了Pod则需要添加-workspace $project_name.xcworkspace \
xcodebuild archive \
-workspace $project_name.xcworkspace \
-scheme $framework_name \
-destination "generic/platform=iOS Simulator" \
-archivePath $simulator_archive_path \
SKIP_INSTALL=NO

echo "#### 5. start buliding for device"

# 打包真机, 如果使用了Pod则需要添加-workspace $project_name.xcworkspace \
xcodebuild archive \
-workspace $project_name.xcworkspace \
-scheme $framework_name \
-destination "generic/platform=iOS" \
-archivePath $iOS_device_archive_path \
SKIP_INSTALL=NO


echo "#### 6. create xcframework"

# 创建 xcframework
xcodebuild -create-xcframework \
-framework $simulator_archive_path/Products/Library/Frameworks/$framework_name.framework \
-framework $iOS_device_archive_path/Products/Library/Frameworks/$framework_name.framework \
-output $output_path/$framework_name.xcframework


echo "#### 7. clean archive files"

# 打包完成后，存档就失去作用，只作为中间打包过程使用。
rm -r $simulator_archive_path $iOS_device_archive_path


echo "#### 8. open XCFramework directory"
# 打开 XCFramework 所在的目录
open $output_path

echo "#### 9. replace the old xcframework file for MySDKDemo"

# 源文件路径
SOURCE_PATH="${output_path}/${framework_name}.xcframework"
# 目标文件路径
DEST_PATH="../${framework_name}.xcframework"

echo "#### SOURCE_PATH: ${SOURCE_PATH}"
echo "#### DEST_PATH: ${DEST_PATH}"

# 拷贝并替换文件（使用 -f 强制覆盖）
rm -rf "$DEST_PATH"
cp -rf "$SOURCE_PATH" "$DEST_PATH"

echo "#### 10. ${framework_name}.xcframework copied and replaced successfully. 🍺🍺🍺"
