Vim config
==========

- OS.X.vimrc.vim - OS X 平台上的 Vim 设置，目前针对 [MacVim][1]。
- Windows.vimrc.vim - Windows 平台上的 Vim 设置，目前针对 [gVim][2]。

OS.X 和 Windows 表示平台，vimrc 表示这是 Vim 配置文件，加上 .vim
后缀是为了让这个配置文件在 GitHub 上能被识别为 VimLisp 获得语法着色并能被统计到
语言比例条形图中。

我有想过把它们命名为 mvimrc 和 gvimrc，但这样容易让人觉得配置在 mvimrc 和 gvimrc
中才是正确的。其实不然，OS X 平台放到 `~/.vimrc` 中，Windows 平台要放到
`'D:\Program Files\Vim\_vimrc'` 中也是可以的。

配置 Vim
--------

在你将这些配置放到 Vim 前我们需先配置三个东西：配色、pathogen、NERDTree。配色就
不用讲了；pathogen 是一个统一加载其他插件的插件，它使你不用将插件相关的文件分开
放置；NERDTree 是一个树形浏览文件结构的插件，让你可以方便浏览项目的每一个文件。

### 配色 ###

配色我使用的是 molokai，它是一个源于 TextMate 的配色，很漂亮。首先从 molokai 的
[GitHub 主页][3]上将 colors/molokai.vim 保存到你的计算机上。OS X 上请放到
`~/.vim/colors` 下，Windows 平台请放到 `'D:\Program Files\Vim\vimfiles\colors'`
下。

### pathogen & NERDTree ###

- [pathogen GitHub 主页][4]
- [NERDTree GitHub 主页][5]

**OS X**

```bash
$ cd ~/.vim
$ mkdir -p autoload bundle
$ cd autoload
$ curl -Sso pathogen.vim https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim
$ cd ../bundle
$ git clone https://github.com/scrooloose/nerdtree.git
```

**Windows**

```bash
$ cd 'D:\Program Files\Vim\vimfiles'
$ mkdir autoload bundle
$ cd autoload
$ curl -Sso pathogen.vim https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim
$ cd ..\bundle
$ git clone https://github.com/scrooloose/nerdtree.git
```

上面的分解步骤是为了让你能看得更清楚这是在哪个目录下操作的，当然你也能合并命令。

完成上面这些操作后你就可以将配置放到配置文件的最上面了。

代码补全
--------

Vim 7 开始已经内置了 Omnicompletion System，所以可以直接使用。在 insert 模式下，
按下 C-n 或 C-p 打开提示面板，Vim 会遍历项目来查找相关提示，而不单单是在这一个页
面。

在提示面板中按 C-n 移动到下一个，按 C-p 移动到上一个。

C-x C-o 关键词提示
C-o C-n C-p 代码提示

Command
-------

`:wa` write all changed files (save all changes). and keep working.
`:xa` exit all (save all changes and close Vim).
`:qa` quit all (close Vim. but not if there are unsaved changes).
`:qa!` quit all (close Vim without saving -- discard any changes).

The `:wa` and `:xa` commands only write a file when its buffer has been changed.
By contrast, the `:w` command always writes the current buffer to its file (use
`:update` to save the current buffer only if it has been changed).

Warning: If you enter `:qa!`. vim will discard all changes without asking "are
you sure?"

Happy vimming :)

[1]: http://www.vim.org/download.php#mac
[2]: http://www.vim.org/download.php#pc
[3]: https://github.com/tomasr/molokai
[4]: https://github.com/tpope/vim-pathogen
[5]: https://github.com/scrooloose/nerdtree

