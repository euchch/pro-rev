In this folder we will have all provision scripts for the system on AZURE,
The provision scripts will use pulumi to manage all (most) of the reosources in the cloud,
Only difference is that pulumi needs 2 things:
1. Pulumi installed (which sucks)
2. Central location for resources set

We're going to fix that by using Azure Resource Manager to create a 'Tools' server with pulumi on it and that will be the one running the provision scripts
Or at list we'll try :)