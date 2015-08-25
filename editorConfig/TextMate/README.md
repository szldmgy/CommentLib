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

git clone https://github.com/textmate/textmate.git
cd textmate
git submodule update --init
./configure && ninja

最新开发版我没有编译成功。
