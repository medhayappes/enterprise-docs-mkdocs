MSSQL Remote Connector
=======================

Yappes provides support for accessing the remote Oracle database.It's
been done through Yappes Object "ypOracleConnector". Before
instantiation,the Oracle datasource needs to be configured as "Remote
Sources" as explained in [Remote Sources](remote_sources)

ypOracleConnector - The instance of this object provides methods and
properties to handle the remote data sources. Below are the methods
exposed by the instance of ypOracleConnector object.

[TABLE]

| Property       | Type  | Description                                                       |
|----------------|-------|-------------------------------------------------------------------|
| remoteResponse | Array | Holds the results obtained from the execution of Oracle statments |

SELECT - Needs to be instantiated with the instance name same as the
"logicCodeName" defined in its Oracle remote source configurations.The
query results will be avaialble in the property remoteResponse
(logicCodeName.remoteResponse).SELECT supports query or select DML
operation.

Select Language

SELECT Operation Object Usage : GET /travel/airlines/list

              
                var reqPath = yprequest.body;
                var reqMethod = yprequest.params;

                var logicCodeName = new ypMssqlConnector('Mssql RemoteName');

                var statement = 'select ?? from test where id = ?' 
                var parameters = [['id','name'],7]

                logicCodeName.select(statement,parameters);

                ypresponse.status = 200
                ypresponse.body = logicCodeName.remoteResponse
                ypresponse.headers['Content-Type']="application/json";
              
              
                $reqPath = yprequest.body;
                $reqMethod = yprequest.params;
                
                $logicCodeName = new ypMssqlConnector('Mssql RemoteName');

                $statement='select ?? from test where id = (?)';
                $parameters= [['id','name'],7]
                  
                $logicCodeName->select($statement,$parameters);

                $ypresponse['body'] = $logicCodeName->remoteResponse; 
                $ypresponse['status'] = 200; 
                $ypresponse['headers']['Content-Type']='application/json';
              
              
                reqPath = yprequest['path']
                reqMethod = yprequest['method']
                
                logicCodeName = ypMssqlConnector('Mssql RemoteName');
                  
                statement = 'select ?? from test where id = ?' 
                parameters = [['id','name'],7]
                  
                logicCodeName.select(statement,parameters)
                  
                ypresponse['status'] = 200
                ypresponse['body'] = logicCodeName.remoteResponse
                ypresponse['headers']={'Content-Type':'application/json}'
              
            

EXECUTE - Needs to be instantiated with the instance name same as the
"logicCodeName" defined in its Oracle remote source configurations.The
query results will be avaialble in the property remoteResponse -
logicCodeName.remoteResponse. EXECUTE support insert and update DML
operations.

Select Language

EXECUTE Operation Object Usage : POST /travel/airlines
Data:{"id":1,"name":"Flighttest"}

              
                  var reqPath = yprequest.path; 
                  var reqMethod = yprequest.method; 

                  var reqPayload = yprequest.body;

                  var logicCodeName = new ypMssqlConnector('Mssql RemoteName');

                  var statement = "insert into dummyAirline set ??";
                  var parameters = reqPayload;

                  logicCodeName.execute(statement,parameters);

                  ypresponse.status = 200
                  ypresponse.body = logicCodeName.remoteResponse
                  ypresponse.headers['Content-Type']="application/json";
              
              
                  $reqPath = yprequest.path; 
                  $reqMethod = yprequest.method; 

                  $reqPayload = yprequest.body;

                  $logicCodeName = new ypMssqlConnector('Mssql RemoteName');

                  $statement="insert into dummyAirline values (?,?)";
                  $parameters=["id"=>1,"name"=>"Flighttest"]

                  $logicCodeName->execute($statement,$parameters);

                  $ypresponse['body'] = $logicCodeName->remoteResponse; 
                  $ypresponse['status'] = 200; 
                  $ypresponse['headers']['Content-Type']='application/json';
              
              
                  reqPath = yprequest['path']
                  reqMethod = yprequest['method']
                
                  logicCodeName = ypMssqlConnector('Mssql RemoteName');
                  
                  statement = 'insert into dummyAirline set ??'
                  parameters = reqPayload
                
                  logicCodeName.execute(statement,parameters)
                
                  ypresponse['status'] = 200
                  ypresponse['body'] = logicCodeName.remoteResponse
                  ypresponse['headers'] = {'Content-Type':"application/json"}              
              
            

Next we will see in detail about the Oracle Connectors["Next : Oracle
Connectors"](jso_oracle_connect.md)