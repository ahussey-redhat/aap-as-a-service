# How to use this demo

## Setup
### Prequisites
1. You have access to an OpenShift cluster with Cluster Admin permissions
1. You have cloned the [demo repository](https://github.com/ahussey-redhat/aap-as-a-service.git)
    1. `git clone https://github.com/ahussey-redhat/aap-as-a-service.git`
    1. `cd aap-as-a-service`

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
