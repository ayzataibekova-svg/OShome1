#!/bin/bash
if [ "$#" ne 2]; then echo "Usage: ./convert.sh <number> <unit>" exit 1 fi
num=$1 unit=$2

if ((num < 0)); then echo "Number must not be negative" exit 3 fi
case $unit in km | KM)
echo "$num km = $((num * 1000)) m";; m|M)
echo "$num m = $((num * 100)) cm";; h|H)
echo "$num h = $((num * 60)) min";; min|MIN)
echo "$num min = $((num * 60)) s";; kg|KG)
echo "$num kg = $((num * 1000)) g";; *)
echo "Unknown unit: $unit" echo "Units: km mh min kg" exit 2;; esac