MongoVUE
========

查找指定字段的对应值，右击目标 Collection，选择 Find2，{Find} 中填入：

```JavaScript
{
    "field name": "value"
}
```

字符型打引号，数值型不用。

查找指定字段不为空的记录：

```JavaScript
{
    "field name": { $ne: null }
}
```

查找是否拥有某个字段：

```JavaScript
{
    "field name": { $exists: true }
}
```

没有就当然是 false 了。

查找指定字段为空的记录：

```JavaScript
{
    "field name": null
}
```

查找对应 _id 的记录，查找 _id 型时要先将编号转换为 ObjectId 型：

```JavaScript
{
    "_id": ObjectId("some id value")
}
```

只查看指定字段，在 {Fields} 中填入：

```JavaScript
{
    "field name": 1
}
```

要显示的字段赋值为 1 即可。

References
----------

[Fields][1]

[1]: http://www.mongovue.com/2010/06/30/fields/
