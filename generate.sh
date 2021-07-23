oneDay=86400

dayTime=`date -v +0d +%s`
weekNum=`date -v +0d +%u`
thisSunday=`expr $dayTime + \( 7 - $weekNum \) \* $oneDay`
newFilename=`date -r $thisSunday +%Y-%m-%d`".md"
dirName=`dirname $0`
absolutePath="${dirName}/${newFilename}"

if [ ! -f "$absolutePath" ];then
echo "本周工作：\n\n1、\n\n2、\n\n下周计划：\n\n1、\n\n2、\n\n" > $absolutePath
echo "创建文件${newFilename}完成"
else
echo "文件${newFilename}已存在"
fi
