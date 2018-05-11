#!/usr/bin/env bash

LABEL=generate-reexecution ../generate_random_numbers.sh
smt diff generate-original generate-reexecution
