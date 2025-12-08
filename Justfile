#!/usr/bin/env just --justfile

# ansible stuff
run:
    cd ansible && ansible-playbook -b run.yml

# ansible vault (encrypt/decrypt/edit)
vault ACTION:
    cd ansible && EDITOR='code --wait' ansible-vault {{ ACTION }} vars/secrets.yml
