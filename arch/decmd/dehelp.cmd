@echo off

echo.
cecho #Ynhelp		#Cn�������,�ṩѡ���cmd����ʹ��ѡ���г�cmd���������
cecho #Ynenlib		#Cn���������ܿ⡱���ҹ���
cecho #Ynunlib		#Cn�رա����ܿ⡱���ҹ���
cecho #Ynlib		#Cn�����ܿ⡱���Թ��ܣ��ṩѡ�on��������off���رգ�
cecho #Ynshowali	#Cn�鿴�������������
cecho #Ynfunlog		#Cn�鿴�����ܿ⡱��־
cecho #Ynhistory	#Cn�鿴��ʷ��������
cecho #Yngo		#Cn��ת·��������ո������·��
cecho #Ynprint		#Cn��ӡ������������á������Ŵ��棬�ṩѡ�err����ӡ����ȼ�����cl (�г���ɫ����$batch����ӡ�ļ��е���ʾ������ʹ�ò�ɫ��ʾ�����������룺print /?
echo.
cecho #Yn$[VarName]	#Cn����ݵı������ã���ʹ��ѡ��ʱ��Ĭ���������ñ������ṩ����ģʽѡ�
cecho 			#Cncal    ����ģʽ������$test cal 1+1
cecho 			#Cninput  �ȴ�����ģʽ������$test input pleaseint
cecho 			#Cnrandom �����ģʽ������$test random 
echo.
cecho #Ynvar		#Cn�������ã��������á������Ŵ��棬ͬcmd��set���
echo.
cecho #Yn[Show]		#Cn�����ܿ⡱���ҹ��ܣ�ֱ�����ն�������Ҫ�Ĺ��ܽ��в��ң�
cecho 		#Cn��ֱ�����������ֽ��о�ȷƥ��
echo.
cecho #Yngive		#Cn��������Ҫ�����֧�֣�δ�������罫��ʧ������
cecho #Ynserinfo	#Cn��ñ���������Ϣ���������sercfg
echo.
cecho #Ynsercfg		#Cn�����������ṩ����ѡ�
cecho 			#Cnon  ������������netcfg on [ServerName]
cecho 			#Cnoff �رշ�������netcfg off [ServerName]
cecho 			#Cnre  ������������netcfg re [ServerName]
echo.
cecho #Ynun		#Cnɾ�������ܿ⡱����	
echo.
cecho #Ynnetinfo	#Cn��ñ�������������Ϣ������������2-5���ռ�ʱ��,
cecho 		#Cn�������к󣬿������ipcfg��dnscfg��netcfgʹ��Ȩ��
cecho 		#Cn�ṩ����ѡ�
cecho 			#Cnrelease �ͷ�������ȡ���ĵ�ַ������netinfo release
cecho 			#Cnipreget ���»�ȡ������ַ������netinfo ipreget
cecho 			#Cnflush   ���ѡ��ͷź����»�ȡ������ַ������netinfo flush
cecho 			#Cnfldns   ˢ��dns���棬����netinfo fldns
echo.
cecho #Ynipcfg		#Cn��������ip���޷���optionģʽ�н���ʹ�ã���ʹ�����������������ã�Net[����]��
cecho 		#Cn�ṩ��̬�������Զ���ȡ����ѡ�����ipcfg [��������] [static/dhcp] [IP] [Netmask] [Gateway] 
echo.
cecho #Yndnscfg		#Cn��������DNS���޷���optionģʽ�н���ʹ�ã���ʹ�����������������ã�Net[����]��
cecho 		#Cn�ṩ��̬�������Զ���ȡ����ѡ�����ipcfg [��������] [static/dhcp] [IP] 
echo.
cecho #Ynnetcfg		#Cn��������״̬���޷���optionģʽ�н���ʹ�ã���ʹ�����������������ã�Net[����]��
cecho 		#Cn�ṩ���á����á���������״̬������netcfg [��������] [on/off/re] 
echo.
cecho #Ynclear		#Cn��յ�ǰ�ն�����,�ṩѡ�his�������ʷ�������룩
echo.
cecho #Ynscan		#Cn��Ping���ù��ܣ�����optionģʽ��ʹ�á�
cecho 		#Cn��ʽΪ��scan [ip] [ping����] [����С] �� scan [��ʼip] to [��ֹip]��
cecho 		#CnҲ��ֱ��ʡ��ping����������С��ֱ�ӽ���Ĭ��ping�⣬
cecho 		#Cn�޷�����ԭ��ping��ôȫ�棬�����������ܻ���ֱ�ӵ���ԭ��ping��
echo.
echo.
cecho #Yninstall	#Cn��װDreamEnvt Terminal��ϵͳ����װ�󣬿�ֱ���ڡ����С���cmd��ֱ��ʹ��
cecho 		#CnDreamEnvt Terminal���ص��ĵ���������ߣ�Ҳ��ֱ�ӵ���DreamEnvtTerminal
cecho 		#Cn������Ϊ��decmd
echo.
cecho #Ynsetup		#Cn���ã��ṩ����ѡ�
cecho 			#Cnfolder �����ļ��У��������Կո�ָ� ��ʽΪ��setup folder [folder name]
cecho 			#Cnunfolder ɾ���ļ��У��������Կո�ָ� ��ʽΪ��setup unfolder [folder name]
cecho 			#Cntxt ʹ��ϵͳĬ�ϼ��±����ļ�����ʽΪ��setup txt [file name]
cecho 			#Cndel ɾ���ļ� �������Կո�ָ� ��ʽΪ��setup del [file name]
cecho 			#Cnfile �����ļ������ļ��������������Կո�ָ� ��ʽΪ��setup file [file name]
echo.
cecho #Ynkill		#Cnɱ�����̣��������Կո�ָ� ��ʽ��kill [process name]
cecho #Ynme		#Cn�鿴��ǰ��½�û��û���Ϣ
cecho #Yncmd		#Cn�л���ϵͳ�ն�
cecho #Ynps		#Cn�л���powershell
cecho #Ynfresh		#Cn�����ն�	
cecho #Ynquit		#Cn�˳��ն�
echo.
cecho #Cn[#YnInfo#Cn]��ǰdecmd��չ����δ��ȫ������ã����ڲ�����չ�����á�
echo.