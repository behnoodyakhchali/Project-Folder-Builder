#!/bin/bash


create_profile() {


    echo
    read -p "Profile name: " profile_name


    if [ -z "$profile_name" ]; then
        echo "Profile name cannot be empty."
        return
    fi


    profile_file="$PROFILES_DIR/$profile_name.profile"


    if [ -f "$profile_file" ]; then
        echo "Profile already exists."
        return
    fi


    echo
    echo "Enter folders."
    echo "Type DONE when finished."
    echo


    > "$profile_file"


    while true
    do

        read -p "> " folder


        if [ "$folder" == "DONE" ]; then
            break
        fi


        if [ -n "$folder" ]; then
            echo "$folder" >> "$profile_file"
        fi


    done


    echo
    echo "Profile created:"
    echo "$profile_file"

}