#!/bin/bash


function run_on_mac {
docker run -it -p 8015:8000 \
       -v $(pwd):/home/lab \
       felix11h/docker-open-comp-rsc \
       /bin/bash -c \
       'cd /home/lab/comp/;
        screen -d -m smtweb --allips;
        source ../startup_messg_linux.sh;
        bash'
}

function run_on_linux {
docker run -it -p 127.0.0.1:8015:8000 \
       --user="$(id -u):$(id -g)" \
       -v $(pwd):/home/lab \
       felix11h/docker-open-comp-rsc \
       /bin/bash -c \
       'cd /home/lab/comp/;
        screen -d -m smtweb --allips;
        source ../startup_messg_linux.sh;
         bash'
}

function run_on_windows {
docker run -it -p 8015:8000 \
       -v $(pwd):/home/lab \
       felix11h/docker-open-comp-rsc \
       /bin/bash -c \
       'cd /home/lab/comp/;
        git config core.fileMode false;
        screen -d -m smtweb --allips;
        source ../startup_messg_windows7.sh;
        bash'
}

case "$OSTYPE" in
  solaris*)  ;;
  darwin*)  run_on_mac ;;
  linux*)   run_on_linux ;;
  bsd*)     run_on_windows ;;
  *)        echo "unknown: $OSTYPE" ;;
esac
