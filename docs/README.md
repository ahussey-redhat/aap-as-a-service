# How to use this demo

## Setup
### Bootstrap prerequisites

After an OpenShift cluster has been successfully provisioned, ensure you are logged into the cluster in preperation for issuing CLI commands.
```bash
cd ./1-bootstrap
ansible-playbook ./playbook.yml -v
cd -
```
This will deploy all the required operators, and components used for this demonstration.