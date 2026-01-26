#!/usr/bin/env just --justfile

export ANSIBLE_VAULT_PASSWORD_FILE := "./.vault-password"

# ansible stuff
ansible-run:
    cd ansible && uv run ansible-playbook -b run.yml

# ansible lint
ansible-lint:
    cd ansible && uv run ansible-lint

# ansible vault (encrypt/decrypt/edit)
ansible-vault action:
    cd ansible && uv run ansible-vault {{ action }} vars/secrets.yml

docs:
    cd docs && uv run zensical serve -o
