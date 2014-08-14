问题解决方法
==========

开机后发现 Dock 上图标消失
-----------------------

推测使用了 CleanMyMac 之类的软件，请在 Terminal 或 iTerm2 之类的终端工具中输入如下命令：

    rm ~/Library/Application\ Support/Dock/*.db; killall Dock

