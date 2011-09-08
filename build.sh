#!/bin/sh

git submodule update --init --recursive

cd docs
cp -R ../symfony-docs-pl/* source/
make html

cp -R source/_static/* build/html/