#!/bin/bash

set -e

yarn install
yarn build
yarn run copy
cd src
yarn publish --no-git-tag-version --new-version $1
