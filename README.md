# Cyga

A modular, lightweight batch console architecture pays homage to the last work of gardens OS. It integrates the object-oriented design idea of garrib. However, please note that the current version is still in the conceptual stage, only realizing the basic idea.

一个模块化、轻量的Batch 控制台架构，致敬Gardens OS的最后一作。整合了Garlib的面向对象设计思想。但是请注意：当前版本仍然处于概念阶段，仅实现基本构想。

## How to use

Cyga doesn't have many predefined commands, but you can do something to meet your needs.

Cyga并没有非常多的预定义命令，但你可以通过一些操作来满足你的需求。

### import a module

We built in three basic modules to implement some basic operations. Of course, you can open these module files and write custom modules based on them.

我们内置了三个基本模块来实现一些基本操作，当然你也可以打开这些模块文件，并仿照它们编写自定义模块。

You can use the following commands to introduce them:

你可以使用以下指令来引入它们：

```s
import [moduleName]
```

ModuleName | Description
---|---
garlib | A junk object oriented batch programming library.
cmd | Introduce some common CMD commands.
network | Network module, such as 'ping'.

For some reasons, we don't want to explain the usage of these modules in detail here. Please understand it in combination with the source code.

出于某些原因，我们并不想在这里详细说明这些模块的用法，请结合源代码食用。

### show Cyga`s information

```s
runinfo
```

### Close Cyga

```s
exit
```

## Revisions

Revision | Date | Changes
---|---|---
1.0.1001 | 2021-01-02 | Origin Push

## Copyright and License

Code and documentation copyright 2016-2021 TePuint Club. Code released under [MIT License](https://github.com/AyalaKaguya/Cyga/blob/main/LICENSE)