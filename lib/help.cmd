@echo off

if defined Cyga_Flag_SafeMode (
   echo The help utility goes offline.
   echo Safe Mode: Isolated from the original CMD
   echo.
)

echo HELP             Display help information
echo ENABLE           Enable the Cyga Tools extension
echo BCN              Command-line environment package manager
echo log              输出指针的内容并继续
echo var              创建一个变量指针
echo pwd              获取当前工作路径
echo sudo             以管理员权限执行，环境不继承
echo who              查看当前登陆用户
echo which            查询可执行文件的位置