Reverse Engineering
===================

[iPhone Private Frameworks](https://github.com/Ju2ender/iphone-private-frameworks)
iOS 私有库列表。但是上面说只支持 iPhoneOS 3.x 4.x 暂不支持。iPhoneOS 是 iOS 的旧称，还是 3.x，
iOS 如今已经 8.x 了。所以此库过于陈旧，新版见 fork 原始库指引，便是下面一个库

[iPhoneHeaders](https://github.com/rpetrich/iphoneheaders/)

[Theos](https://github.com/Ju2ender/theos)
基于 Make 的编译工具。

[iOSOpenDev](https://github.com/Ju2ender/iOSOpenDev)
为 Xcode 安装越狱项目模板。

[class-dump](https://github.com/Ju2ender/class-dump)
class dump 是一个命令行工具，用来监测存储在 Mach-O 二进制文件理的 Objective-C 运行时信息。它为类 (class)，分类 (category)和协议 (protocol)生成声明信息。这些信息与 otool -ov 命令提供的信息是一样的，但表示得更像正常的 Objective-C 的声明，所以它更紧凑，更易读

[Class-Dump-GUI](https://github.com/Ju2ender/Class-Dump-GUI)

[call_at_anywhere](https://github.com/Ju2ender/call_at_anywhere)

私有 API 查看
------------

[RuntimeBrowser](https://github.com/Ju2ender/RuntimeBrowser)
查看 Objective-C 运行时信息，可以在 iOS 和 OS X 上运行。在 iOS 模拟器或者真机上运行后，
只要设备和 Mac 在同一个网络里，就可以在 Mac 浏览器中输入 http://localhost:10000 来查看私有
API 列表。

[iOS Runtime Headers](https://github.com/Ju2ender/iOS-Runtime-Headers)
用上面的 RuntimeBrowser 工具生成好的 iOS 私有 API 列表。

Blackbox tool
-------------

[iOS SSL kill switch](https://github.com/Ju2ender/ios-ssl-kill-switch)
关闭 iOS SSL 安全验证。
