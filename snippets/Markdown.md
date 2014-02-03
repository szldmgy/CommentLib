<a name="top">Markdown</a>
==========================

为不必要的冗余内容及这篇文章自身 Markdown 原文的可读性，请直接阅读 Markdown 原文。

参考：    
[Markdown 语法说明 (简体中文版)][1]    
[GitHub Flavored Markdown][2]

代码块
------

用四个空格跟上内容，行数任意，如：
    
    $ gem install json

GitHub 所扩展的 Flavored Markdown 中可使用如下方式，并可设置语法着色（可选），如：

```bash
$ gem install json
```

```C
#include <stdio.h>

int main(void) {
  printf("Hello Markdown!");
}
```

```Ruby
#/usr/bin/env ruby

puts "Hello Markdown!"
```

内嵌代码
--------

有时需要在正文内嵌代码，则可使用此种方式：`$ gem install json`。

当然你也可以在单行代码中这样来用，但会降低 Markdown 原文的可读性。

当前页锚记链接
--------------

注意要跳转到的锚记链接要使用 name 做标记，而不是 id。因为 JavaScript 也要使用 
id，但 id 的名字并不一定都是那么的符合你要描述的锚记，所以用 name 更友好些，你可
以起个自己认为适合的 name 来用。

[top](#top)    

跳转到其他页锚记链接
--------------------

[remote page top](https://github.com/Ju2ender/CommentLib/blob/master/snippets/Markdown.md#top)    

无序列表
--------

- item1
- item2
- item3

[1]: http://wowubuntu.com/markdown/
[2]: https://help.github.com/articles/github-flavored-markdown

