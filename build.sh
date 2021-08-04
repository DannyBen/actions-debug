#!/usr/bin/env bash

git config --global user.email "bot@dannyb.co"
git config --global user.name "Automated Process"
git branch --delete temp 2> /dev/null || true
git checkout --orphan --branch temp
touch hello
git add . --all
git commit -am "commit by github actions"
git push --force --set-upstream origin temp
