#!/bin/sh

ssh-keygen -t rsa -C "EMAIL ADDRESS"

eval "$(ssh-agent -s)"

ssh-add ~/.ssh/id_rsa
