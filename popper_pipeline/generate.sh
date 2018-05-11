#!/usr/bin/env bash

cd /home/lab/
LABEL=generate-reexecution comp/generate_random_numbers.sh
smt diff generate-original generate-reexecution
