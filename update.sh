#!/bin/sh

bundle exec jekyll build

git co gh-pages

cp -r _site/* .

git add ./

git commit -m "Updates autogenerated files"

git push

git co master
