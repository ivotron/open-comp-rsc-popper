#!/bin/bash

if [ -z "$LABEL" ]; then
  LABEL="plot-original"
fi

smt run \
  --executable=python \
  --main=comp/plot_numbers.py \
  --reason='plot random numbers' \
  --label=$LABEL \
  --tag=random $1
