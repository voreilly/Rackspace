#!/bin/bash
curl -i -d \
'<?xml version="1.0" ?> 
<instance xmlns="http://docs.openstack.org/database/api/v1.0" name="north2" flavorRef="'$2'">
<databases> 
    <database name="databasename" character_set="utf8" collate="utf8_general_ci" />
</databases>
<users>
   <user name="root" password="nicelongcomplicatedpassword">
    <databases>
	<database name="databasename"/>
    </databases>
    </user>
</users> 
<volume size="10" /> 
</instance>' \
-H "X-Auth-Token: $1" \
-H 'Content-Type: application/xml' \
-H 'Accept: application/xml' \
'https://dfw.databases.api.rackspacecloud.com/v1.0/690913/instances'
