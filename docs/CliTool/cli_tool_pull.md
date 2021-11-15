PULL
====

### Command

    yappescli pull --apiname "XYZ" --endpointname "ABC"

### Description with options

"pull" command used to fetch the latest code from remote to the local
system. Fetch works at the api level and/or at the endpoint level as
well.

| Argument       | Description                                                                                           |
|----------------|-------------------------------------------------------------------------------------------------------|
| --apiname      | API Name for which the business logic needs to be fetched from remote.                                |
| --endpointname | Endpoint Name associated with the api for which the business logic needs to be synced with the local. |

If your local endpoint business logic is not latest compared to the
remote business logic. You can directly use the pull command.

            
                
                yappescli pull --apiname "XYZ"
                ✓ Execution starts....
                ✓ Collecting api and its endpoint details.
                ✓ Making pull request to remote.
                'AAA' Remote code was ahead of your Local code repo. Syncing is done. Now both the Local and Remote repo are in-sync.
                'BBB' Remote code was ahead of your Local code repo. Syncing is done. Now both the Local and Remote repo are in-sync. 
                ✓ Pull command execution completed.
            
            

Also we can mention the specific endpointname to pull

              
                
                yappescli pull --apiname "XYZ" --endpointname "AAA"
                ✓ Execution starts....
                ✓ Collecting api and its endpoint details.
                ✓ Making pull request to remote.
                'AAA' Remote code was ahead of your Local code repo. Syncing is done. Now both the Local and Remote repo are in-sync. 
                ✓ Pull command execution completed
              
            

If your local endpoint business logic is latest one compared to the
remote, It will give you the following message as Local code is the
latest one please use the command 'yappes deploy' to deploy into the
remote.

              
                
                yappescli pull --apiname "XYZ"
                ✓ Execution starts....
                ✓ Collecting api and its endpoint details.
                ✓ Making pull request to remote.
                'AAA' Local is having the latest Code. Once you have done with your update use 'yappescli deploy' command to push it to Remote. 
                'BBB' LLocal is having the latest Code. Once you have done with your update use 'yappescli deploy' command to push it to Remote.
                ✓ Pull command execution completed
              
            

If your local and remote endpoint business logics are having the same
time it shows the message as the already-in sync.

              
                
                yappescli pull --apiname "XYZ"
                ✓ Execution starts....
                ✓ Collecting api and its endpoint details.
                ✓ Making pull request to remote.
                'AAA' Local and Remote are already in-sync. 
                'BBB' Local and Remote are already in-sync. 
                ✓ Pull command execution completed
              
            

[CLI Commands List](cli_tool_commands)
