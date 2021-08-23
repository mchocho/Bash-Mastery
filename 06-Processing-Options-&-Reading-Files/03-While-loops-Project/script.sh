#!/bin/bash

minutes=0
seconds=0

while getopts "m:s:" opt; do
  case "$opt" in
    m) minutes=$(($OPTARG * 60));;
    s) seconds=$OPTARG;;
    ?) echo "Unknown option $option.";;
  esac
done

interval=$(($minutes + $seconds))

while [ $interval -gt 0 ]; do
  if [ $interval -gt 1 ]; then
    echo "$interval seconds"
  else
    echo "$interval second"
  fi
  sleep 1
  interval=$(($interval - 1))
done

echo "Time's up!"
