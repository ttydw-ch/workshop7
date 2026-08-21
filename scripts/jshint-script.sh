#!/bin/bash

jshint --exclude="node_modules/" --reporter=unix . > JSHint-report 2>&1
status=$?

echo "JSHint scan completed with exit code: $status" >> JSHint-report

exit 0
