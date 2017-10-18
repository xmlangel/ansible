FROM xmlangel/python

#ANSIBLE
RUN sed -i 's/security.ubuntu.com/ftp.daum.net/g' /etc/apt/sources.list
RUN sudo apt-get update
RUN sudo apt-get install -y software-properties-common
RUN sudo apt-add-repository ppa:ansible/ansible
RUN sudo apt-get update && sudo apt-get install ansible -y
#ADD home/hosts /etc/ansible/hosts
#ADD home/ansible.cfg /etc/ansible/ansible.cfg
