#!/bin/bash
rm -rf output
mkdir output
for directory in *; do
    if [ -d "${directory}" ] && [[ "${directory}" -ne "output" ]]; then
        pushd "${directory}"
        xelatex presentation.tex
        popd
        cp ${directory}/presentation.pdf output/${directory}.pdf
    fi
done
