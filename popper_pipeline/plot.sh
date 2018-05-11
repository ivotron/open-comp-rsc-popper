#!/usr/bin/env bash
LABEL=plot-reexecution ../generate_random_numbers.sh
smt diff plot-original plot-reexecution

