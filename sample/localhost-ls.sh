#!/bin/bash
ansible all -i "localhost," -c local -m shell -a 'ls'
