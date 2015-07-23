#!/bin/bash
curl -i -d \
'<?xml version="1.0" encoding="UTF-8"?><sslTermination xmlns="http://docs.openstack.org/loadbalancers/api/v1.0" enabled="true" securePort="443" secureTrafficOnly="false"> 
<privatekey>-----BEGIN RSA PRIVATE KEY-----
Insert details of your private key here
-----END RSA PRIVATE KEY-----</privatekey>
<certificate>-----BEGIN CERTIFICATE-----
Insert cert details here
-----END CERTIFICATE-----</certificate>
<intermediateCertificate>-----BEGIN CERTIFICATE-----
Insert intermediate cert details here
-----END CERTIFICATE-----
-----BEGIN CERTIFICATE-----
Insert cert here
-----END CERTIFICATE-----
-----BEGIN CERTIFICATE-----
Insert cert here
-----END CERTIFICATE-----</intermediateCertificate>' \
-H 'X-Auth-Token: f382fda6-da20-408d-a5a9-f3ddd60d6dc0' \
-H 'Content-Type: application/xml' \
-H 'Accept: application/xml' \
-X PUT \
'https://ord.loadbalancers.api.rackspacecloud.com/v1.0/690913/loadbalancers/12345/ssltermination'
#replace 12345 above with your load balancer id
