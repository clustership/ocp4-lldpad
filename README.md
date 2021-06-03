# Support for LLDP protocol on Openshift


## Deploy on openshift

```bash
oc new-project lldpd-api
oc apply -f resources/service-account.yml
oc apply -f resources/daemonset-install.yml
```


## Use it

```bash
oc exec $(oc get pods -l app=lldpd  -o name) -- lldpctl -f json | jq .
```
