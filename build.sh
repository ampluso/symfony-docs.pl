#!/bin/sh

git submodule update

cd docs
cp -R ../symfony-docs-pl/* source/
make html

cp -R source/_static/* build/html/