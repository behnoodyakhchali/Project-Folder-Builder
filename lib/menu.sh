#!/bin/bash

show_main_menu() {

    echo "=========================================="
    echo "        Project Folder Builder"
    echo "              Version 0.1.1"
    echo "=========================================="
    echo

    echo "1) Build folders"
    echo "2) Create new profile"
    echo "3) Edit profile"
    echo "4) Delete profile"
    echo "5) Exit"
    echo

}


get_menu_choice() {

    read -p "Choose: " choice

}