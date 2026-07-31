#!/bin/bash

PROFILES_DIR="$SCRIPT_DIR/profiles"


get_profiles() {

    profiles=()

    while IFS= read -r file
    do
        profiles+=("$file")
    done < <(find "$PROFILES_DIR" -name "*.profile" | sort)

}


show_profiles() {

    echo "Available Profiles"
    echo

    index=1

    for profile in "${profiles[@]}"
    do
        name=$(basename "$profile" .profile)
        echo "$index) $name"
        ((index++))
    done

    echo
}


select_profile() {

    read -p "Select profile: " choice

    selected_profile="${profiles[$((choice-1))]}"

    if [ -z "$selected_profile" ]; then
        echo "Invalid selection."
        exit 1
    fi

}