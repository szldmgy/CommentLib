Xcode 中 Objective-C 的块注释
----------------------------

块注释使用 pragma mark 标记，后面跟上名字。

```
#pragma mark Block name
```

有个小技巧，pragma mark 后面跟上个减号，会在顶部的当前页面的架构浏览中看到一个分割线，不带则没有分割线，你可以试试。

```
#pragma mark - Block name
```

在输出窗口中输入 po 跟上变量名可打印出变量的值。
