#!/bin/bash
ansible -i hosts all -m file -a 'path=/tmp/test state=directory mode=700 owner=kwang'
