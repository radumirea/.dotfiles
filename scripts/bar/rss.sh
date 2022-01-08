#!/bin/bash

pgrep -f newsboat && exit
newsboat -x reload
printf "%s:%s" " " "$(newsboat -x print-unread | cut -d' ' -f1)"
