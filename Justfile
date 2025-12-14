#!/usr/bin/env just --justfile

export ANSIBLE_VAULT_PASSWORD_FILE := "./.vault-password"

#ansible stuff
run:
    cd ansible && ansible-playbook -b run.yml

# ansible lint
lint:
    cd ansible && ansible-lint

# ansible vault (encrypt/decrypt/edit)
vault ACTION:
    cd ansible && ansible-vault {{ ACTION }} vars/secrets.yml
