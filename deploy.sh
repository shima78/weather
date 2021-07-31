#!/usr/bin/env sh

set -e

npm run build

cd dist

git init
git add -A
git commit -m 'New Deployment'
git push -f https://github.com/shima78/weather.git master:gh-pages

cd -
