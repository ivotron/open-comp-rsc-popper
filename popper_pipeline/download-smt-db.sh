#!/usr/bin/env bash

git config user.email foo@fighter.com
git config user.name 'Foo Fighter'

cd /home/lab
rm -fr smt
git clone https://github.com/ivotron/open-comp-rsc-popper-smt.git smt || true
git -C smt/ checkout
git -C smt/ pull
rm -fr /home/lab/.smt
mv smt/.smt /home/lab/
