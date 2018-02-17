#!/bin/bash
ansible -i hosts all -m command -a 'rm -rf /tmp/testing removes=/tmp/testing'
