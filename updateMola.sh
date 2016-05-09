#!bin/sh
Usage(){
	echo "更行mola 版本号脚本
	脚本使用： updateMola.sh push commit 内容"
}
CMT=$2
ACTION=$1

update(){
	cd /Users/wangxiaolong/RxJava/UpdateVersion
	git add .
	git ci $CMT
	git push origin master
	exit 1
}

die(){
	echo #pirnt
	echo "$*"
	Usage
	echo
	exit 1
}
case $ACTION in
	push )
update
		;;
		*)
die "输入参数错误"

esac