#!/usr/bin/env just --justfile

# ansible stuff
run HOST *TAGS:
    cd ansible && ansible-playbook -b run.yml --limit {{ HOST }} {{ TAGS }}

# ansible vault (encrypt/decrypt/edit)
vault ACTION:
    cd ansible && EDITOR='code --wait' ansible-vault {{ ACTION }} vars/secrets.yml
