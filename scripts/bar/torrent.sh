#!/bin/bash

#print upload and download speed from transmission-daemon
transmission-remote -l | tail -1 | transmission-remote -l | tail -1 | awk '{ 
                               if ($4 > 99) us=sprintf("%.1f %s", $4/1024, "M/s"); 
                               else us=$4" K/s"; 
                               if ($5 > 99) ds=sprintf("%.1f %s", $5/1024, "M/s");
                               else ds=$5" K/s";
                               printf " %8s  %8s", ds, us;}'

