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

2.  用 Homebrew 安装以下依赖项目：    
    
    * [ragel][3] - state machine compiler
    * [boost][4] - portable C++ source libraries
    * [multimarkdown][5] - marked-up plain text compiler
    * [mercurial / hg][6] - distributed SCM system
    * [ninja][7] - build system similar to make
    * [Cap’n Proto / capnp][8] - serialization library
    
    使用 Homebrew 进行安装：    
    
    ```bash
    $ brew install ragel boost multimarkdown hg ninja capnp
    ```
    
    我在安装这些依赖工具时没有遇到问题。
    
3.  编译 TextMate：    
    从 GitHub 上克隆 TextMate 项目：
    
    ```bash
    $ git clone https://github.com/textmate/textmate.git
    ```
    
    进入 TextMate 项目目录
    
    ```bash
    $ cd textmate
    ```
    
    初始化 TextMate 项目的依赖项目
    
    ```bash
    $ git submodule update --init
    ```
    
    编译 TextMate
    
    ```bash
    $ ./configure && ninja
    ```
    
    如果编译过程中发现
    
    ```
    [14/56] Run test ‘/Users/Ju2ender/bu.../Frameworks/network/test_network’…
    FAILED: /Users/Ju2ender/build/TextMate/Frameworks/network/test_network && touch /Users/Ju2ender/build/TextMate/Frameworks/network/test_network.run
    test_network: 1 of 1 test failed:
    /Users/Ju2ender/dev/textmate/Frameworks/network/tests/t_download.cc:58: Expected (network::download(network::request_t(url, &myFilter, NULL), &error) == 200), found (0 != 200)
    ```
    
    或者
    
    ```
    [34/54] Run test ‘/Users/Ju2ender/bu...ftwareUpdate/test_SoftwareUpdate’…
    FAILED: /Users/Ju2ender/build/TextMate/Frameworks/SoftwareUpdate/test_SoftwareUpdate && touch /Users/Ju2ender/build/TextMate/Frameworks/SoftwareUpdate/test_SoftwareUpdate.run
    test_SoftwareUpdate: 5 of 6 tests failed:
    /Users/Ju2ender/dev/textmate/Frameworks/SoftwareUpdate/tests/t_sw_update.cc:64: Expected (err == "Extracting archive."), found ("Failed to connect to localhost port 64762: Connection refused" != "Extracting archive.")
    /Users/Ju2ender/dev/textmate/Frameworks/SoftwareUpdate/tests/t_sw_update.cc:73: Expected (err == "Extracting archive."), found ("Failed to connect to localhost port 64762: Connection refused" != "Extracting archive.")
    /Users/Ju2ender/dev/textmate/Frameworks/SoftwareUpdate/tests/t_sw_update.cc:82: Expected (err == "Bad signature."), found ("Failed to connect to localhost port 64762: Connection refused" != "Bad signature.")
    /Users/Ju2ender/dev/textmate/Frameworks/SoftwareUpdate/tests/t_sw_update.cc:91: Expected (err == "Bad signature."), found ("Failed to connect to localhost port 64762: Connection refused" != "Bad signature.")
    /Users/Ju2ender/dev/textmate/Frameworks/SoftwareUpdate/tests/t_sw_update.cc:109: Expected (err == NULL_STR), found ("Failed to connect to localhost port 64762: Connection refused" != "￿")
    ```
    
    可将对应的测试文件删除，在我这里是 `/Users/Ju2ender/dev/textmate/Frameworks/network/tests/t_download.cc` 和 `/Users/Ju2ender/dev/textmate/Frameworks/SoftwareUpdate/tests/t_sw_update.cc`。
    
    删除后重新输入 `./configure && ninja` 进行编译即可，默认会编译到 `/Users/Ju2ender/build/TextMate/Applications/TextMate` 下。`Ju2ender` 是我的名字，注意替换成自己的。

[1]: https://github.com/textmate/textmate
[2]: https://github.com/Homebrew/homebrew
[3]: http://www.complang.org/ragel/
[4]: http://www.boost.org/
[5]: http://fletcherpenney.net/multimarkdown/
[6]: http://mercurial.selenic.com/
[7]: http://martine.github.com/ninja/
[8]: http://kentonv.github.io/capnproto/
