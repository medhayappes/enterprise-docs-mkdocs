DEPLOY
======

### Command

    yappescli deploy --apiname "XYZ" --endpointname "ABC"

### Description with options

Deploy command is used to deploy the latest business logic changes from
local to remote.

| Argument       | Description                                                                                            |
|----------------|--------------------------------------------------------------------------------------------------------|
| --apiname      | API Name for which the business logic needs to be deployed to remote.                                  |
| --endpointname | Endpoint Name associated with the api for which the business logic needs to be synced with the remote. |

**NOTE: Deploy command only works on endpoint level.**

Deploy command internally execute the "status" command to check the
readiness of the items.

-   If the local endpoint business logic is latest, then the changes are
    directly deployed into the remote.
-   If the local and remote business logic code is already 'in-sync'
    then the deploy process wont be executed.
-   If the local code is not latest which means the remote is latest
    first, then the command will intimate to pull the code from remote
    for sync and command will be terminated.

&nbsp;

            
            
        yappescli deploy --apiname "XYZ" --endpointname "ABC"           
        ✓ Execution starts...
        ✓ Checking the apiname and endpointname...
        ✓ Getting the latest code from local...
        ✓ Deploying the code base to remote...
        Successfully Deployed the local code to remote.
        ✓ Deploy command execution completed  
            
            
            

[CLI Commands List](cli_tool_commands.md)
