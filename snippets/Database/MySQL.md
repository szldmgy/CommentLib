获取某一字段的最大值记录：

```sql
select 
    t1.appID,
    t1.appName,
    t1.iconURL,
    t1.version,
    t1.downloadURL
from apps as t1
left join apps as t2
on t1.appName = t2.appName
and t1.platformID = t2.platformID
and t2.version > t1.version
where t1.platformID = 1
and t1.valid = 1
and t2.appID is null
order by t1.addedTime desc
```

如上，是获取 apps 表中，相同 appName 的记录中，version 为最大的记录。
