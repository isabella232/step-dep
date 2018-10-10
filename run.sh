#!/bin/sh

# Copyright 2018 Oracle

dep="$WERCKER_STEP_ROOT/dep/dep"

main() {
  display_version

  info "Running dep command"
  $dep "$WERCKER_DEP_COMMAND"
}

display_version() {
  $dep version
}

main;
