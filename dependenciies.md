#!/bin/bash
yum install -y httpd
service httpd start
isExistApp = `pgrep httpd`
if [[ -n  $isExistApp ]]; then
    service httpd stop  
