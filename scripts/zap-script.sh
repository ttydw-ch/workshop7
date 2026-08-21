#!/bin/bash
docker pull zaproxy/zap-stable
docker run -v "$(pwd):/zap/wrk:rw" -i zaproxy/zap-stable zap-baseline.py -t "https://kenken64.github.io/bit" -r zap_baseline_report.html
echo $? > /dev/null
