#!/bin/bash
set -e

# logrotate
sed -ri 's/daily/weekly/g' /etc/logrotate.d/nginx