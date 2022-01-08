#!/bin/bash

printf "%s: %s\n" "$2" "$(df -h $1 | awk /[0-9]/'{print $5}')"
