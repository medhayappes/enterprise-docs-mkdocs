GraphQL Remote Connector
========================

Yappes provides support for accessing the remote Graphql server.It's
been done through Yappes Object "ypGraphQlConnector". Before
instantiation,the graphql source needs to be configured as "Remote
Sources" as explained in [Remote Sources](remote_sources)

ypGraphQlConnector - The instance of this object provides methods and
properties to handle the remote data sources. Below are the methods
exposed by the instance of ypGraphQlConnector object.

[TABLE]

| Property       | Type  | Description                                                        |
|----------------|-------|--------------------------------------------------------------------|
| remoteResponse | Array | Holds the results obtained from the execution of graphql statments |

QUERY - Needs to be instantiated with the instance name same as the
"logicCodeName" defined in its graphql remote source configurations.The
query results will be avaialble in the property remoteResponse
(logicCodeName.remoteResponse).query supports query and mutation
operations.

Query Operation Object Usage : GET /graphtest

              
                  var reqPayload = yprequest.body;
                  var reqParams = yprequest.params;
                  
                  var graph = new ypGraphQlConnector('graph');
                  var options = {
                    path: '/',
                    headers:{'Content-Type':'application/json'},
                    qs:{}};
                  
                  var query=`
                    query{
                      books{
                        title
                      }
                    }`;

                  var mutation=`{
                    mutation{
                      addBook(title:"bookname",author:"authorname")
                    }
                  }`;
                  
                  var variables={};

                  graph.query(options,query,variables);
                  //graph.query(options,mutation,variables);
                 
                  ypresponse.body = graph.remoteResponse;
                  ypresponse.status = 200;
                  ypresponse.headers['Content-Type']='application/json';
                          
                        

For more examples click
[here](https://github.com/yappes-technologies/logic-examples).

Next we will see in detail about How to use [PostgresSQL Connectors
?](jso_postgres_connect.md)