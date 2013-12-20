<a name="top">Markdown</a>
==========================

单行代码
--------

`gem install json`

多行代码
--------

```
line 1
line 2
line 3
```

多行代码代指定语法着色
----------------------

```C#
Console.WriteLine("Hello Markdown");
```

```Ruby
puts "Hello Markdown"
```

当前页锚记链接
--------------

注意要跳转到的锚记链接要使用 name 做标记，而不是 id。因为 JavaScript 也要使用 id，但 id 的名字并不一定都是那么的符合你锚记的意思，所以用 name 更友好些，你可以起个自己认为适合的 name 来用。

[top](#top)    
```Markdown
[top](#top)
```

跳转到其他页锚记链接
--------------------

[remote page top](https://github.com/Ju2ender/CommentLib/blob/master/snippets/Markdown.md#top)    
```Markdown
[remote page top](https://github.com/Ju2ender/CommentLib/blob/master/snippets/Markdown.md#top)
```
