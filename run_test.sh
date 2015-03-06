#!/bin/sh
make qemu -C lab-1  --silent | ./test-lab1.py
make qemu -C lab-1i --silent | ./test-lab1.py
