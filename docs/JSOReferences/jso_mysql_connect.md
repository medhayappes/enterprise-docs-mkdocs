MySQL Remote Connector
======================

Yappes provides support for accessing the **remote MySQL database**.

It's
been done through Yappes Object **ypMysqlConnector**. Before
instantiation,the MySQL datasource needs to be configured as **Remote
Sources** as explained in [Remote Sources](jso_remote_connect.md)

**ypMysqlConnector** - The instance of this object provides methods and
properties to handle the remote data sources. Below are the methods
exposed by the instance of ypMysqlConnector object.

[TABLE]

| Property       | Type  | Description                                                      |
|----------------|-------|------------------------------------------------------------------|
| remoteResponse | Array | Holds the results obtained from the execution of MySQL statments |

**SELECT** - Needs to be instantiated with the instance name same as the
"logicCodeName" defined in its MySQL remote source configurations.The
query results will be avaialble in the property remoteResponse
(logicCodeName.remoteResponse).SELECT supports query or select DML
operation.

Select Language

SELECT Operation Object Usage : GET /travel/airlines/list

              
                  var reqPath = yprequest.path; // provides "/travel/airlines/list"

                  var reqMethod = yprequest.method; // provides "GET"

                  var logicCodeName = new ypMysqlConnector('Mysql RemoteName');

                  var statement = "select ?? from dummyAirline where country=?";
                  var parameters = [[name,code],"india"];

                  logicCodeName.select(statement,parameters);

                  ypresponse.status = 200
                  ypresponse.body = logicCodeName.remoteResponse
                  ypresponse.headers['Content-Type']="application/json";
              
              
                  $logicCodeName = new ypMysqlConnector('Mysql RemoteName');

                  $statement="SELECT name,code from dummyAirline where country=?;";

                  $parameters=array('data'=>array('india'),'bind'=>'s');
                  
                  $logicCodeName->select($statement,$parameters);

                  $ypresponse['body'] = $logicCodeName->remoteResponse; 
                  $ypresponse['status'] = 200; 
                  $ypresponse['headers']['Content-Type']='application/json';
              
              
                  reqPath = yprequest['path']; // provides "/travel/airlines/list"
                  
                  reqMethod = yprequest['method']; // provides "GET"
                  
                  logicCodeName = ypMysqlConnector('Mysql RemoteName');
                  
                  statement = "select ?? from dummyAirline where country=?";
                  
                  parameters = [[name,code],"india"];
                  
                  logicCodeName.select(statement,parameters);
                  
                  ypresponse['status'] = 200
                  ypresponse['body'] = logicCodeName.remoteResponse
                  
              
            

**EXECUTE** - Needs to be instantiated with the instance name same as the
"logicCodeName" defined in its MySQL remote source configurations.The
query results will be avaialble in the property remoteResponse -
logicCodeName.remoteResponse. EXECUTE support insert and update DML
operations.

Select Language

EXECUTE Operation Object Usage : POST /travel/airlines
Data:{"name":"YA1","code":"yapp123","country":"India"}

              
                  var reqPath = yprequest.path; // provides "/travel/airlines"

                  var reqMethod = yprequest.method; // provides "GET"

                  var reqPayload = yprequest.body;

                  var logicCodeName = new ypMysqlConnector('Mysql RemoteName');

                  var statement = "insert into dummyAirline set ?";
                  var parameters = reqPayload;

                  logicCodeName.execute(statement,parameters);

                  ypresponse.status = 200
                  ypresponse.body = logicCodeName.remoteResponse
                  ypresponse.headers['Content-Type']="application/json";
              
              
                  $logicCodeName = new ypMysqlConnector('Mysql RemoteName');

                  $statement="UPDATE dummyAirline SET name=? where code=? ";

                  $parameters=array('data'=>array('YA2','yapp123'),'bind'=>'ss');

                  $logicCodeName->execute($statement,$parameters);

                  $ypresponse['body'] = $logicCodeName->remoteResponse; 
                  $ypresponse['status'] = 200; 
                  $ypresponse['headers']['Content-Type']='application/json';
              
              
                reqPath = yprequest['path']; // provides "/travel/airlines"
                
                reqMethod = yprequest['method']; // provides "GET"
                
                reqPayload = yprequest['body'];
                
                logicCodeName = ypMysqlConnector('Mysql RemoteName');
                
                statement = "insert into dummyAirline set ?";
                
                parameters = reqPayload;
                
                logicCodeName.execute(statement,parameters);
                
                ypresponse['status'] = 200
                ypresponse['body'] = logicCodeName.remoteResponse
                ypresponse['headers'] = {'Content-Type':"application/json"}              
              
            

Next we will see in detail about the Mongo Connectors

[**Next  : Mongo DB
Remote Connectors**](jso_mongo_connect.md)