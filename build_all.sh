#!/bin/sh
for D in *; do
    if [ -d "${F}" ]; then
        make -C ${D}
    fi
done
