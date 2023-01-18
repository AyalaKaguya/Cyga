# Garlib 面向对象的CMD

`Garlib` 为CMD提供了一个虚假的类型系统，使得CMD的一些行为变得反直觉，但是它的存在是喜人的，就像不知道做什么的时候突然发现了有意思的事情一样。

通过以下命令来启用 `Garlib` :

```s
enable garlib
```

## Garlib 类型系统

`Garlib` 提供了三种类型和一种抽象基类，分别是：`int`、`string`、`bool`和`object`  ，前三种的使用方法如下：

### int 数字类型

`int` 类型提供了加法运算符重载，其他啥的都可以扩展（都没有写）。

```s
C:\Users\ayala>int a = 24

C:\Users\ayala>int b = 17

C:\Users\ayala>a + b
41

C:\Users\ayala>
```

### string 字符串类型

`string` 类型提供了字符串截取的方法，其他啥的都可以扩展（都没有写）。

```s
C:\Users\ayala>string s = "Hello, World!"

C:\Users\ayala>s sub 0 5
Hello

C:\Users\ayala>print s
Hello, World!

C:\Users\ayala>
```

### bool 布尔类型

`bool` 类型提供了布尔判断和布尔反向的方法，其他啥的都可以扩展（都没有写）。

```s
C:\Users\ayala>bool b = 1

C:\Users\ayala>b check

C:\Users\ayala>b
True

C:\Users\ayala>b reverse

C:\Users\ayala>print b
False

C:\Users\ayala>
```

## Garlib 内建函数

函数名称 | 参数 | 作用
---|---|---
print | 任何字符串/object类型 | 在屏幕上输出一行内容
type_bool_check | bool类型 | 检查一个bool类型的布尔值
type_bool_reverse | bool类型 | 检查一个bool类型布尔值的反向

## Garlib 版本号

Revision | Date | Changes
---|---|---
1.0.0031 | 2021-01-02 | Origin Update
2.3 | 2023-01-18 | Total Upgrade

## Garlib 版权和许可证

遵从[Cyga](README.md)，欢迎各位随便搞点提交。
