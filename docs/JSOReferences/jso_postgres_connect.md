Postgres SQL Remote Connector
=============================

Yappes provides support for accessing the remote Postgres database.It's
been done through Yappes Object "ypPostgresConnector". Before
instantiation,the Postgres datasource needs to be configured as "Remote
Sources" as explained in [Remote Sources](remote_sources)

ypPostgresConnector The instance of this object provides methods and
properties to handle the remote data sources. Below are the methods
exposed by the instance of ypPostgresConnector object. **Note:**

[TABLE]

| Property       | Type  | Description                                                         |
|----------------|-------|---------------------------------------------------------------------|
| remoteResponse | Array | Holds the results obtained from the execution of Postgres statments |

SELECT Needs to be instantiated with the instance name same as the
"logicCodeName" defined in its Postgres SQL remote source
configurations. The query results will be available in the property
remoteResponse (logicCodeName.remoteResponse).

Select Language

SELECT Operation This is the basic Select Operation

              
                  var reqPath = yprequest.path; 

                  var reqMethod = yprequest.method; 

                  var logicCodeName = new ypPostgresConnector('Postgres RemoteName');

                  var query = {
                      text: 'SELECT * FROM test',
                      values: [],
                      rowMode: 'array'
                    } 


                  logicCodeName.query(query);

                  ypresponse.status = 200
                  ypresponse.body = logicCodeName.remoteResponse
                  ypresponse.headers['Content-Type']="application/json";
              
              
                  $params = yprequest['params'];
                  $reqPayload = yprequest['body'];

                  $logicCodeName = new ypPostgresConnector('Postgres RemoteName');

                  $statement = "SELECT * from test;";

                  $para=array();

                  $logicCodeName->select($statement,$para);

                  $ypresponse['body'] = $logicCodeName->remoteResponse; 
                  $ypresponse['status'] = 200; 
                  $ypresponse['headers']['Content-Type']='application/json';
              
              
                  reqPath = yprequest['path']; // provides "/travel/airlines/list"
                  
                  reqMethod = yprequest['method']; // provides "GET"
                  
                  logicCodeName = ypPostgresConnector('Postgres RemoteName');
                  
                  statement = "select ?? from dummyAirline where country=?";
                  
                  parameters = [[name,code],"india"];
                  
                  logicCodeName.select(statement,parameters);
                  
                  ypresponse['status'] = 200
                  ypresponse['body'] = logicCodeName.remoteResponse
                  ypresponse['headers'] = {'Content-Type':"application/json"};
                
              
            

INSERT Operation Requires the column name as well as the parameterized
queries.

Select Language

INSERT Operation Object Usage : POST "/new/data/insert" Data
{"id":1,"name":"test"}

              
                  var reqPath = yprequest.path; // provides "/new/value/insert"

                  var reqMethod = yprequest.method; // provides "POST"

                  var reqPayload = yprequest.body;      // {"id":1,"name":"test"}

                  var logicCodeName = new ypPostgresConnector('Postgres RemoteName');
                  
                  const query = {
                    text: 'INSERT INTO test(id,name) VALUES($1, $2)',
                    values: [reqPayload.id,reqPayload.name],
                  }

                  logicCodeName.query(query);

                  ypresponse.status = 200
                  ypresponse.body = logicCodeName.remoteResponse
                  ypresponse.headers['Content-Type']="application/json";
              
              
                  $params = yprequest['params'];
                  $reqPayload = yprequest['body'];

                  $logicCodeName = new ypPostgresConnector('Postgres RemoteName');
                  
                  $insert="INSERT INTO company (id,name) VALUES (?,?);";
                  
                  $parameters = array(6,'car6');
                  
                  $logicCodeName->execute($insert,$parameters);

                  $ypresponse['body'] = $logicCodeName->remoteResponse; 
                  $ypresponse['status'] = 200; 
                  $ypresponse['headers']['Content-Type']='application/json';
               
              
                  reqPath = yprequest['path']; // provides "/travel/airlines"

                  reqMethod = yprequest['method']; // provides "GET"
                  
                  reqPayload = yprequest['body'];
                  
                  logicCodeName = ypPostgresConnector('Postgres RemoteName');
                  
                  statement = "insert into dummyAirline set ?";
                  
                  parameters = reqPayload;
                  
                  logicCodeName.execute(statement,parameters);
                  
                  ypresponse['status'] = 200
                  ypresponse['body'] = logicCodeName.remoteResponse
                  ypresponse['headers'] = {'Content-Type':"application/json"};            
                       
            

UPDATE Requires the parameters as well as the condition for selecting
the specific row.

Select Language

UPDATE Operation Object Usage : POST "/new/data/update" Data
{"id":1,"name":"testupdate"}

              
                  var reqPath = yprequest.path;      // "/new/data/update"

                  var reqMethod = yprequest.method; // POST

                  var reqPayload = yprequest.body; // {"id":1,"name":"testupdate"}

                  var logicCodeName = new ypPostgresConnector('Postgres RemoteName');
                  
                  const query = {
                    text: 'UPDATE test SET name = $2 WHERE id = $3',
                    values: [reqPayload.id,reqPayload.name],
                  }

                  logicCodeName.query(query);

                  ypresponse.status = 200
                  ypresponse.body = logicCodeName.remoteResponse
                  ypresponse.headers['Content-Type']="application/json";
              
              
                  $params = yprequest['params'];
                  $reqPayload = yprequest['body'];

                  $logicCodeName = new ypPostgresConnector('Postgres RemoteName');

                  $update="UPDATE company SET name = 'nameNew' WHERE id = ?;";
                  
                  $updatePara=array(6);
                  
                  $logicCodeName->execute($update,$updatePara);

                  $ypresponse['body'] = $logicCodeName->remoteResponse; 
                  $ypresponse['status'] = 200; 
                  $ypresponse['headers']['Content-Type']='application/json';
               
              
                  reqPath = yprequest['path']; // provides "/travel/airlines"

                  reqMethod = yprequest['method']; // provides "GET"
                  
                  reqPayload = yprequest['body'];
                  
                  logicCodeName = ypPostgresConnector('Postgres RemoteName');
                  
                  statement = 'update dummyAirline set name = ? ,code = ? where country = ?'
                  
                  parameters = ['YA2','yapp1111','india']
                  
                  logicCodeName.execute(statement,parameters);
                  
                  ypresponse['status'] = 200
                  ypresponse['body'] = logicCodeName.remoteResponse
                  ypresponse['headers'] = {'Content-Type':"application/json"}
                                 
            

Next we will see in detail about the MSSQL Connectors["Next : MSSQL
Connectors"](jso_mssql_connect.md)