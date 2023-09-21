# Bootstrap

This directory contains a basic Ansible playbook, which will deploy all the prerequisites for the demonstration.
NOTE: The bootstrap directory would traditionally be a seperate repo

## How do?

*Ensure you are logged into to an OpenShift Cluster*

```bash
ansible-playbook playbook.yml -v --vault-id @prompt
```
