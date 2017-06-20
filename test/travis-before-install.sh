#!/usr/bin/env bash
if [[ "$TRAVIS_OS_NAME" == "osx" ]]; then
  mv $TRAVIS_BUILD_DIR ~/.yadr
fi
