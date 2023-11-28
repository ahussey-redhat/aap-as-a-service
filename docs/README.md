# How to use this demo

## Setup
### Prequisites
1. You have access to an OpenShift cluster with Cluster Admin permissions
1. You have cloned the [demo repository](https://github.com/ahussey-redhat/aap-as-a-service.git)
    1. `git clone https://github.com/ahussey-redhat/aap-as-a-service.git`
    1. `cd aap-as-a-service`
1. You must have a valid `manifest.zip` file, which is stored in `1-bootstrap/manifest.zip`
1. It is recommended you create an Ansible Vault file called `secrets.yml`, which is stored in `1-bootstrap/group_vars/all/secrets.yml`
    1. This Vault file should contain the following variables:
        1. `snow_password` - ServiceNow account password
        1. `sso_oidc_secret` - Single Sign On client secret
        1. `ssh_private_key` - SSH private key used to interact with the aap-as-a-service-gitops repository
        1. `access_key_id` - AWS Access Key ID
        1. `secret_access_key` - AWS Secret Access Key
        1. `automation_hub_token` - Red Hat Automation Hub token
1. You will need to update the variables in `1-bootstrap/group_vars/all/vars.yml` to reflect your environment

### Bootstrap prerequisites

After an OpenShift cluster has been successfully provisioned, ensure you are logged into the cluster in preperation for issuing CLI commands.
```bash
cd ./1-bootstrap
ansible-playbook ./playbook.yml -v --vault-id @prompt
cd -
```
This will deploy all the required operators, and components used for this demonstration.

## Deploy an AAP instance
```bash
curl -k -X POST -H "Content-Type: application/json" -d "@test_deploy_curl.json" https://deploy-aap.apps.<cluster-name>.<base-domain>
```

## Modify an AAP instance
```bash
curl -k -X POST -H "Content-Type: application/json" -d "@test_modify_curl.json" https://modify-aap.apps.<cluster-name>.<base-domain>
```

## Destroy an AAP instance
```bash
curl -k -X POST -H "Content-Type: application/json" -d "@test_destroy_curl.json" https://destroy-aap.apps.<cluster-name>.<base-domain>
```
