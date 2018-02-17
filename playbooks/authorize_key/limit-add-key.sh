#!/bin/bash
HOSTS_LIST=$1
PLAYBOOK=$2
LIMITS=$3

run(){
echo " ansible hosts-list is below:\n please check it\n"
ansible-playbook -i $HOSTS_LIST --limit $LIMITS $PLAYBOOK --list-hosts

echo -n "Do you want run this?:(y/n) "
# -n 옵션은 뉴라인을 제거해 줍니다.

read runable
# var1 변수가 read에 의해 세트되기 때문에 var1 앞에 '$'가 없습니다. 주의하세요.

case $runable in  
  y)
    echo "Ansible is running...."
    ansible-playbook -i ../hosts --limit web add-ssh-keys.yml
    ;;
  *)

		echo "Ansible is not running"
		;;
  esac  
}

usage(){
	echo "-------------------------------------------------------------------------"
    echo "[ Usage ] $0 HOSTLISTS PLAYBOOK LISTS"
    echo ""
    echo "[ Usage ] $0 ../hosts add-ssh-keys.yml web"
    echo "-------------------------------------------------------------------------"
}

if [ $# -eq 3 ]
        then
            run
#elif [ $3 -eq 0 ]
#        then 
#            print "ttt"
else
        usage
        exit
fi
