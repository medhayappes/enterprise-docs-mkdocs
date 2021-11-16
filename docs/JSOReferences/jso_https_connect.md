Webservice Connector
====================

Yappes provides support for accessing the HTTP/S based Web Services and
it is configured in the platform through Web Service Connector.It's been
done through Yappes Object "ypWebserviceConnector". Before
instantiation,the Web Service connector needs to be configured as
"Remote Sources" as explained in [Remote Sources](remote_sources)

ypWebserviceConnector - The instance of this object provides methods and
properties to handle the Web Services. Below are the methods exposed by
the instance of ypWebserviceConnector object.

[TABLE]

| Property       | Type   | Description                                                        |
|----------------|--------|--------------------------------------------------------------------|
| remoteResponse | Object | Holds the results obtained from the execution of HTTP/S operations |

wsget - Needs to be instantiated with the instance name same as the
"logicCodeName" defined in its webservice remote source
configurations.The weget results will be available in the property
remoteResponse (logicCodeName.remoteResponse).

Select Language

wsget Operation

                    
                        var sourceObject = new ypWebserviceConnector('NameofRemoteSource');
                        //Configure Webservice from "Remote Sources tab" 
                        //Url for the operation will be retrived form the configured webservice connector 

                        var logicCodeNameObject = new ypWebserviceConnector('NameofRemoteSource');

                        // Setting up options
                        var options = {
                          path: '/posts',
                          headers:{
                            'Content-Type':'application/json',
                            'api-key':'key'
                          }
                          qs:{}
                        };

                        //wsget does the HTTP/S GET operation
                        logicCodeNameObject.wsget(options);

                        //logicCodeNameObject.remoteResponse holds the response from the operation
                        var response=logicCodeNameObject.remoteResponse;

                        ypresponse.body = response;
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
                    
                   
                        logicCodeNameObject = ypWebserviceConnector('NameofRemoteSource')

                        options = {
                        'headers':{
                          'Content-Type': 'application/json' // If xml REST youcan change 'application/xml'
                        },
                        'qs':{},
                        'path': '/api/v1/employees',
                        }
                        logicCodeNameObject.wsget(options)
                        
                        ypresponse['status'] = 200
                        ypresponse['body'] = logicCodeNameObject.remoteResponse
                        ypresponse['headers'] = {'Content-Type':"application/json"};
                               
            

wspost - Needs to be instantiated with the instance name same as the
"logicCodeName" defined in its webservice remote source
configurations.The wspost results will be available in the property
remoteResponse - logicCodeName.remoteResponse.

Select Language

wspost Operation

                    
                        var sourceObject = new ypWebserviceConnector('NameofRemoteSource');
                        //Configure Webservice from "Remote Sources tab" 
                        //Url for the operation will be retrived form the configured webservice connector 

                        var logicCodeNameObject = new ypWebserviceConnector('NameofRemoteSource');

                        // Setting up options
                        var options = {
                          path: '/posts',
                          headers:{
                            'Content-Type':'application/json',
                            'api-key':'key'
                          }
                          qs:{}
                          };

                        // Setting up payload
                        var data={
                          "name":"John",
                          "age":"22"
                        };

                        //wspost does the HTTP/S POST operation
                        logicCodeNameObject.wspost(options,data);

                        //logicCodeNameObject.remoteResponse holds the response from the operation
                        var response=logicCodeNameObject.remoteResponse;

                        ypresponse.body = response;
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
                    
                   
                        logicCodeNameObject = ypWebserviceConnector('NameofRemoteSource')

                        options = {
                        'headers':{
                          'Content-Type': 'application/json' // If xml REST youcan change 'application/xml'
                        },
                        'qs':{},
                        'path': '/api/v1/employees',
                        }
                        data = {
                        "name":"test",
                        "address":"test",
                        }
                        logicCodeNameObject.wspost(options,data)
                        
                        ypresponse['status'] = 200
                        ypresponse['body'] = logicCodeNameObject.remoteResponse
                        ypresponse['headers'] = {'Content-Type':"application/json"};
                                
            

wsput - For Update, the wsput method comes in handly, required parameter
like URL defined in option and data could be defined in another variable
and the wsput method requires two parameters

Select Language

wsput Operation

                    
                        var sourceObject = new ypWebserviceConnector('NameofRemoteSource');
                        //Configure Webservice from "Remote Sources tab" 
                        //Url for the operation will be retrived form the configured webservice connector 

                        var logicCodeNameObject = new ypWebserviceConnector('NameofRemoteSource');

                        // Setting up options
                        var options = {
                          path: '/posts/1',
                          headers:{
                            'Content-Type':'application/json',
                            'api-key':'key'
                          }
                          qs:{}
                        };
                        data = {
                        "title":"testblog"
                        } 
                        //wsput does the HTTP/S PUT operation
                        logicCodeNameObject.wsput(options,data);

                        //logicCodeNameObject.remoteResponse holds the response from the operation
                        var response=logicCodeNameObject.remoteResponse;

                        ypresponse.body = response;
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
                    
                   
                        logicCodeNameObject = ypWebserviceConnector('NameofRemoteSource')

                        options = {
                        'headers':{
                          'Content-Type': 'application/json' // If xml REST youcan change 'application/xml'
                        },
                        'qs':{},
                        'path': '/api/v1/employees/1',
                        }
                        data = {
                        "name":"newtest",
                        "address":"newtest",
                        }
                        logicCodeNameObject.wsput(options,data)
                        
                        ypresponse['status'] = 200
                        ypresponse['body'] = logicCodeNameObject.remoteResponse
                        ypresponse['headers'] = {'Content-Type':"application/json"};
                               
            

wsdelete - For Delete wsdelete method is used and it requires 2
positional arguments.

Select Language

wsdelete Operation

                    
                        var sourceObject = new ypWebserviceConnector('NameofRemoteSource');
                        //Configure Webservice from "Remote Sources tab" 
                        //Url for the operation will be retrived form the configured webservice connector 

                        var logicCodeNameObject = new ypWebserviceConnector('NameofRemoteSource');

                        // Setting up options
                        var options = {
                          path: '/posts',
                          headers:{
                            'Content-Type':'application/json',
                            'api-key':'key'
                          }
                          qs:{}
                        };

                        //wsdelete does the HTTP/S DELETE operation
                        logicCodeNameObject.wsdelete(options);

                        //logicCodeNameObject.remoteResponse holds the response from the operation
                        var response=logicCodeNameObject.remoteResponse;

                        ypresponse.body = response;
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
                    
                   
                        logicCodeNameObject = ypWebserviceConnector('NameofRemoteSource')

                        options = {
                        'headers':{
                          'Content-Type': 'application/json' // If xml REST youcan change 'application/xml'
                        },
                        'qs':{},
                        'path': '/api/v1/employees/',
                        }
                        data = {
                          'id':1
                        }
                        logicCodeNameObject.wsdelete(options,data)
                        
                        ypresponse['status'] = 200
                        ypresponse['body'] = logicCodeNameObject.remoteResponse
                        ypresponse['headers'] = {'Content-Type':"application/json"};
                               
            

wssoap - Needs to be instantiated with the instance name same as the
"logicCodeName" defined in its webservice remote source
configurations.The wssoap results will be available in the property
remoteResponse (logicCodeName.remoteResponse). "wssoap" will provide the
user with the option to do SOAP based api call.

Select Language

wssoap Operation

                     
                  //Configure Webservice from "Remote Sources tab" 
                  //Url for the operation will be retrived form the configured webservice connector 

                  var language = new ypWebserviceConnector('lang');

                  //options to pass proper http and soap headers.
                  var options = {"operationName":"ListOfLanguagesByName","httpHeaders":{},
                                 "soapHeaders":{"Content-Type":"text/xml; charset=utf-8"}};
                  //payload
                  var body={};

                  //wssoap does the SOAP based API call
                  language.wssoap(options,body);

                  //logicCodeNameObject.remoteResponse holds the response from the operation
                  ypresponse.body = language.remoteResponse; 
                  ypresponse.status = 200; 
                  ypresponse.headers['Content-Type']='application/json';
              
                   
                   
                        logicCodeNameObject = ypWebserviceConnector('NameofRemoteSource')

                        options = {'operationName': 'Subtract','headers':{'Content-Type' : 'text/xml; charset=utf-8;'}};
                        
                        data = {
                          "intA":2,
                          "intB":3
                        }
                        logicCodeNameObject.wssoap(options,data)
                        ypresponse['body'] = logicCodeNameObject.remoteResponse
                        ypresponse['status'] = 200
                        ypresponse['headers'] = {'Content-Type': 'application/xml'}
                               
            

For more examples click
[here](https://github.com/yappes-technologies/logic-examples).

Next we will see in detail about the MariaDB Remote Connectors ["Next :
MariaDB Remote Connectors"](jso_mariadb_connect.md)