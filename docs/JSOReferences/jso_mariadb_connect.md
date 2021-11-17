MariaDB Remote Connector
========================

Yappes provides support for accessing the remote **MariaDB database**.

It's
been done through Yappes Object **ypMariadbConnector**. Before
instantiation,the MariaDB datasource needs to be configured as **Remote
Sources** as explained in [Remote Sources](jso_remote_connect.md)

**ypMariadbConnector** - The instance of this object provides methods and
properties to handle the remote data sources. Below are the methods
exposed by the instance of ypMariadbConnector object.

[TABLE]

| Property       | Type  | Description                                                        |
|----------------|-------|--------------------------------------------------------------------|
| remoteResponse | Array | Holds the results obtained from the execution of MariaDB statments |

**SELECT** - Needs to be instantiated with the instance name same as the
"logicCodeName" defined in its MariaDB remote source configurations.The
query results will be avaialble in the property remoteResponse
(logicCodeName.remoteResponse).SELECT supports query or select DML
operation.

Select Language

SELECT Operation Object Usage : GET /test

              
                  var reqPath = yprequest.path; // provides "/test"

                  var reqMethod = yprequest.method; // provides "GET"
                  var mariatest = new ypMariadbConnector('mariaTest01');

                  var statement="select * from cars;";
                  var parameters = [];

                  mariatest.select(statement,parameters);

                  ypresponse.body = mariatest.remoteResponse;
                  ypresponse.status = 200; 
                  ypresponse.headers['Content-Type']='application/json';
              
              
                  $params = yprequest['params'];
                  $reqPayload = yprequest['body'];
                  
                  $mariatest = new ypMariadbConnector('mariaTest01');

                  $statement="select * from cars;";
                  
                  $parameters=array();
                  
                  $mariatest->select($statement,$parameters);
                  
                  $ypresponse['body'] = $mariatest->remoteResponse; 
                  $ypresponse['status'] = 200; 
                  $ypresponse['headers']['Content-Type']='application/json';              
              
              
                  reqPath = yprequest['path']; // provides "/test"
                  
                  reqMethod = yprequest['method']; // provides "GET"
                  
                  logicCodeName = ypMariadbConnector('MariaDb RemoteName');
                  
                  var statement="select * from cars ";
                  
                  var parameters = [];
                  
                  mariatest.select(statement,parameters);
                  
                  ypresponse['status'] = 200
                  ypresponse['body'] = logicCodeName.remoteResponse
                  ypresponse['headers'] = {'Content-Type':"application/json"};
                       
            

**EXECUTE** - Needs to be instantiated with the instance name same as the
"logicCodeName" defined in its MariaDB remote source configurations.The
query results will be avaialble in the property remoteResponse -
logicCodeName.remoteResponse. EXECUTE support insert and update DML
operations.

Select Language

EXECUTE Operation Object Usage : POST /test Data:{"carName":"Tesla
Roadster","carId":'12345678'}

              
                  var reqPath = yprequest.path; // provides "/test"

                  var reqMethod = yprequest.method; // provides "POST"

                  var reqPayload = yprequest.body;

                  var mariatest = new ypMariadbConnector('mariaTest01');

                  var insertStatement="INSERT INTO cars (car_name, car_id) VALUES (?,?);";
                  var insertParameters=[reqPayload.carName,reqPayload.carId];
                  
                  mariatest.execute(insertStatement,insertParameters);

                  ypresponse.body = mariatest.remoteResponse;
                  ypresponse.status = 200; 
                  ypresponse.headers['Content-Type']='application/json';
              
              
                  $params = yprequest['params'];
                  $reqPayload = yprequest['body'];

                  $mariatest = new ypMariadbConnector('mariatest');

                  $insertStatement="INSERT INTO cars (car_name, car_id) VALUES (?,?);";

                  $insertParameters=array('data'=>array(reqPayload['carName'],reqPayload['carId']),'bind'=>'ss');

                  $mariatest->execute($insertStatement,$insertParameters);
                  
                  $ypresponse['body'] = $mariatest->remoteResponse; 
                  $ypresponse['status'] = 200; 
                  $ypresponse['headers']['Content-Type']='application/json';              
              
             
                  reqPath = yprequest['path']; // provides "/test"
                  
                  reqMethod = yprequest['method']; // provides "POST"
                  
                  reqPayload = yprequest['body'];
                  
                  mariatest = ypMariadbConnector('mariaTest01');
                  
                  updateStatement="INSERT INTO cars (car_name, car_id) VALUES (?,?);";
                  updateParameters=[reqPayload.carName,reqPayload.carId];
                  
                  mariatest.execute(updateStatement,updateParameters);
                  
                  logicCodeName.execute(statement,parameters);
                  
                  ypresponse['status'] = 200
                  ypresponse['body'] = logicCodeName.remoteResponse
                  ypresponse['headers'] = {'Content-Type':"application/json"};
                         
            

For more examples click
[here](https://github.com/yappes-technologies/logic-examples).

Next we will see in detail about the Graphql Remote Connectors 

[**Next  :
Graphql Remote Connectors**](jso_graphql_connect.md)