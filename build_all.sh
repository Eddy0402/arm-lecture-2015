#!/bin/sh
for D in *; do
    if [ -d "${D}" ]; then
        make -C ${D}
    fi
done
