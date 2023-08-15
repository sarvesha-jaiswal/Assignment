#!/bin/bash

# Updated URL of the data
URL="https://www.amfiindia.com/spages/NAVAll.txt"

# Fetch data from the URL and save it to a temporary file
curl -s "$URL" > temp_data.txt

# Extract Scheme Name and Asset Value fields and save them in a TSV file
awk -F ';' '/^Open Ended Schemes/,/^$/ { if ($0 !~ /^Open Ended Schemes/ && $0 !~ /^$/) print $4 "\t" $5 }' temp_data.txt > nav_data.tsv

# Clean up: Remove the temporary file
rm temp_data.txt

echo "Data extracted and saved to nav_data.tsv"

