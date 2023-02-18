#!/bin/bash
ansible all -m shell -a 'echo -e "[AppStream]\ndescription="App Stream Repository"\nbaseurl=http://content.example.com/AppStream\ngpgcheck=1\nenable=0\ngpgkey=http://content.example.com/AppStream/RPM-GPG-KEY-redhat-release" > /etc/yum.repos.d/rhel-appstream.repo'
ansible all -m shell -a 'echo -e "[BaseOS]\ndescription="Base OS Repository"\nbaseurl=http://content.example.com/BaseOS\ngpgcheck=1\nenable=0\ngpgkey=http://content.example.com/BaseOS/RPM-GPG-KEY-redhat-release" > /etc/yum.repos.d/rhel-baseos.repo'
