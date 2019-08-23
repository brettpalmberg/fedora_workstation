#!/bin/bash

# Activate Virtual Environment
source ~/.pyenv/v_ansible/bin/activate

# Run Ansible Playbook
ansible-playbook -i inventory.yml --ask-become-pass fedora_workstation.yml $@
