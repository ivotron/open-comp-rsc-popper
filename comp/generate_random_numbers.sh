#!/bin/bash

if [ -z "$LABEL" ]; then
  LABEL="generate-original"
fi

smt run \
  --executable=python \
  --main=comp/generate_random_numbers.py \
  --reason='generate random numbers' \
  --label=$LABEL \
  --tag=generate \
  comp/params.yaml
