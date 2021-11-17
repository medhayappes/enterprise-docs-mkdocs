Preview the API Documentation
=============================

API Provider can test the Endpoints added using the preview mechanism.
This is the view which the consumer will be seeing as part of discovery
process which we will go through in detail under the section [Consumer
API View & Documentation](apiviewdoc) <!--Page / Link missing-->

![](images/existing_api/existing_api_resources_preview_14.png)


 Preview contains  3 sub sections.

 *  Authentication tab

 *  Endpoint Details

 *  SDK templates



 **Preview sub sections Details**

* **Section 1 : Authentication tab** 

First Section contains the endpoints you have already created and Authentication tab which is used to set the authenticate for the API.

    
 ![](images/existing_api/existing_api_resources_preview_authentication_15.png)


In this documentation we have used OAuth2 Authorization.It contains the following fields.

* **Call back URL** - Yappes callback URL to reroute once the
                Authorization is done.It is not editable.You don't have
                to provide the value as it will be defaulted to
                "https://beta.yappes.com/oauth/callback"

* **Authorization URL** - URL given when adding the
                authentication.It is not editable in preview mode.

* **Access Token URL** - URL given when adding the
                authentication.It is not editable in preview mode.

* **Grant Type** - Value given while adding
                authentication.Value will be either "Client credentails"
                or "Authorization Code".It is not editable in preview
                mode.

* **Scope** - Values provided while adding authentication.It
                is editable .You can change the selection by
                ticking/unticking the checkbox.

* **Client Id** - Id of the Client that is associated with the
                API.
* **Client Secret** - Password/SecretCode of the Client
                associated with the API.
                
    * Click on **Authorize** to verify the user.Once the user is
            authorized then only he/she can trigger the **Try
            Operation**.Otherwise, user wont be able to see the actual output.
           
            
        * If the grant type is **authorization code**, clicking on
                **authorize** will redirect to the authorization page and
                user has to enter the username & password.After
                verification it redirect to the call back url and return
                back to the preview page.
        * If the grant type is **Client credentials**,clicking on
                **authorize** will verify the client credentails and
                return the curl template.
        -   After authorizing the user,Click on each endpoint,give
            proper data and do **Try Operation**.


* **Section 2 : Details of the selected endpoint**
    * i.e when you creating the endpoint, you have the options to
            add Header,Query parameter,Form parameter etc.The provided
            details will be displayed here and you can edit it.
    * There is one exra field called **X-Yappes-Key**. You need to
            select one application. By default one value will be
            selected. We will look in detail about Application under the
            section [**What is Application?**](add_application.md)
    * Click on **Try Operation** to get the result of the
            particular endpoint.The result will be displayed in the
            third section.



* **Section 3 : SDK templates.**

Curl is
        selected by default. You can use these templates as part of the
        code integration.
![](images/existing_api/existing_api_resources_preview_response_16.png)

The output contains,

* **Request URL** - The url provided to get the response

* **Response Body** - The actual content of the output

* **Response Headers** - This field tells the headers we have
                got as part of executing the URL.

Next we will check how to add pricing.

[Next : Add Pricing
    details](pricing.md)
