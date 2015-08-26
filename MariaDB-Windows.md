MariaDB 是 MySQL 的一个分支。MySQL 被 Oracle 收购后，开源社区以及依赖 MySQL 的公司担心
Oracle 会将 MySQL 必源，纷纷转向 MariaDB，这其中包括了 Google、维基百科基金会等重量级用户。

由于公司的服务器是 Windows 的，所以先研究 Windows 下的安装。

首先到 [MariaDB 官网][1]下载 Windows 下对应版本，我下载的是 zip 压缩包文件，没有选择 msi
安装包。

下载完后解压，打开终端（我用的是 [Windows Git][3] 带的终端）

* mysqld.exe 是启动 MariaDB
* mysql.exe 是管理
* mysql_install_db.exe 是配置

因为 .exe 结尾的是可执行文件，在 Windows 终端中执行可以省去 .exe 后缀而直接写名字。

进入目录：

```bash
$ cd <directory-where-zip-was-unpacked>
```

进入 bin 目录：

```bash
$ cd bin
```

设置数据库存放路径、Windows 服务名、root 密码，并允许远程登录。    
真实环境下请将密码设的复杂一些。

```bash
$ mysql_install_db --datadir=D:\database --service=mariadb-10.0.21-winx64 --password=root --allow-remote-root-access
```

我将服务的名字命名为和 MariaDB 安装包同名，便于知道当前数据库类型，版本信息。    
安装完成后启动服务即可：

```bash
$ sc start mariadb-10.0.21-winx64
```

如果想修改服务名就要先停止服务，再卸载服务，删除数据库并重装 MariaDB：

```bash
$ sc stop <servicename>
$ sc delete <servicename>
$ rmdir /s /q <path-to-datadir>
```

然后就可以使用 Navicat 之类的软件连接数据库了。端口号默认是 3306。

端口信息可以通过执行 mysqld.exe 在输出信息中看到

```bash
$ mysqld --console
```

References
----------

* [Installing MariaDB Windows ZIP Packages][2]
* [mysql_install_db.exe][4]

[4]: https://mariadb.com/kb/en/mariadb/mysql_install_dbexe/
[3]: https://git-for-windows.github.io/
[2]: https://mariadb.com/kb/en/mariadb/installing-mariadb-windows-zip-packages/
[1]: https://mariadb.org
