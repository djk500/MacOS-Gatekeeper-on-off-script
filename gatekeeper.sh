#!/bin/bash

# Functie om Gatekeeper in te schakelen
enable_gatekeeper() {
    sudo spctl --master-enable
}

# Functie om Gatekeeper uit te schakelen
disable_gatekeeper() {
    sudo spctl --master-disable
}

# Functie om de status van Gatekeeper te controleren
check_gatekeeper_status() {
    spctl --status
}

# Hoofdmenu
main_menu() {
    echo "1. Gatekeeper inschakelen"
    echo "2. Gatekeeper uitschakelen"
    echo "3. Gatekeeper-status controleren"
    echo "4. Afsluiten"
    read -p "Kies een optie: " choice

    case "$choice" in
        1) enable_gatekeeper ;;
        2) disable_gatekeeper ;;
        3) check_gatekeeper_status ;;
        4) exit ;;
        *) echo "Ongeldige keuze. Probeer opnieuw." ;;
    esac
}

# Start het hoofdmenu
main_menu
