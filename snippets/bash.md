See IP
------

Open terminal (or iTerm):

```bash
$ ifconfig
```

find inet.

List All Files (include hidden file)
-----------------------------------

```bash
$ ls -a
```

Copy File
---------

```bash
$ cp /dir/filename /todir
```

Copy Directory
--------------

```bash
$ cp /dir/* /todir
```

New Line
--------

Sometimes, the bash would be very long, you can break it:

```bash
$ some very very very \
  very very very very \
  very long command
```

`\` means command is not end.

Rename File
-----------

```bash
# Rename a file called readme.md to README.md
$ mv readme.md README.md
```

```bash
# Rename a directory called dirA to dirB
$ mv dirA dirB
```

```bash
# Rename all *.jpg file to *.png
$ mv .jpg .png *.jpg
```
