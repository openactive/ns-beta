#!/bin/bash
set -e # exit with nonzero exit code if anything fails

# squash messages
git config --global push.default matching

# prepare extension-documentation-generator build
npm install

# clear and re-create the out directory
rm -rf out || exit 0;
mkdir out;

# go to the out directory and create a *new* Git repo
cd out
git init

# inside this git repo we'll pretend to be a new user
git config user.name "Travis CI"
git config user.email "travis@openactive.org"

cd ..

# Regenerate Beta file only
node ./node_modules/extension-documentation-generator/index.js beta.jsonld header.md with-issues > ./out/index.md
cp beta.jsonld ./out/

cd out

# The first and only commit to this new Git repo contains all the
# files present with the commit message "Deploy to GitHub Pages".
git add .
git commit -m "Deploy to GitHub Pages - Static"

# Force push from the current repo's master branch to the remote
# repo's gh-pages branch. (All previous history on the gh-pages branch
# will be lost, since we are overwriting it.) We redirect any output to
# /dev/null to hide any sensitive credential data that might otherwise be exposed.
# FIXME should be authorised via key
git push --force "https://${GH_TOKEN}@${GH_REF}" master:gh-pages

cd ..