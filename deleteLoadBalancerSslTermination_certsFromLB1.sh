#!/bin/bash
curl -i  \
-H 'X-Auth-Token: f382fda6-da20-408d-a5a9-f3ddd60d6dc0' \
-H 'Content-Type: application/xml' \
-H 'Accept: application/xml' \
-X DELETE \
'https://ord.loadbalancers.api.rackspacecloud.com/v1.0/690913/loadbalancers/12345/ssltermination'
# replace 12345 with your load balancer id
