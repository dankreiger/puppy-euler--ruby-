#!/bin/sh

source scripts/_ext/functions.sh

if ! [ -x "$(command -v ruby)" ]; then
  prereq_error "Ruby" "https://rvm.io" "https://www.ruby-lang.org"
  exit 1
elif ! [ -x "$(command -v bundle)" ]; then
  prereq_error "Bundler" "gem install bundler (or $(sudo gem install bundler) if you have permission errors)" "https://bundler.io/"
  exit 1
elif ! [ -x "$(command -v node)" ]; then
  prereq_error "Node" "https://github.com/nvm-sh/nvm" "https://nodejs.org"
  exit 1
elif ! [ -x "$(command -v npm)" ]; then
  prereq_error "NPM" "https://github.com/nvm-sh/nvm" "https://www.npmjs.com/get-npm"
  exit 1
elif ! [ -x "$(command -v yarn)" ]; then
  prereq_error "Yarn" "npm install -g yarn" "https://yarnpkg.com/"
  exit 1
else
  bundle install --path vendor
fi
