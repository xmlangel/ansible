# Docker 환경
Docker 의 ip 범위는 172.17.0.0/24일경우의 가정하에서 테스트함.

docker 에는 sshd 가 구동되고, 아이디는 kwang 비빌번호는 1234 로설정되어 있는 도커임.

xmlangel/sshd

## Ansible command 명령어

-ping 체크
 
 check-ping.sh

````
ansible -i hosts all -m ping
````

- 서버정보

check-setup.sh
```
ansible -i hosts all -m setup
```

- file 복사

copy-file.sh

```
ansible -i hosts all -m copy -a 'src=/etc/fstab dest=/tmp/fstab'
```

- file 정보

get-file-info.sh
```
ansible -i hosts all -m file -a 'path=/etc/fstab'
```
- 디렉토리생성

create-dir.sh
```
ansible -i hosts all -m file -a 'path=/tmp/test state=directory mode=700 owner=kwang'
```