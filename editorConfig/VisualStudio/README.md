Visual Studio
=============

vs2010-black-theme.vssettings
-----------------------------

一款 Visual Studio 2010 的暗色调配色，我在原有内容里将界面配置也添加了进去。像有
什么视图、视图的位置、有什么工具条、工具条的位置等等。

VsVim.vsix
----------

开源的 Visual Studio Vim 插件，能让你在 Visual Studio 中采用 Vim 的使用方式。

- [Visual Studio 官方插件下载页][1]
- [VsVim 项目 GitHub 主页][2]

装好后 VsVim 在 Normal 模式下使用的是黑色的光标，因为我们使用的是暗色调配色，这
样就很不明显。所以我们要把 Normal 模式下的黑色光标改为对比色。

工具 > 选项 > 字体和颜色 > 显示项 > VsVim Block Caret

将项前景色和项背景色都改为自动即可。

References
----------

- [how to change color of vim cursor in Visual Studio 2010][1]

[1]: http://visualstudiogallery.msdn.microsoft.com/59ca71b3-a4a3-46ca-8fe1-0e90e3f79329/
[2]: https://github.com/jaredpar/VsVim/
[3]: http://stackoverflow.com/questions/7546214/how-to-change-color-of-vim-cursor-in-visual-studio-2010

