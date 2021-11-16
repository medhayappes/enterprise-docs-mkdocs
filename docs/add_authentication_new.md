Add Authentication
==================

If your API is having any authentication enabled, then you can configure
it in our platform as well. Out Platform provides support for the
following authentication configurations,

-   Header Authentication
-   HTTP Basic Authentication
-   OAuth2 Authentication
-   Query Parameter Authentication

Click on "ADD AUTHENTICATION" under resource tab to add the
authentication.Then a pop will be displayed ,there you can give the
details of the authentication.

<!-- ![](images/add_api/addauth_update.png) -->

Authentication Type

Yappes platform provides 4 types of authentication configurations.

Header

<!-- ![](images/add_api/auth1_update.png) -->

Under "Header Authentication" you need to enter the following details.

-   Name - A valid name which is associated with the API.
-   Value - Value which is associated with the API.

HTTP Basic

<!-- ![](images/add_api/auth2_update.png) -->

1.  Under "HTTP Basic Authentication" you need to enter the following
    details.
    -   User name - A valid name which is associated with the API.
    -   Password - A valid password which is associated with the API.

OAUTH2

<!-- ![](images/add_api/auth3_update.png) -->

1.  Under "OAuth2 Authentication" you need to enter the following
    details.
    -   Callback URL - Yappes callback URL to reroute once the
        Authorization is done.It is not editable.You don't have to
        provide the value as it will be defaulted to
        "https://beta.yappes.com/oauth/callback".
    -   Authorization URL - URL to Authorize the user and to get the
        Authorization code.
    -   Access Token URL - URL to get Access Token.
    -   Scope - Entities you give access Permissions.You can type as
        comma separated values.
    -   Grant Type - Need to select any one of the following values.
        Accordingly the Yappes platform will perform the OAuth2 flow.
        1.  Authorization Code
        2.  Client Credentials

Query Parameter

<!-- ![](images/add_api/auth4_update.png) -->

Under "Query Parameter Authentication" you need to enter the following
details.

-   Name - A valid name of the query parameter which is associated with
    the API.
-   Value - Value of the query parameter which is associated with the
    API.

Now we have successfully added the authentication and endpoints.

Next we can test our endpoints in preview section ["Next : Preview the
API Documentation"](preview_new)
