# TODO
- [X] Configure Day0 ops
  - [X] Deploy AAP instance using TekTon + ArgoCD
    - [X] Use [aap-as-a-service-gitops](https://github.com/ahussey-redhat/aap-as-a-service-gitops/tree/main) repo
  - [X] Include metadata
    - [X] Instance requestor
    - [X] Instance approver
    - [X] ServiceNow transaction ID
  - [X] Configure break-glass/superuser account
    - The `admin` superuser account is created automatically by the AAP Operator
- [ ] Configure Day1 ops
  - [X] Upload manifest
  - [ ] Create organisation
    - [ ] maxHosts
- [ ] Configure Day2 ops
  - [X] external auth
    - [ ] ~~priviledged users~~ [can't map user to team or org using OIDC](https://docs.ansible.com/automation-controller/latest/html/administration/ent_auth.html#generic-oidc-settings)
    - [ ] ~~allowed users~~ [can't map user to team or org using OIDC](https://docs.ansible.com/automation-controller/latest/html/administration/ent_auth.html#generic-oidc-settings)
    - [X] permit external authentication using SSO

- [ ] Production-ise
  - [ ] App of Apps - for automated cleanup
  - [ ] Make app ingress FQDN dynamic
  - [ ] Have `curl` commands exit non-zero if HTTP status not 200
  - [ ] Make steps idempotent