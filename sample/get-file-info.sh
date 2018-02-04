#!/bin/bash
ansible -i hosts all -m file -a 'path=/etc/fstab'
