Xcode 中 Objective-C 的块注释
----------------------------

pragma mark block
-----------------

块注释使用 pragma mark 标记，后面跟上名字。

```objective-c
#pragma mark Block name
```

有个小技巧，pragma mark 后面跟上个减号，会在顶部的当前页面的架构浏览中看到一个分割线，不带则没有分割线，你可以试试。

```objective-c
#pragma mark - Block name
```

po
--

在输出窗口中输入 po 跟上变量名可打印出变量的值。

TODO block
----------

Xcode 可以识别代码中的 TODO，进而可以在文件顶部的 Selection 中找到，方法是以下面的格式开头：

```objective-c
// TODO: 
```

Ruler
-----

代码标尺，指示一行的限制位置，使一行不要太长，设置方法：

```
Preferences -> Text Editing -> Editing -> Show -> Page guide at column: 80
```

可以看到 Xcode 中 称 Rule 为 page guide，一般设为 80 个字符。
