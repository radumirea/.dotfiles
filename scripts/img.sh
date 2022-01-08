#!/bin/bash

source "`ueberzug library`"

ImageLayer -< <(
  ImageLayer::add [identifier]="img" [x]="$1" [y]="$2" [path]="$3"
)


