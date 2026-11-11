#!/bin/bash
if [ "$#" -ne 1]; then echo "Usage: /leap.sh <years>" fi
exit 1
year=$1
if [ "$year" -le 0 ]; then echo "Year must be positive" fi
exit 2
if ((year % 400 == 0 || (year % 4 == 0 && y
echo "$year is a leap year (366 days)"
else
echo "$year is not a leap year (365 days)"
fi