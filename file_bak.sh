#!/bin/bash
#利用expect+scp自动下载或上传远程文件
DATE=`date +%Y%m%d`
P=/opt/web_inf_bak/$DATE/
[-d $P] || mkdir $P
expect -c "
set timeout 300
spawn scp -r root@**.*.*.**://Data2/WEB-INF $P
expect {
\"password\" {send \"******\n\r\";}
}
expect eof
"
