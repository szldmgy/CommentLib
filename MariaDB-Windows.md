MariaDB 是 MySQL 的一个分支。MySQL 被 Oracle 收购后，开源社区以及依赖 MySQL 的公司担心
Oracle 会将 MySQL 必源，纷纷转向 MariaDB，这其中包括了 Google、维基百科基金会等重量级用户。

由于公司的服务器是 Windows 的，所以先研究 Windows 下的安装。

首先到 [MariaDB 官网][1]下载 Windows 下对应版本，我下载的是 zip 压缩包文件，没有选择 msi
安装包。

下载完后解压，打开终端，

```bash
$ cd <directory-where-zip-was-unpacked>
$ bin\mysqld --console

$ bin/mysql
```

References
----------

* [Installing MariaDB Windows ZIP Packages][2]

[2]: https://mariadb.com/kb/en/mariadb/installing-mariadb-windows-zip-packages/
[1]: https://mariadb.org
