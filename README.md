## Ansible Playbook to Replicate BP Development Environment From Scratch

This playbook has been developed and used on Fedora Workstation: 29, 30.

### How to use this Playbook

#### Prerequisite Step: Install Ansible
  
1. Create Virtual Environment
```
mkdir ~/.pyenv && cd ~/.pyenv && python3 -m venv v_ansible
```
2.  Activate Virtual Environment
```
source v_ansible/bin/activate
```
3. Upgrade pip for good measure
```
python3 -m pip install --upgrade pip
```
4. Install Ansible in Virtual Environment
```
python3 -m pip install ansible
```

#### Prerequisite Step: Edit Variables
Review variables in `bp_fedora_workstation.yml`.  Variables are located in section `vars:`.
At a minimum, `my_home` should be updated to reflect your user home directory.

#### How to run Playbook (With Virtual Environment Activated):
Note: Make sure to "Activate" the virtual environment before trying to use Ansible (see step 2 above)

```
ansible-playbook -i inventory.yml --ask-become-pass bp_fedora_workstation.yml
```
#### OR

A bash script `configure.sh` is included in the same directory as this file. The script activates the ansible virtual environment and runs the ansible-playbook command above.
```
./configure.sh
```

When prompted, provide credentials for sudo.
