STATUS
======

### Command

     yappescli status --apiname "apiname"

### Description with options

status - This command will enable users to view the status of each
endpoint in the api mentioned in the argument .This will provide the
user with the information like if the local code is ahead of the remote
or vice versa.

| Argument | Description                                                     |
|----------|-----------------------------------------------------------------|
| apiname  | Respective API name should be passed to fetch the status of it. |

STATUS Operation if the local code is ahead of the remote

              
    yappescli status --apiname "DemoApiName"
    ✓ Fetching remote details....
    ✓ Checking for status ....
    ✓ status command execution completed 
    'demo1' Local code is ahead of remote server.Use the command 'yappescli push' to sync with remote code.
              
            

STATUS Operation if the remote code is ahead of the local

              
    yappescli status --apiname "DemoApiName"
    ✓ Fetching remote details....
    ✓ Checking for status ....
    ✓ status command execution completed 
    'demo1' Remote code is ahead of your local machine.Use the command 'yappescli pull' to sync with your local code.
              
            

**[CLI Commands List](cli_tool_commands.md)**
