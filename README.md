# 打包 xcframework

## 目录结构:
1. MySDK是SDK工程目录，即需要制作的framework
2. MySDK.xcframework是最终完成的xcframework
3. MySDKDemo工程目录，是一个测试工程，用于测试制作好的SDK中的接口等
4. MySDKDevDemo工程目录，包含一个整合型的工程，即测试工程和SDK，便于SDK开发和测试。

## 一般用法:
1. 打开MySDK目录下的工程进行SDK开发。
2.   完成SDK开发后，运行同目录下的generate_sdk.sh脚本生成MySDK.xcframework，并打开存放的目录
3.   将MySDK.xcframework引入MySDKDemo进行SDK的测试 (当前MySDKDemo已经完成引用，每次SDK修改后，可以直接运行generate_sdk.sh生成新的SDK即可使用)


## 高级用法 （便于同时进行SDK开发和测试）:
1. 打开MySDKDevDemo目录下的工程进行SDK开发和测试。
2. 完成SDK开发后，运行同目录下的generate_sdk.sh脚本生成MySDK.xcframework，并打开存放的目录

```
1. chmod +x generate_sdk.sh （默认情况下，脚本可能没有权限）
2. ./generate_sdk.sh 
```
