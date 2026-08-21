#!/bin/bash

docker pull zaproxy/zap-stable

docker run -i --rm \
  -v "$(pwd):/zap/wrk:rw" \
  zaproxy/zap-stable \
  zap-baseline.py \
  -t "https://kenken64.github.io/bit" \
  -r /zap/wrk/zap_baseline_report.html

echo $? > /dev/null
