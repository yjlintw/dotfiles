#!/usr/bin/env bash
if [[ "$TRAVIS_OS_NAME" == "osx" ]]; then
  cd ~/.yadr
  rake install
else
  echo "TODO: Docker build here"
fi
