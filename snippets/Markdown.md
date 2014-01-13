<a name="top">Markdown</a>
==========================

参考：    
[Markdown 语法说明 (简体中文版)][1]    
[GitHub Flavored Markdown][2]

单行代码
--------

单独的一行代码一般用四个空格跟上内容，则该内容即被认为是代码。如：
    
    gem install json

有时需要在正文内加上代码，则可使用“`”，Esc 下面的那个按钮进行包围。    
如：`gem install json`。

当然你也可以在单行代码中使用 “`”，但不便于 Markdown 的直接阅读，请记住 Markdown 是一种易于编写、易于修改，在 Markdown 原文和解释后的页面能同样轻松进行阅读。

多行代码
--------

多行代码推荐用上一种四个空格跟上内容的方法，第二种方法是用三个“`”上下包围。

    line1
    line2
    line3

```
line1
line2
line3
```

多行代码代指定语法着色
----------------------

用三个“`”包围的代码还可为其指定着色语言。这个功能是 GitHub Flavored Markdown 对 
Markdown 的扩展。

着色为 C：
```C
#include <stdio.h>

int main(void) {
  printf("Hello Markdown!");
}
```

着色为 Ruby：
```Ruby
#/usr/bin/env ruby

puts "Hello Markdown!"
```

当前页锚记链接
--------------

注意要跳转到的锚记链接要使用 name 做标记，而不是 id。因为 JavaScript 也要使用 
id，但 id 的名字并不一定都是那么的符合你锚记的意思，所以用 name 更友好些，你可以起个自己认为适合的 name 来用。

[top](#top)    
code:    
    [top](#top)


跳转到其他页锚记链接
--------------------

[remote page top](https://github.com/Ju2ender/CommentLib/blob/master/snippets/Markdown.md#top)    
code:    
    [remote page top](https://github.com/Ju2ender/CommentLib/blob/master/snippets/Markdown.md#top)

无序列表
--------

- item1
- item2
- item3

[1]: http://wowubuntu.com/markdown/
[2]: https://help.github.com/articles/github-flavored-markdown
