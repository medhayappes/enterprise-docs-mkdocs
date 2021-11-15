Adding an Endpoint
==================

You can individually add the end points of your API by clicking "Add
Endpoint" .  
You can also add multiple Endpoint, if you have the Swagger Spec file
for your API which we will discuss in detail on ["Add Multiple
Endpoints"](addmultiplendpoint_new)

![](../images/add_api/aa7_update.png)

Once you have clicked the "ADD ENDPOINT" button following sets of
details needs to be provided.

End point Name - Name for your End point.

End point Path - path of the End point.

Need to provide the **"HTTP Request Method"** available from the
options.The available options are:

-   GET - Requests data from a specified resource.
-   POST - Submits data to be processed to a specified resource.
-   PUT - Used to update the specified resource.
-   DELETE - Used to delete the specified resource.

Also need to choose the **"Content Type"** available from the
options.The available options are:

-   application/json - For setting content type as JSON formated data.
-   application/x-www-form-urlencoded - For setting content type as
    url-form-encoded data.

Description - you can write the detailed description about the endpoint
like for what is this end point used for and other necessary
information.

Once all the details are entered, click on the "ADD" button.As soon as
the endpoint is created, the created endpoints are listed below.Click
the arrow to view the endpoint details.

![](../images/add_api/viewendpoint_update.png)

Once you click the arrow shown in the above picture,the detailed view of
the endpoint is displayed.

There you can see the details already you provided when creating the
endpoint plus some additional details.We will go each step in detail in
this section itself.

![](../images/add_api/aa8_update.png)

Delete - You can delete the endpoint by clicking "delete" icon *delete*
button.

Add Headers Parameters for the API

![](../images/add_api/aa9_update.png)

1.  Once you click "Add header" a dialog will be opened and asks the
    details about the header you are going to give.
    1.  Name - A valid name of the header which will be associated with
        the endpoint.
    2.  Value - Value of the header.You can edit it after when you need
        a change.
    3.  Type - Type of the header.You can choose according to your
        input.
        -   String - Select it if the header value is a String.
        -   Number - Select it if the header value is a Number.
        -   Boolean - Select it if the header value is a Boolean.
    4.  Options - This field tells the user that the header is mandatory
        or optional.
        -   Optional - Choose this option if this header is optional.
        -   Mandatory - Choose this option if this header is compulsory.
    5.  Descriptions - Detailed information about the header.
2.  Click on **"Add"** button once you completed all the fields.
3.  Then it will prompt the message that successfully added the header
    or not.

Add Query Parameters for your API

![](../images/add_api/aa10_update.png)

1.  Once you click "Add Query Parameter" a dialog will be opened and
    asks the details about the query parameter you are going to give.
    1.  Name - A valid name of the query parameter which will be
        associated with the endpoint.
    2.  Value - Value of the query parameter.You can edit it after when
        you need a change.
    3.  Type - Type of the query parameter.You can choose according to
        your input.
        -   String - Select it if the query parameter value is a String.
        -   Number - Select it if the query parameter value is a Number.
        -   Boolean - Select it if the query parameter value is a
            Boolean.
    4.  Options - This field tells the user that the query parameter is
        mandatory or optional.
        -   Optional - Choose this option if this query parameter is
            optional.
        -   Mandatory - Choose this option if this query parameter is
            compulsory.
    5.  Descriptions - Enter detailed description about the query
        parameter.
2.  Click on **"Add"** button once you completed all the fields.
3.  Then it will prompt the message that successfully added the Query
    parameter or not.

Add Form data for your API

![](../images/add_api/aa11_update.png)

1.  Once you click "Add Form Data" a dialog will be opened and asks the
    details about the Form Data you are going to give.
    1.  Type - Type of the Form data.You can choose according to your
        input.
        -   String - Select it if the Form data value is a String.
        -   Number - Select it if the Form data value is a Number.
        -   Boolean - Select it if the Form data value is a Boolean.
        -   Modal - Select it if the Form data value is a raw JOSN data.
    2.  Options - This field tells the user that the Form data is
        mandatory or optional.
        -   Optional - Choose this option if this Form data is optional.
        -   Mandatory - Choose this option if this Form data is
            compulsory.
    3.  Name - A valid name of the Form data which will be associated
        with the endpoint.
    4.  Value - Value of the Form data.You can edit it after when you
        need a change.
    5.  Descriptions - Enter detailed description about the Form Data.
2.  Click on **"Add"** button once you completed all the fields.
3.  Then it will prompt the message that successfully added the Form
    Data or not.

Once you completed with the Headers,Query parameters and Form
parameters, the entered values will come under each tabs.You can edit it
when any change needs to be performed.

Now we are familiar with how to add individual endpoints.Yappes platform
providing you the option to add multiple end points also.We will see
that in ["Next : Adding Multiple Endpoints using Swagger
file"](addmultiplendpoint_new)
