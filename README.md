# 打包 xcframework

## 目录结构:
1. MySDKDemo工程目录，是一个测试工程，用于测试制作好的SDK中的接口等
2. MySDKDevDemo工程目录，包含一个整合型的工程，即测试工程和SDK，便于SDK开发和测试。

## 用法:
1. 打开MySDKDevDemo目录下的工程进行MySDKWork开发和测试。
2. 完成MySDKWork开发后，运行MySDKDevDemo目录下的generate_sdk.sh脚本生成MySDKWork.xcframework，并打开存放的目录
3.  将MySDKWork.xcframework引入MySDKDemo进行SDK的测试 (当前MySDKDemo已经完成引用，每次SDK修改后，可以直接运行MySDKDevDemo/generate_sdk.sh生成新的SDK即可使用)

## 可能遇到的问题
- 默认情况下，脚本可能没有权限

```
1. chmod +x generate_sdk.sh 
2. ./generate_sdk.sh 
```
