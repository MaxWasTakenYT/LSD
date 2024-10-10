#!/bin/bash

usage() {
    echo -e "LSD" | figlet | lolcat
    echo -e "Note: in order for LSD to work, you need to install lolcat"
    echo -e "Usage for LSD: \n[--animate | -a > Runs LSD with animations]\n [--help | -h > Outputs usage and exits.]\n"
}

if [[ "$#" -eq 0 ]]; then
    ls -lah | lolcat
fi

while [[ "$#" -gt 0 ]]; do
    case "$1" in
        --animate|-a)
            ls -lah | lolcat -a --speed=400
            shift
            ;;
        --help|-h)
          usage
          shift
          ;;
        *)
            echo -e "Unknown option: $1"
            usage
            ;;
        esac
done
