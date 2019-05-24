#!/bin/bash
MAX_JOB_SIZE=${MAX_JOB_SIZE:=1048576}

echo "Running beanstalkd /usr/bin/beanstalkd -b /var/lib/beanstalkd/ -z $MAX_JOB_SIZE"

/usr/bin/beanstalkd -b /var/lib/beanstalkd/ -z $MAX_JOB_SIZE