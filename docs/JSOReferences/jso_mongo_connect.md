Mongo Remote Connector
======================

Yappes provides support for accessing the remote Mongo database.It's
been done through Yappes Object "ypMongoConnector". Before
instantiation,the Mongo datasource needs to be configured as "Remote
Sources" as explained in [Remote Sources](remote_sources)

ypMongoConnector - The instance of this object provides methods and
properties to handle the remote data sources. Below are the methods
exposed by the instance of ypMongoConnector object.

[TABLE]

| Property       | Type  | Description                                                      |
|----------------|-------|------------------------------------------------------------------|
| remoteResponse | Array | Holds the results obtained from the execution of MySQL statments |

FIND - Needs to be instantiated with the instance name same as the
"logicCodeName" defined in its Mongo remote source configurations.The
query results will be available in the property remoteResponse
(logicCodeName.remoteResponse).

Select Language

FIND Operation Object Usage : GET /travel/airlines/list?country=IN

              
                  var reqPath = yprequest.path; // provides "/travel/airlines/list"

                  var params = yprequest.params; // provides "GET"

                  var logicCodeName = new ypMongoConnector('Mongo Remote Name');

                  var collectionName = "remoteCollectionTravel";
                  var query = {"country":params.country};
                  var limit = 20;

                  // Query the collection for airlines with country as IN
                  logicCodeName.find(collectionName,query,limit);

                  ypresponse.status = 200
                  ypresponse.body = logicCodeName.remoteResponse
                  ypresponse.headers['Content-Type']="application/json";
              
              
                  $params = yprequest['params'];

                  $logicCodeName = new ypMongoConnector('Mongo Remote Name');

                  $collectionName = "remoteCollectionTravel";

                  $query = array("country"=>params["country"]);

                  $limit = 20;
                  
                  $logicCodeName->find($collectionName,$query,$limit);

                  $ypresponse['body'] = $logicCodeName->remoteResponse; 
                  $ypresponse['status'] = 200; 
                  $ypresponse['headers']['Content-Type']='application/json';
              
              
                  reqPath = yprequest['path']; // provides "/travel/airlines/list"
                  
                  reqMethod = yprequest['method']; // provides "GET"
                  
                  logicCodeName = ypMongoConnector('Mongo Remote Name');
                  
                  collectionName = "remoteCollectionTravel";
                  
                  query = {"country":params.country};
                  
                  limit = 20;
                  
                  // Query the collection for airlines with country as IN
                  logicCodeName.find(collectionName,query,limit);
                  
                  ypresponse['status'] = 200
                  ypresponse['body'] = logicCodeName.remoteResponse
                  ypresponse['headers'] = {'Content-Type':"application/json"};
                        
            

INSERT - Needs to be instantiated with the instance name same as the
"logicCodeName" defined in its Mongo remote source configurations.The
insert results will be available in the property remoteResponse -
logicCodeName.remoteResponse.

Select Language

INSERT Operation Object Usage : POST /travel/airlines
Data:{"name":"YA1","code":"yapp123","country":"India"}

              
                  var reqPath = yprequest.path; // provides "/travel/airlines"

                  var reqMethod = yprequest.method; // provides "POST"

                  var reqPayload = yprequest.body;

                  var logicCodeName = new ypMongoConnector('Mongo Remote Name');

                  var collectionName = "remoteCollectionTravel";

                  // Insert the collection for airlines with a new document
                  logicCodeName.insert(collectionName,[reqPayload]);

                  ypresponse.status = 200
                  ypresponse.body = logicCodeName.remoteResponse
                  ypresponse.headers['Content-Type']="application/json";
              
              
                  $params = yprequest['params'];
                  $reqPayload=yprequest['body'];
                  $logicCodeName = new ypMongoConnector('Mongo Remote Name');
                  
                  $collectionName = "remoteCollectionTravel";
                  
                  $limit = 20;
                  $logicCodeName->insert($collectionName,$reqPayload);

                  $ypresponse['body'] = $logicCodeName->remoteResponse; 
                  $ypresponse['status'] = 200; 
                  $ypresponse['headers']['Content-Type']='application/json';
              
              
                  reqPath = yprequest['path']; // provides "/travel/airlines"
                  
                  reqMethod = yprequest['method']; // provides "POST"
                  
                  reqPayload = yprequest['body'];
                  
                  logicCodeName = ypMongoConnector('Mongo Remote Name');
                  
                  collectionName = "remoteCollectionTravel";
                  
                  // Insert the collection for airlines with a new document
                  logicCodeName.insert(collectionName,reqPayload);
                  
                  ypresponse['status'] = 200
                  ypresponse['body'] = logicCodeName.remoteResponse
                  ypresponse['headers'] = {'Content-Type':"application/json"};
                        
            

UPDATE - Needs to be instantiated with the instance name same as the
"logicCodeName" defined in its Mongo remote source configurations.The
update results will be available in the property remoteResponse -
logicCodeName.remoteResponse.

Select Language

UPDATE Operation Object Usage : PUT /travel/airlines
Data:{"id":"1234","code":"yapp345"}

              
                  var reqPath = yprequest.path; // provides "/travel/airlines"

                  var reqMethod = yprequest.method; // provides "PUT"

                  var reqPayload = yprequest.body;

                  var logicCodeName = new ypMongoConnector('Mongo Remote Name');

                  var collectionName = "remoteCollectionTravel";
                  var query = {"id":reqPayLoad.id};
                  var updateOperator = {$set:{"code":reqPayLoad.code}};
                  var options = {"upsert":false,"multi":false};

                  // Update the collection of airlines for id with reqPayload code value
                  logicCodeName.update(collectionName,query,updateOperator,options);

                  ypresponse.status = 200
                  ypresponse.body = logicCodeName.remoteResponse
                  ypresponse.headers['Content-Type']="application/json";
              
              
                  $params = yprequest['params'];
                  $reqPayload = yprequest['body'];

                  $logicCodeName = new ypMongoConnector('Mongo Remote Name');
                  
                  $collectionName = "remoteCollectionTravel";
                  
                  $limit = 20;
                  $update=array('id'=>$reqPayload['id']);
                  
                  $updateOperator = array('$set'=>array("code"=>$reqPayload['code']));

                  $options = array("upsert"=>false,"multi"=>false);
                  
                  $logicCodeName->update($collectionName,$update,$updateOperator,$options);

                  $ypresponse['body'] = $logicCodeName->remoteResponse; 
                  $ypresponse['status'] = 200; 
                  $ypresponse['headers']['Content-Type']='application/json';
              
              
                  reqPath = yprequest['path']; // provides "/travel/airlines"
                  
                  reqMethod = yprequest['method']; // provides "PUT"
                  
                  reqPayload = yprequest['body'];
                  
                  logicCodeName = ypMongoConnector('Mongo Remote Name');
                  
                  collectionName = "remoteCollectionTravel";
                  
                  query = {"id":reqPayLoad.id};
                  
                  updateOperator = {"$set":{"code":reqPayLoad.code}};
                  
                  options = {"upsert":false,"multi":false};
                  
                  // Update the collection of airlines for id with reqPayload code value
                  logicCodeName.update(collectionName,query,updateOperator,options);
                  
                  ypresponse['status'] = 200
                  ypresponse['body'] = logicCodeName.remoteResponse
                  ypresponse['headers'] = {'Content-Type':"application/json"};
                                  
            

Next we will see in detail about the Store Connectors["Next : Store
Connectors"](store_remote_connt)