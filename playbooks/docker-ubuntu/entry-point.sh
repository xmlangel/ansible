#!/bin/bash
service ssh start
service rsyslog start && tail -f /var/log/syslog
