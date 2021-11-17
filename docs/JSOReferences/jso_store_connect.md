Store Remote Connector
======================

Yappes provides support for accessing the Collections and its Objects
created in the platform through **Store Connector**.

It's been done through
Yappes Object **ypStoreConnector**. Before instantiation,the Store
connector needs to be configured as **Remote Sources** as explained in
[Remote Sources](jso_remote_connect.md)

**ypStoreConnector** - The instance of this object provides methods and
properties to handle the Collection/Object data source. Below are the
methods exposed by the instance of **ypStoreConnector** object.

[TABLE]

| Property       | Type   | Description                                                       |
|----------------|--------|-------------------------------------------------------------------|
| remoteResponse | Object | Holds the results obtained from the execution of Store operations |

**QUERY** - Needs to be instantiated with the instance name same as the
"logicCodeName" defined in its Store remote source configurations.The
query results will be available in the property remoteResponse
(logicCodeName.remoteResponse).

QUERY Operation Object Usage : GET /travel/places/list?country=IN

              
                  var reqPath = yprequest.path; // provides "/travel/places/list"

                  var params = yprequest.params; // provides "GET"

                  var logicCodeName = new ypStoreConnector('Store Remote Name');

                  var collectionName = "Travel Places";
                  var queryString = "rating > 3.5 && ( city == 'Mysore' || city == 'Mysuru' )";

                  // Query the collection for places matching the query expression
                  logicCodeName.query(collectionName,queryString);

                  ypresponse.status = 200
                  ypresponse.body = logicCodeName.remoteResponse
                  ypresponse.headers['Content-Type']="application/json";
              
            

**INSERT** - Needs to be instantiated with the instance name same as the
"logicCodeName" defined in its Store remote source configurations.The
insert results will be available in the property remoteResponse -
logicCodeName.remoteResponse.

INSERT Operation Object Usage : POST /travel/places  
Data:{"placeName": "Mysuru Palace","type": "heritage","city":
"Mysuru","State": "KA","rating": "4"}

              
                  var reqPath = yprequest.path; // provides "/travel/places"

                  var reqMethod = yprequest.method; // provides "POST"

                  var reqPayload = yprequest.body;

                  var logicCodeName = new ypStoreConnector('Store Remote Name');

                  var collectionName = "Travel Places";

                  // Insert the collection for places with a new document
                  logicCodeName.insert(collectionName,reqPayload);

                  ypresponse.status = 200
                  ypresponse.body = logicCodeName.remoteResponse
                  ypresponse.headers['Content-Type']="application/json";
              
            

**UPDATE** - Needs to be instantiated with the instance name same as the
"logicCodeName" defined in its Store remote source configurations.The
update results will be available in the property remoteResponse -
logicCodeName.remoteResponse.

UPDATE Operation Object Usage : PUT /travel/places/{objectId}  
Data:{rating":"4.5"}

              
                  var reqPath = yprequest.path; // provides "/travel/places/objectId"

                  var reqMethod = yprequest.method; // provides "PUT"

                  var reqPayload = yprequest.body;

                  var logicCodeName = new ypStoreConnector('Store Remote Name');

                  var collectionName = "Travel Places";
                  var objectId = yprequest.params.objectId;

                  // Update the collection of places for id with reqPayload rating value
                  logicCodeName.update(collectionName,objectId,reqPayload);

                  ypresponse.status = 200
                  ypresponse.body = logicCodeName.remoteResponse
                  ypresponse.headers['Content-Type']="application/json";
              
            

Next we will see in detail about the Web Service Connectors

[**Next  : Web
Service Connectors**](jso_https_connect.md)