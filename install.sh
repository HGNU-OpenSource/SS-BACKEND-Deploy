#!/bin/sh
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH
clear;
echo '================================================================';
echo '       Shadowsocks ManyUser Backend Deploy Script      ';
echo ' https://github.com/HGNU-OpenSource/SS-BACKEND-Deploy';
echo '       Powered By HGNU OpenSource Group:Tony ';
echo '================================================================';
function CheckSystem()
{
egrep -i "centos" /etc/issue && SysName='centos';
egrep -i "debian" /etc/issue && SysName='debian';
egrep -i "ubuntu" /etc/issue && SysName='ubuntu';
}
function InputIp()
{
	read -p '[Notice] Please input server ip:' Domain;
	[ "$Domain" != '' ] && echo '[OK] Your server ip is:' && echo $Domain;
}
function InputMysqlPass()
{
	read -p '[Notice] Please input MySQL password:' MysqlPass;
	if [ "$MysqlPass" == '' ]; then
		echo '[Error] MySQL password is empty.';
		InputMysqlPass;
	else
		echo '[OK] Your MySQL password is:';
		echo $MysqlPass;
	fi;
}
function InputMysqlHost()
{
	read -p '[Notice] Please input MySQL Host:' MysqlHost;
	if [ "$MysqlPass" == '' ]; then
		echo '[Error] MySQL Host is empty.';
		InputMysqlHost;
	else
		echo '[OK] Your MySQL Host is:';
		echo $MysqlHost;
	fi;
}
function InputMysqlUser()
{
	read -p '[Notice] Please input MySQL User:' MysqlUser;
	if [ "$MysqlPass" == '' ]; then
		echo '[Error] MySQL User is empty.';
		InputMysqlUser;
	else
		echo '[OK] Your MySQL User is:';
		echo $MysqlUser;
	fi;
}
function InputMysqlDataBase()
{
	read -p '[Notice] Please input MySQL DataBaseName:' MysqlDataBase;
	if [ "$MysqlPass" == '' ]; then
		echo '[Error] MySQL DataBaseName is empty.';
		InputMysqlDataBase;
	else
		echo '[OK] Your MySQL DataBaseName is:';
		echo $MysqlDataBase;
	fi;
}
function InstallBasePackages()
{
	if [ "$SysName" == 'centos' ]; then
	
			yum -y install $packages; 
		done;
	else
			apt-get install -y python-pip git python-m2crypto supervisor  --force-yes
			pip installl cymysql ;
		done;
	fi;
}
