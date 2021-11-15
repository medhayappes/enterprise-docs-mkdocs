Change User Roles in Organizations
==================================

Yappes provides fixed roles for every Organization. Below are the
details

-   "owner" - User with this role will have full access to Organization
    feature.This role enables user to modifiy Organization details,
    Invite and Remove users, Change roles for the users, Change
    Ownership of the Organization(Created by the user) and Delete the
    Organization.By default the user who creates the Organization will
    be assigned with this role.
-   "api-reader" - User with this role can only view("Read") the APIs
    associated with the organization.By default all the invited Users
    will be assigned with this role.
-   "api-creator" - User with this role can create new APIs and also
    read other APIs associated with the Organization. This role needs to
    be assigned by the "owner".

In the following section let see how we can change the roles of an user
who is the member of an Organization. Ownership change can be done only
under the "Owner Settings" tab which will be covered in detial in the
section "TBD".

1.  In this Organizations View Page, You can find the invited users
    under the people tab    
    **Note: When you try to invite a user to the organization as
    default, user are assigned role as "api-reader"**

    ![](../images/dashboard/organization/role_update_01.png)

2.  Under the People tab, you can find the Edit Button under Action
    Column on the user row.    
    **Note: You Must have the role as Owner to see the Edit Button and
    give permission to change the role of the users**

    ![](../images/dashboard/organization/role_update_05.png)

3.  When you click the button it will open the pop up with the values
    User Email,Roles (as a dropdown)

    ![](../images/dashboard/organization/role_update_02.png)

4.  You can change the user role from user "api-reader" to
    "api-creator".    
    **Note: As Default user is assigned role as "api-reader".**

    ![](../images/dashboard/organization/role_update_03.png)

5.  After successful changing of the role, you can see the user role
    under the people tab. (which is changed from the "api-reader" to
    "api-creator").

    ![](../images/dashboard/organization/role_update_04.png)

6.  In the next section, we will see how to Change Ownership of an
    Organizations in detail. ["Next: Change Ownership of an
    Organizations"](change_ownership_organizations)