#!/bin/bash

########################################
# Project Folder Builder
# Version 0.1.1
########################################


SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"


source "$SCRIPT_DIR/lib/ui.sh"
source "$SCRIPT_DIR/lib/menu.sh"
source "$SCRIPT_DIR/lib/profile.sh"
source "$SCRIPT_DIR/lib/folders.sh"
source "$SCRIPT_DIR/lib/create_profile.sh"



while true
do

    show_header

    show_main_menu

    get_menu_choice


    case $choice in


        1)

            get_profiles

            show_profiles

            select_profile


            echo
            read -p "Destination folder: " destination


            destination=${destination//\'/}
            destination=${destination//\"/}


            echo
            echo "Creating folders..."
            echo


            create_folders "$selected_profile" "$destination"


            echo
            echo "Done!"

            sleep 1

        ;;


        2)

            create_profile

            sleep 1

        ;;


        5)

            clear
            echo "Thank You!"
            exit 0

        ;;


        *)

            echo
            echo "Option not available yet."
            sleep 1

        ;;


    esac


done