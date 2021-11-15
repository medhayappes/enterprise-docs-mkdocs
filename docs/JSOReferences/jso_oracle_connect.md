Oracle Remote Connector
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

SELECT Operation Object Usage : GET /comic/dc/characterslist

              
                var reqPath = yprequest.body;
                var reqMethod = yprequest.params;

                var logicCodeName = new ypOracleConnector('Oracle RemoteName');

                var statement = 'SELECT * FROM no_example where name=:datas';
                var parameters = {':datas':'I am Batman'};

                logicCodeName.select(statement,parameters);

                ypresponse.status = 200
                ypresponse.body = logicCodeName.remoteResponse
                ypresponse.headers['Content-Type']="application/json";
              
              
                $reqPath = yprequest.body;
                $reqMethod = yprequest.params;
                
                $logicCodeName = new ypOracleConnector('Oracle RemoteName');

                $statement = 'SELECT * FROM no_example where name=:datas';
                $parameters = array(':datas'=>I am Batman);
                  
                $logicCodeName->select($statement,$parameters);

                $ypresponse['body'] = $logicCodeName->remoteResponse; 
                $ypresponse['status'] = 200; 
                $ypresponse['headers']['Content-Type']='application/json';
              
              
                reqPath = yprequest['path']
                reqMethod = yprequest['method']
                  
                logicCodeName = ypOracleConnector('Oracle RemoteName')
                  
                statement = 'SELECT * FROM no_example where name=:datas';
                parameters = {':datas':'I am Batman'};]
                  
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

EXECUTE Operation Object Usage : POST /comic/dc/characters
Data:{":1":88,":testkey":'I am Batman'}

              
                  var reqPath = yprequest.path; 
                  var reqMethod = yprequest.method; 

                  var reqPayload = yprequest.body;

                  var logicCodeName = new ypOracleConnector('Oracle RemoteName');

                  var statement = 'insert into no_example (id,data) values (:1,:testkey)'
                  var parameters = {":1":88,":testkey":'I am Batman'}

                  logicCodeName.execute(statement,parameters);

                  ypresponse.status = 200
                  ypresponse.body = logicCodeName.remoteResponse
                  ypresponse.headers['Content-Type']="application/json";
              
              
                  $reqPath = yprequest.path; 
                  $reqMethod = yprequest.method; 

                  $reqPayload = yprequest.body;
                  
                  $logicCodeName = new ypOracleConnector('Oracle RemoteName');

                  $statement = 'insert into no_example (id,data) values (:1,:testkey)'
                  $parameters = array(':1'=>88,':testkey'=>'I am Batman');

                  $logicCodeName->execute($statement,$parameters);

                  $ypresponse['body'] = $logicCodeName->remoteResponse; 
                  $ypresponse['status'] = 200; 
                  $ypresponse['headers']['Content-Type']='application/json';
              
              
                  reqPath = yprequest['path']
                  reqMethod = yprequest['method']
                
                  logicCodeName = ypOracleConnector('Oracle RemoteName');
                
                  statement = 'insert into no_example (id,data) values (:1,:testkey)'
                  parameters = {":1":88,":testkey":'I am Batman'}
                
                  logicCodeName.execute(statement,parameters)
                
                  ypresponse['status'] = 200
                  ypresponse['body'] = logicCodeName.remoteResponse
                  ypresponse['headers'] = {'Content-Type':"application/json"}              
              
            

Next we will see in detail about How to use environment variables in
business logic? [Environment Variables](environment_var)
