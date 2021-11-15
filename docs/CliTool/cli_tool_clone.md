CLONE
=====

### Command

     yappescli clone --apiname "apiname"

### Descriptions with options

| Argument | Description                                                               |
|----------|---------------------------------------------------------------------------|
| apiname  | API name created in the remote(yappes.com), should be passed to clone it. |

CLONE - clone command will enable users to create a workspace in their
local setup for their API. Users can clone single api at a time and a
whole ypworkspace folder structure will be created the moment clone
command is executed. **Please don't change the default settings file
created as part of the clone process, as the file is used as base for
the syncing, pull, status and deploy process.**

CLONE Operation

              
                yappescli clone --apiname "DemoApiName"
                ✓ Fetching remote details....
                ✓ Summoning Files ....
                ✓ Updating Settings Files ....
                ✓ Clone command execution completed 
                Successfully Cloned the API  DemoApiName
              
            

**[CLI Commands List](cli_tool_commands.md)**
