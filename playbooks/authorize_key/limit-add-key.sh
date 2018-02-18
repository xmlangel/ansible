#!/bin/bash
HOSTS_LIST=$1
PLAYBOOK=$2
LIMITS=$3

run(){
echo " ansible hosts-list is below:\n please check it\n"
ansible-playbook -i $HOSTS_LIST $LIMITS $PLAYBOOK --list-hosts

echo -n "Do you want run this?:(y/n) "
# -n 옵션은 뉴라인을 제거해 줍니다.

read runable
# var1 변수가 read에 의해 세트되기 때문에 var1 앞에 '$'가 없습니다. 주의하세요.

case $runable in  
  y)
    echo "Ansible is running...."
    ansible-playbook -i $HOSTS_LIST $LIMITS $PLAYBOOK
    ;;
  *)

		echo "Ansible is not running"
		;;
  esac  
}

usage(){
	echo "-------------------------------------------------------------------------"
    echo "[ Usage ] $0 [HOSTLISTS] [PLAYBOOK] <LIMITS>"
    echo ""
    echo "[ Usage ] $0 ../hosts add-ssh-keys.yml web"
    echo "ansible-playbook -i hosts web add-ssh-keys.yml --list-hosts"
    echo "ansible-playbook -i hosts --limit web add-ssh-keys.yml"

    echo "-------------------------------------------------------------------------"
}

if [ $# -ge 2 ]
        then
             if [ -z "$3" ]
                then
                   echo "No arguments supplied in limit. It will set all "
              else 
              LIMITS="--limit $3"

             fi
            run
else
        usage
        exit
fi
