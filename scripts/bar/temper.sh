#!/bin/bash

printf "%s %s" "" "$(curl -s wttr.in/?format="%t")"
