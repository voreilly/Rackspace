curl -i -d \
'<?xml version="1.0" encoding="UTF-8"?><credentials xmlns="http://docs.rackspacecloud.com/auth/api/v1.1" username="companyname" key="03dde0aeae2d44723cf9dace29"/>' \
-H 'Content-Type: application/xml' \
-H 'Accept: application/xml' \
'https://identity.api.rackspacecloud.com/v1.1/auth'
