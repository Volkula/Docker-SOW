#!/bin/bash
yum-config-manager --add-repo http://repository:8080/tz.repo
yum install -y hello-world --disablerepo=* --enablerepo=tz-repo