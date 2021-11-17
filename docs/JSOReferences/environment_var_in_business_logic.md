How to use environment variables in business logic?
===================================================

Yappes provides support for accessing the environment configuration
[(Refer Section3.2)](environment_new.md) in your business logic. 

It's been
done through Yappes Object **ypenv**.

**ypenv** - The instance of this object provides a method by which user can
access the environment configuration specific to the Endpoint
environment details.

[TABLE]

**getEnvironmentDetails** - User can take advantage of this feature by
either initializing a variable to the "ypenv.getEnvironmentDetails();"
or directly referring the environment variable
"ypenv.getEnvironmentDetails().;".

getEnvironmentDetails Operation

              
            var reqPayload = yprequest.body;
            
            var reqParams = yprequest.params;
            
            /* Your Logic Goes Here */ 
            
            var env=ypenv.getEnvironmentDetails();
            //{"hello":"hello","world":" world"}

            ypresponse.body = env.hello+ypenv.getEnvironmentDetails().world; 
            //response will be "hello world"

            ypresponse.status = 200; 
            ypresponse.headers['Content-Type']='application/json';