#!/bin/bash

var=$(</etc/hosts)

if [[ "$var" == *"gdornic.42.fr"* ]]; then
    echo "Domain name already set up."
else
    sudo sh -c 'echo "127.0.0.1\tgdornic.42.fr" >> /etc/hosts'
    echo "Domain name has been set up."
fi