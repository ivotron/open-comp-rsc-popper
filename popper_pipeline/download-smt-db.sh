#!/usr/bin/env bash

cd /home/lab
rm -fr smt
git clone https://github.com/ivotron/open-comp-rsc-popper-smt.git smt || true
git -C smt/ checkout
git -C smt/ pull
rm -fr /home/lab/.smt
mv smt/.smt /home/lab/
