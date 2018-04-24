#!/bin/bash
# License:MIT
# Version:
# 	v1.0.1

PATH=/bin:/sbin:/usr/bin:/usr/sbin
export PATH

# 函数要先于调用时声明
function fun ()
{
    if [ "${1}" == 'start' ]; then
      s=0
      i=0
      while [ "${i}" -lt 5 ]
      do
	  i=$((${i}+1))
	  s=$((${s}+${i}))	   
      done
      echo '总和是：'${s}
    fi
}

shift
if [ "$#" -lt 2 ]; then
	fun 'start'; echo 'aaaaaaaaab'
else
	echo "$@"
fi

exit 0 #必须包含返回值


