TextMate
========

后面我将会混合使用 TextMate 和 Sublime Text：Web 开发用 Sublime Text，因为它带 css 
样式提示和同文本内容提示，很方便。并会记录下 TextMate 需要改进的地方，帮助完善 TextMate。

[TextMate GitHub 项目页][1]

从源代码编译
----------

1.  安装 [Homebrew][2]。    

    ```bash
    $ ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    ```
    
    若已安装了 Homebrew，确保是最新版，使用 `brew update` 升级 Homebrew。

capnp 安装路径 /Users/Ju2ender/.homebrew/Cellar/capnp/0.5.3/include/capnp

brew update
sudo brew install ragel boost multimarkdown hg ninja capnp google-sparsehash

sudo ln -s /Users/Ju2ender/.homebrew/Cellar/capnp/0.5.3/bin/capnp /usr/local/bin/capnp
sudo ln -s /Users/Ju2ender/.homebrew/Cellar/capnp/0.5.3/bin/capnp /usr/local/bin/capnpc
sudo ln -s /Users/Ju2ender/.homebrew/Cellar/capnp/0.5.3/bin/capnpc-c++ /usr/local/bin/capnpc-c++
sudo ln -s /Users/Ju2ender/.homebrew/Cellar/capnp/0.5.3/bin/capnpc-capnp /usr/local/bin/capnpc-capnp

将 capnp 的头文件手动映射到 `/usr/local/include` 目录中，以便能通过 `#include <capnp/header.h>` 引用：
```bash
sudo ln -s /Users/Ju2ender/.homebrew/Cellar/capnp/0.5.3/include/capnp /usr/local/include/capnp
sudo ln -s /Users/Ju2ender/.homebrew/Cellar/capnp/0.5.3/include/kj /usr/local/include/kj
```

sudo ln -s /Users/Ju2ender/.homebrew/Cellar/capnp/0.5.3/lib/libcapnp-rpc.a /usr/local/lib/libcapnp-rpc.a
sudo ln -s /Users/Ju2ender/.homebrew/Cellar/capnp/0.5.3/lib/libcapnp.a /usr/local/lib/libcapnp.a
sudo ln -s /Users/Ju2ender/.homebrew/Cellar/capnp/0.5.3/lib/libcapnpc.a /usr/local/lib/libcapnpc.a
sudo ln -s /Users/Ju2ender/.homebrew/Cellar/capnp/0.5.3/lib/libkj-async.a /usr/local/lib/libkj-async.a
sudo ln -s /Users/Ju2ender/.homebrew/Cellar/capnp/0.5.3/lib/libkj.a /usr/local/lib/libkj.a
sudo ln -s /Users/Ju2ender/.homebrew/Cellar/capnp/0.5.3/lib/pkgconfig /usr/local/lib/pkgconfig

其实思想就是让这些目录可以被直接调用到，即添加到环境变量中，所以将 `~/.homebrew/Cellar/capnp/0.5.3` 加入环境变量即可。

git clone https://github.com/textmate/textmate.git
cd textmate
git submodule update --init
./configure && ninja

References
----------
* [capnp official site][1]

[1]: https://capnproto.org/install.html
