



# Environment Details

Environment helps the Provider to set which API Url to use during
publishing. After publishing whenever the the request is triggered from
the consumer, Yappes platform will connect with the \"Environment used
During Publishing\" value

Currently Yappes provides three types of Environment.

Testing

Production

Development

By Default during the creation of the API, the Base URL value will be
taken for all the environments and the default environment will be
testing.

![](../images/new_api/environment_view_02.png)

1.  User can change the environment used during publishing the API .
2.  Three types of environment and corresponding base url will be
    displayed here.The provider can edit the base url when needed.

User can also configure environment specific variables to be used in
thier business logic [(Refere Section 20.3)](environment_var)

![](../images/new_api/environment_configclick_03.png)

1.  User can edit the environment variable by clicking update button
    under configurations.
2.  Format of the variables is similar to JSON . User can create and
    update variables according to the environment which is being used

After this we need to categorize the APIs which we will see in detail
[\"Next : Tag Details\"](tags_new)




