Skill
=====

查看 IP
-------

```bash
$ ifconfig
```

但输入 ifconfig 命令会出来很多信息，可以过滤掉多余的信息：

```bash
$ ifconfig | grep "inet " | grep -v 127.0.0.1
```

紧跟 inet 后面的便是本机 IP 地址。

通过命令行关机、重启
-----------------

```bash
$ sudo shutdown -r now # 马上重启
$ sudo shutdown -r +10 # 10 分钟后重启
$ sudo shutdown -r 22:00 # 绝对时间，晚上十点重启
$ sudo shutdown -h now * 马上关机
```

修改 hosts
----------

用 vi 打开并编辑：

```bash
$ sudo vi /private/etc/hosts
```

终止进程
-------

以 Finder 为例：

```bash
$ killall -kill Finder
```

plist 文件报错：Cannot parse contents of Info.plist. The data couldn’t be read because it isn’t in the correct format. 
--------------------------------------------------------------------------------------------------------------------

这是说 plist 文件格式错误，不能正确处理了。

打开 terminal，进入项目目录中，输入：

```bash
$ plutil file-name.plist
```

我输入后是告诉我：`Encountered unknown tag <<<<<< on line 24`。看到这个一排小于号就知道代码里有冲突了，用 TextMate 打开，去除了差异。
