#!/bin/bash
for hour in {00..22}; do
    count=$(cat * | grep 'going to hit' | grep "2024-05-29 $hour" | wc -l)
    rounded_count=$(echo "scale=0; $count / 3600" | bc -l)
    echo "Hour $hour: $rounded_count"
done