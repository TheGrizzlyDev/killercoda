#!/bin/bash

for file in "WORKSPACE" "BUILD" ".bazelversion"; do
    test -f "/root/hello-world/${file}" || exit 1
done