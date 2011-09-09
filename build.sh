#!/bin/sh

git submodule update --init --recursive

cd docs
mkdir -p source
cp -R ../symfony-docs-pl/* source/
make html

cp -R _static/* build/html/
rm -R source