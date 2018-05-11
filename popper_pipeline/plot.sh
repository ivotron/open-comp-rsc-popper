#!/usr/bin/env bash
cd /home/lab
LABEL=plot-reexecution comp/plot_numbers.sh 1e2feb89.npy
smt diff plot-original plot-reexecution
