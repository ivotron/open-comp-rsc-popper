#!/bin/bash         

label=$(echo $(cat /proc/sys/kernel/random/uuid)| cut -c 1-8);

smt run --executable=python --main=comp/generate_random_numbers.py --reason='generate random numbers' --label=$label --tag=random comp/params.py

#cp $BASH_SOURCE comp/data/$label"_run.sh"
