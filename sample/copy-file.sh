#!/bin/bash
ansible -i hosts all -m copy -a 'src=/etc/fstab dest=/tmp/fstab'
