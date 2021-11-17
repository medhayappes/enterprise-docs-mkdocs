Yappes Objects
==============

**Yappes Objects** are a set of predefined objects which are loaded and
available for the execution and in the logic editor. 

These are
instantiated for every API request and are unique to that transaction.

There are three sets of Yappes Objects,

1.  Request and Response Objects
2.  Remote Connectors
3.  Environment Variables

**Request and Response Objects:**  
The API request and response information are handled through the
predefined objects:

1.  yprequest
2.  ypresponse

yprequest - This object is used to access all the request related
information. Below are the properties exposed by the yprequest object.

| Property | Type   | Description                               |
|----------|--------|-------------------------------------------|
| path     | String | Incoming request path information         |
| headers  | Object | Access the API request headers details    |
| url      | String | Access the API request URI details        |
| query    | Object | Access the API request URL paramters      |
| body     | String | Access the API request payload            |
| method   | String | Incoming request method information       |
| params   | Object | Access the API request parameters details |

**yprequest** object is instantiated and loaded with the incoming API
request object details related to an end-point. For every request the
yprequest is instantiated and unique to an transaction.

yprequest Object Usage : GET /travel/airlines/list

              
                  var reqPath = yprequest.path; // provides "/travel/airlines/list"

                  var reqMethod = yprequest.method; // provides "GET"

                  var reqHeaders = yprequest.headers // provides headers info like {'content-type': 'application/json','accept-encoding': 'gzip, deflate'}
              
            

**ypresponse** - This object is used to set the response data related to an
request. Below are the properties exposed by the ypresponse object.

| Property | Type   | Description                   |
|----------|--------|-------------------------------|
| status   | Number | Outgoing response status code |
| body     | String | Outgoing response body        |
| headers  | Object | Outgoing response headers     |

ypresponse object is instantiated and used to set the information needs
to be sent as response related to an end-point request. For every API
request the ypresponse is instantiated and unique to an transaction.

ypresponse Object Usage : GET /travel/airlines/list

              
                  var reqPath = yprequest.path; // provides "/travel/airlines/list"

                  var reqMethod = yprequest.method; // provides "GET"

                  // setting up the response for this API request
                  ypresponse.body = reqPath + "by" + reqMethod;
                  ypresponse.status = 200; 
                  ypresponse.headers['Content-Type']="application/json";

              
            

Next we will see in detail about the **Remote Connectors - Yappes
Objects**

[**Next  : Remote Connectors**](jso_remote_connect.md)