#!/bin/bash
ansible -i hosts all -m shell -a 'ls'
