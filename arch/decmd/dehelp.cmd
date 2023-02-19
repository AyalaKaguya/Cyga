@echo off

echo.
cecho #Ynhelp		#Cn命令帮助,提供选项：“cmd”（使用选项列出cmd命令帮助）
cecho #Ynenlib		#Cn开启“功能库”查找功能
cecho #Ynunlib		#Cn关闭“功能库”查找功能
cecho #Ynlib		#Cn“功能库”调试功能，提供选项：on（开启）off（关闭）
cecho #Ynshowali	#Cn查看命令“别名”配置
cecho #Ynfunlog		#Cn查看“功能库”日志
cecho #Ynhistory	#Cn查看历史命令输入
cecho #Yngo		#Cn跳转路径，命令空格后输入路径
cecho #Ynprint		#Cn打印输出，变量符用“！”号代替，提供选项：err（打印错误等级）、cl (列出彩色）、$batch（打印文件中的显示），可使用彩色显示，详情请输入：print /?
echo.
cecho #Yn$[VarName]	#Cn更快捷的变量设置，不使用选项时，默认类型配置变量。提供如下模式选项：
cecho 			#Cncal    计算模式，例：$test cal 1+1
cecho 			#Cninput  等待输入模式，例：$test input pleaseint
cecho 			#Cnrandom 随机数模式，例：$test random 
echo.
cecho #Ynvar		#Cn变量设置，变量符用“！”号代替，同cmd下set命令。
echo.
cecho #Yn[Show]		#Cn“功能库”查找功能，直接在终端输入想要的功能进行查找，
cecho 		#Cn可直接输入命令字进行精确匹配
echo.
cecho #Yngive		#Cn获得命令，需要网络的支持，未开启网络将会失败运行
cecho #Ynserinfo	#Cn获得本机服务信息，关联命令：sercfg
echo.
cecho #Ynsercfg		#Cn服务控制命令，提供如下选项：
cecho 			#Cnon  开启服务，例：netcfg on [ServerName]
cecho 			#Cnoff 关闭服务，例：netcfg off [ServerName]
cecho 			#Cnre  重启服务，例：netcfg re [ServerName]
echo.
cecho #Ynun		#Cn删除“功能库”命令	
echo.
cecho #Ynnetinfo	#Cn获得本机网卡配置信息，功能运行需2-5秒收集时间,
cecho 		#Cn命令运行后，开启命令：ipcfg、dnscfg、netcfg使用权限
cecho 		#Cn提供如下选项：
cecho 			#Cnrelease 释放网卡获取到的地址，例：netinfo release
cecho 			#Cnipreget 重新获取网卡地址，例：netinfo ipreget
cecho 			#Cnflush   组合选项，释放后重新获取网卡地址，例：netinfo flush
cecho 			#Cnfldns   刷新dns缓存，例：netinfo fldns
echo.
cecho #Ynipcfg		#Cn配置网卡ip，无法在option模式中进行使用，需使用网卡别名进行配置（Net[数字]）
cecho 		#Cn提供静态配置与自动获取两个选项，例：ipcfg [网卡别名] [static/dhcp] [IP] [Netmask] [Gateway] 
echo.
cecho #Yndnscfg		#Cn配置网卡DNS，无法在option模式中进行使用，需使用网卡别名进行配置（Net[数字]）
cecho 		#Cn提供静态配置与自动获取两个选项，例：ipcfg [网卡别名] [static/dhcp] [IP] 
echo.
cecho #Ynnetcfg		#Cn配置网卡状态，无法在option模式中进行使用，需使用网卡别名进行配置（Net[数字]）
cecho 		#Cn提供禁用、启用、重启三种状态，例：netcfg [网卡别名] [on/off/re] 
echo.
cecho #Ynclear		#Cn清空当前终端区域,提供选项：his（清空历史命令输入）
echo.
cecho #Ynscan		#Cn简化Ping常用功能，可在option模式中使用。
cecho 		#Cn格式为：scan [ip] [ping次数] [包大小] 或 scan [起始ip] to [终止ip]，
cecho 		#Cn也可直接省略ping次数及包大小，直接进行默认ping测，
cecho 		#Cn无法做到原版ping那么全面，如需其他功能还请直接调用原版ping。
echo.
echo.
cecho #Yninstall	#Cn安装DreamEnvt Terminal到系统，安装后，可直接在“运行”、cmd中直接使用
cecho 		#CnDreamEnvt Terminal下载到的第三方命令工具，也可直接调用DreamEnvtTerminal
cecho 		#Cn命令字为：decmd
echo.
cecho #Ynsetup		#Cn设置，提供如下选项：
cecho 			#Cnfolder 创建文件夹，可批量以空格分割 格式为：setup folder [folder name]
cecho 			#Cnunfolder 删除文件夹，可批量以空格分割 格式为：setup unfolder [folder name]
cecho 			#Cntxt 使用系统默认记事本打开文件，格式为：setup txt [file name]
cecho 			#Cndel 删除文件 可批量以空格分割 格式为：setup del [file name]
cecho 			#Cnfile 创建文件（空文件）可批量创建以空格分割 格式为：setup file [file name]
echo.
cecho #Ynkill		#Cn杀死进程，可批量以空格分割 格式：kill [process name]
cecho #Ynme		#Cn查看当前登陆用户用户信息
cecho #Yncmd		#Cn切换至系统终端
cecho #Ynps		#Cn切换至powershell
cecho #Ynfresh		#Cn重载终端	
cecho #Ynquit		#Cn退出终端
echo.
cecho #Cn[#YnInfo#Cn]当前decmd扩展程序未完全适配可用，存在部分扩展不可用。
echo.