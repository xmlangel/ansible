#!/bin/bash
ansible all -i "localhost," -c local -m shell -a 'echo hello world'
ansible all -i "localhost," -c local -m shell -a 'echo hello world'
