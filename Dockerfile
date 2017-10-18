FROM xmlangel/python

#ANSIBLE
RUN sed -i 's/security.ubuntu.com/ftp.daum.net/g' /etc/apt/sources.list
RUN apt-get update \
&& apt-get install -y software-properties-common \
&& apt-add-repository ppa:ansible/ansible \
&& apt-get update && apt-get install ansible -y
#ADD home/hosts /etc/ansible/hosts
#ADD home/ansible.cfg /etc/ansible/ansible.cfg
