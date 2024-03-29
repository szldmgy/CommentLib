Reverse Engineering
===================

Book
----

[iOSAppReverseEngineering](https://github.com/iosre/iOSAppReverseEngineering)    
iOS 逆向工程英文版。

Other
-----

[iPhone Private Frameworks](https://github.com/Ju2ender/iphone-private-frameworks)
iOS 私有库列表。但是上面说只支持 iPhoneOS 3.x 4.x 暂不支持。iPhoneOS 是 iOS 的旧称，还是 3.x，
iOS 如今已经 8.x 了。所以此库过于陈旧，新版见 fork 原始库指引，便是下面一个库

[iPhoneHeaders](https://github.com/rpetrich/iphoneheaders/)

[Theos](https://github.com/Ju2ender/theos)
基于 Make 的编译工具。

[Theos NIC Templates](https://github.com/Ju2ender/theos-nic-templates)

[iOSOpenDev](https://github.com/Ju2ender/iOSOpenDev)
为 Xcode 安装越狱项目模板。

[class-dump](https://github.com/Ju2ender/class-dump)
class dump 是一个命令行工具，用来监测存储在 Mach-O 二进制文件理的 Objective-C 运行时信息。它为类 (class)，分类 (category)和协议 (protocol)生成声明信息。这些信息与 otool -ov 命令提供的信息是一样的，但表示得更像正常的 Objective-C 的声明，所以它更紧凑，更易读

[Class-Dump-GUI](https://github.com/Ju2ender/Class-Dump-GUI)

[call_at_anywhere](https://github.com/Ju2ender/call_at_anywhere)

[ldid](https://github.com/Ju2ender/ldid)
签名工具。

[Cydia](https://github.com/Ju2ender/cydia)
使用 `git submodule update --init` 命令初始化依赖项目。
submodule: 
[SDURLCache](https://github.com/SaurikIT/SDURLCache.git)
[icu](git://git.saurik.com/apple/icu.git)

[Cycript](https://github.com/Ju2ender/cycript)

私有 API 查看
------------

[RuntimeBrowser](https://github.com/Ju2ender/RuntimeBrowser)
查看 Objective-C 运行时信息，可以在 iOS 和 OS X 上运行。在 iOS 模拟器或者真机上运行后，
只要设备和 Mac 在同一个网络里，就可以在 Mac 浏览器中输入 http://localhost:10000 来查看私有
API 列表。

[iOS Runtime Headers](https://github.com/Ju2ender/iOS-Runtime-Headers)
用上面的 RuntimeBrowser 工具生成好的 iOS 私有 API 列表。

[iOS7-Private-Header](https://github.com/masbog/iOS7-Private-Header)
次一些的，我就不 fork 了，是用一个 Ruby 工具 private-dumper 获取的。

[private-dumper](https://github.com/jfahrenkrug/private-dumper)
获取上面 iOS7-Private-Header 所用到的工具，Ruby 的我就不细细研究 fork 了。

Blackbox tool
-------------

[iOS SSL kill switch](https://github.com/Ju2ender/ios-ssl-kill-switch)
关闭 iOS SSL 安全验证。

Debug
-----

[PonyDebugger](https://github.com/Ju2ender/PonyDebugger)
用 Chrome Developer Tool 来调试 iOS App，支持查看网络加载、界面 XML 层级等。

[PonyDebuggerInjected](https://github.com/Ju2ender/PonyDebuggerInjected)
能让 PonyDebugger 注入到运行中的程序。

[ios-webkit-debug-proxy](https://github.com/Ju2ender/ios-webkit-debug-proxy)
Webkit 远程调试。

越狱工具
-------

[p0sixspwn](https://github.com/Ju2ender/p0sixspwn)
可以实现 iOS 6.1.3 ~ 6.1.6 的越狱。

砸壳
----

[dumpdecrypted](https://github.com/Ju2ender/dumpdecrypted)
开源锤子。

[FAULTYCrack](https://github.com/KJCracks/FAULTYCrack)
dumpdecrypted 的一个 Fork。

[opensn0w](https://github.com/Ju2ender/opensn0w)
An open source jailbreaking program.

实例
----

[iOSreLottery](https://github.com/Ju2ender/iosrelottery)
抽奖插件。

[RootApp](https://github.com/Ju2ender/RootApp)
将 Theos 以 root 权限运行例子。

[noproblem](https://github.com/Ju2ender/noproblem)
不将 iOS 的崩溃日志发给苹果，而是发给 @openjailbreak

[LowPowerBanner](https://github.com/Ju2ender/LowPowerBanner)
以横幅的形式进行低电量提示，而不是警告。








