#!/bin/bash
curl -i \
-H "X-Auth-Token: $1" \
-H 'Accept: application/xml' \
'https://ord.loadbalancers.api.rackspacecloud.com/v1.0/690913/loadbalancers/12345'
# number at the end after loadbalancers should be your number from the id field
