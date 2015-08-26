先从 [Nginx 官网][1]下载稳定版（stable version）的 Windows 安装包。

下载完成后解压到指定目录，我放在了 `D:\Program Files\nginx-1.8.0` 中，可以在目录里看到
nginx.exe 文件，但是它不能直接运行，在终端中进入到该目录中，也可以按住 shift 
的同时打开右键快捷菜单，选择“在此处打开命令窗口”，也可以在终端中快速进入该目录。

在终端中输入以下命令运行 Nginx。

```bash
$ nginx -c conf\nginx.conf
```

第一次运行会出现防火墙提示，是否允许访问网络，同意后即可在浏览器中访问 `http://localhost`
即可看到 Nginx 的欢迎页。

在任务管理器中可以看到两个 `nginx.exe *32` 的进程，表示 32 位版本。

References
----------

* [windows下nginx安装、配置与使用][2]
* [Windows下Nginx的安装与配置][3]
* [轻量级HTTP服务器Nginx][4]

[4]: http://ixdba.blog.51cto.com/2895551/778462
[3]: http://www.cnblogs.com/wenanry/archive/2012/01/18/2325140.html
[2]: http://www.cnblogs.com/chuncn/archive/2011/10/14/2212291.html
[1]: http://nginx.org/en/download.html
