#!/usr/bin/env bash
if [[ "$TRAVIS_OS_NAME" == "osx" ]]; then
  . ./test/install-smoke-test.sh
else
  echo "TODO: Run smoke test via container"
fi
