#!/bin/sh
for D in *; do
    if [ -d "${D}" ]; then
        make -C ${D} clean
        echo ${D}
    fi
done
