#!/bin/bash

create_folders() {

    profile_file="$1"
    destination="$2"


    if [ ! -f "$profile_file" ]; then
        echo "Profile not found."
        exit 1
    fi


    while IFS= read -r folder
    do

        # Ignore empty lines
        if [ -z "$folder" ]; then
            continue
        fi


        # Remove numbering prefix (example: 1-Media -> Media)
        folder_name=$(echo "$folder" | sed 's/^[0-9]*-//')


        mkdir -p "$destination/$folder_name"

        echo "✓ Created: $folder_name"


    done < "$profile_file"

}