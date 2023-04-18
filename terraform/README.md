# Terraform technical test #

## Objective ##

You are working with a team that needs to create a role for their EC2, required functionality is allowing it to read the instance tags of other EC2s in the account that belong to the same team, and also read the tags on their team's bucket (called: ), all of the EC2s in question are tagged with 'AssetID'= '1337'.

1. The role and the policy have been created for you, complete the role policy attachment block to link them

2. The team in question want to pass in the role name as a variable on the command line, make the necessary TF changes to allow this in main.tf & variables.tf

3. The role itself is quite dramatically overprivileged, attempt to narrow down the permissions to the least privileges access that the team need.

4. The team would like to consume the role ARN in another process, create a terraform output block in outputs.tf to export this data for later usage.

5. An internal requirement has been released for IAM resources to be tagged based on their asset ownership, just as the teams EC2's already are. Add an "AssetID" = "1337" tag to all applicable resources, ideally covering future created resources too.
