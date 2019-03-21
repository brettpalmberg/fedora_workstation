#!/bin/bash

# Activate Virtual Environment
source ~/.pyenv/v_ansible/bin/activate

# Run Ansible Playbook
ansible-playbook -i inventory.yml --ask-become-pass bp_fedora_workstation.yml $@
