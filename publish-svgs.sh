#!/bin/sh -xe

git checkout gh-pages
git config user.name `hostname`
git config user.email "no-reply@jenkins.io"
cp -R target/svg/* jenkins-stats/svg/
git add jenkins-stats/svg
git commit -am "Generating stats" || true
git push git@github.com:jenkins-infra/infra-statistics.git gh-pages
