# Cyga 2.2a

一个模块化、轻量的Batch 控制台环境，致敬 `Gardens OS` 的最后一作（真的是最后一作）。完美整合了 `Garlib` 的面向对象设计思想。当前版本概念已经成型，实现了基本构想。

## 比一代强在哪里？

`Cyga2.0` 相比 `Cyga` 一代来说，完全使用了原生CMD实现，具有一定的实用性。一些群友的评价：`当Cyga2.0启用了Garlib2.0之后，会使得CMD具有一定的迷惑性，类似于REPL（Read-Eval-Print Loop），CMD表现的更像一个编程语言` 。

由于 `Cyga2.0` 带来的架构更新，带来了无与伦比的兼容性和横向扩展性，但是它依旧只是个CMD。

-----

## 如何使用

`Cyga` 并没有非常多的命令，但你可以通过一些操作来满足你的需求。

在以下教程中，我们将着重讲解如何定制你的 `Cyga` 体验以及 `Garlib` 的基本使用方法。

### 启用一个模块

我们开发了一个简陋的模块系统，使得 `Cyga` 的环境具有一定的定制能力，你可以通过使用不同的模块来获得不同的CMD体验，当然你也可以打开这些模块文件夹，并仿照它们编写自定义模块。

你可以使用以下指令来启用一个模块：

```s
enable [moduleName]
```

如果不指定 `moduleName` ，那么 `enable` 将会展示 `./arch` 目录下所有的文件夹，这些文件夹的每个在一般情况下代表着一个模块。

当成功指定一个存在的 `moduleName`，那么 `enable` 将会调用 `./arch/<moduleName>/<moduleName>.init.cmd` ，如何编写 `init` 文件可以参考`./arch/garlib/garlib.init.cmd` [传送门](https://github.com/AyalaKaguya/Cyga/blob/main/arch/garlib/garlib.init.cmd)。

### 自定义工具

`Cyga` 存在一个目录 `./bin` ，你可以将你常用但不想放在原版CMD的PATH里的工具放在这里，在启动 `Cyga` 之后，这些工具将会自动导入环境。

你可以在安全模式打开 `Cyga` ，这会使得你无法使用System32下的所有工具，但是在排查一些问题的时候安全模式会很有用。

`./lib` 是存放 `Cyga` 内部脚本的地方，这里一般不推荐乱动。

### Garlib 面向对象的CMD

`Garlib` 为CMD提供了一个虚假的类型系统，使得CMD的一些行为变得反直觉，但是它的存在是喜人的，就像不知道做什么的时候突然发现了有意思的事情一样。

详细教程见[garlib.md](garlib.md)

### 脚本支持

如果你要在 `Cyga` 的环境下运行脚本，你需要知道以下几点：

1. 所有 `Cyga` 和 `Garlib` 的方法需要在前面加 `call` 指令，比如说：

```bat
::cyga-script.bat
@echo off
call enable garlib
call String s = "Hello, World!"
call print s
...
```

当然如果有什么不依靠call还能正常执行的方法也请提给我。

2. 后面几点想到再说。

### 用户启动脚本

当你在 `Cyga` 根目录创建名为 `uservars.bat` 的文件后，这个文件将会成为**用户启动脚本**，该脚本的编写遵循[脚本支持](#脚本支持)中的部分，**用户启动脚本**会在 `cygavars.bat` 完成侧载后、更改目录前执行。

在这个脚本内你可以执行一些个性化的设置，比如修改CMD的窗口大小和样式、通过 `call enable` 来启用某些功能甚至修改 `Cyga` 的运行路径，以下举了个常用的例子：

```bat
::uservars.bat
call enable bcn
color 0f
mode con: cols=110 lines=35
```

### 关于可能的未来

`Garlib` 的类型系统仍然是不完善的，在后期我们可能会考虑使用以下存储库的内容来改善它：

[https://github.com/npocmaka/batch.scripts](https://github.com/npocmaka/batch.scripts)

[https://github.com/ritchielawrence/batchfunctionlibrary](https://github.com/ritchielawrence/batchfunctionlibrary)

-----

## 版本变化

Revision | Date | Changes
---|---|---
1.0.1002 | 2021-01-02 | Bug Fix
2.0b | 2023-01-18 | Total Upgrade
2.1b | 2023-01-24 | Add user config
2.2a | 2023-02-16 | Add bcn support ...

-----

## 版权和许可证

Code and documentation copyright 2016-2023 TePuint Club. Code released under [MIT License](https://github.com/AyalaKaguya/Cyga/blob/main/LICENSE)
