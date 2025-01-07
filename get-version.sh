#!/bin/bash

MANIFEST_PATH=$1

cargo generate-lockfile --manifest-path $MANIFEST_PATH
OUTPUT=$(cargo pkgid --manifest-path $MANIFEST_PATH | cut -d# -f2 | cut -d: -f2)

echo "project-version: $OUTPUT"
echo "project-version=$OUTPUT" >> $GITHUB_OUTPUT
