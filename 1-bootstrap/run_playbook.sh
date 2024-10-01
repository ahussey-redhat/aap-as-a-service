#!/usr/bin/env bash
set -euo pipefail

ansible-playbook ./playbook.yaml -v --vault-password-file <(op item get --vault "Red Hat" "Ansible Vault" --fields label=password --reveal)