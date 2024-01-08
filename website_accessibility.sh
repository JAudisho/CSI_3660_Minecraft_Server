#!/bin/bash

website_url="35.239.151.29/index.php"
log_file="/home/website_check.txt"

check_website_accessibility() {
    http_response=$(curl -s -o /dev/null -w "%{http_code}" "$website_url")
    current_datetime=$(date +"%Y-%m-%d %H:%M:%S")

    if [ "$http_response" -eq 200 ]; then
        echo "$current_datetime - Website $website_url is accessible. Status code: $http_response" >> "$log_file"
    else
        echo "$current_datetime - Website $website_url is not accessible. Status code: $http_response" >> "$log_file"
    fi
}

check_website_accessibility

