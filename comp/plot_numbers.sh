#!/bin/bash         

label=$(echo $(cat /proc/sys/kernel/random/uuid)| cut -c 1-8);

smt run --executable=python --main=plot_numbers.py --reason='plot random numbers' --label=$label --tag=random $1

#cp $BASH_SOURCE data/$label"_run.sh"
