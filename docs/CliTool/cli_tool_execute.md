EXECUTE
=======

### Command

     yappescli execute --apiname "apiname" --endpointname "endpointname" --run "remote/local" --config "config file path"

### Description with options

EXECUTE - This command will run the code associated to the endpoint
mentioned. "apiname" and "endpointname" is mandatory. if run and configs
are not provided defaults will be taken.

| Argument     | Description                                                                                                            |
|--------------|------------------------------------------------------------------------------------------------------------------------|
| apiname      | Respective API name for which the business logic needs to be executed.                                                 |
| endpointname | Respective endpoint name corresponding to the api name mentioned should be passed to execute it.                       |
| run          | argument to run the endpoint in remote or local environment. (default:local)                                           |
| config       | path to the file containing the configurations like yappes key,yappes environment,headers, body, query parameters etc. |

'--run' will enable user to specify the environment ie. Local/Remote .

-   Local will let the user execute the local code with out connecting
    to remote yappes server.
-   Remote will take the configurations from the configuration file
    mentioned in the corresponding argument and run the code in remote
    server and send response.

EXECUTE Operation local

              
                yappescli execute --apiname "DemoApiName" --endpointname "demo1" --run "local" 
                ✓ Fetching the code ...
                ✓ Running the Local Code
                ✓ Execute command completed
                { body: 'Hello from Yappes',
                  status: 200,
                  headers: [ 'Content-Type': 'application/json' ] }
              
            

The moment user clones the api a file 'runtime\_config' will be created
in this path 'ypworkspace/api\_name/test/' with the template required
for remote call.

User can create their own config file but the absolute path must be
passed at the run time

runtime\_config.json

              
                {
                    "body": {},
                    "queryParameters": {},
                    "headers": {},
                    "pathParameters": {},
                    "yappesEnvironment": "",
                    "yappesKey": ""
                }
              
            

EXECUTE Operation remote

              
                 yappescli execute --apiname "DemoApiName" --endpointname "demo1" --run "remote" --config "ypworkspace/DemoApiName/test/runtime_config.json" 
                ✓ Fetching remote details....
                ✓ Checking for status ....
                ✓ status command execution completed 
                ✓ passing the parameters
                ✓ Remote Code Running
                ✓ Execute command completed
                {"code":200,"status":"OK","data":{"message":"Custom Logic executed successfully","result":{"status":200,"body":"Hello from Yappes","headers":{"Content-Type":"application/json"}}}}
              
            

**[CLI Commands List](cli_tool_commands)**
