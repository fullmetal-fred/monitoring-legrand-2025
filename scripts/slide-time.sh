#!/bin/bash

# Function to calculate the total time in minutes
calculate_total_time() {
    local file="$1"
    local total_hours=0
    local total_minutes=0
    local total_seconds=0

    # Search for <PresenterTimer> tag and extract minutes and seconds
    while IFS= read -r line; do
        if [[ $line =~ \<PresenterTimer.*:minutes=\"?([0-9]+)\"?.*:seconds=\"?([0-9]+)\"? ]]; then
            minutes="${BASH_REMATCH[1]:-0}"
            seconds="${BASH_REMATCH[2]:-0}"

            # Convert minutes and seconds to minutes and add to total
            total_hours=$((total_hours + minutes / 60 ))
            total_minutes=$((total_minutes + ( minutes % 60 ) + ( seconds / 60 )))
            total_seconds=$((total_seconds + ( seconds % 60 )))
        fi
    done < "$file"

    total_hours=$((total_hours + total_minutes / 60))
    total_minutes=$((total_minutes % 60 + total_seconds / 60))
    total_seconds=$((total_seconds % 60))

    # echo "Total slide time:"
    # echo "Hours: $total_hours"
    # echo "Minutes: $total_minutes"
    # echo "Seconds: $total_seconds"

    if [[ $total_hours -gt 0 ]]; then
        printf "Total Slide time: %.2d:%.2d:%.2d\n" $total_hours $total_minutes $total_seconds
    else
        printf "Total Slide time: %.2d:%.2d\n" $total_minutes $total_seconds
    fi
}

# Main script
if [[ $# -ne 1 ]]; then
    echo "Usage: $0 <file.md>"
    exit 1
fi

file="$1"

# Check if file exists
if [[ ! -f "$file" ]]; then
    echo "File not found: $file"
    exit 1
fi

# Call the function to calculate the total time
calculate_total_time "$file"






