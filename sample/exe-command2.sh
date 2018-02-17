#!/bin/bash
ansible -i hosts all -m file -a 'path=/tmp/testing state=absent'
