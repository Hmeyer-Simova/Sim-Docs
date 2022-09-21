

DMS by Simova supports several types of repositories. Repositories represent the storage location of files and documents.

# SharePoint repository
SharePoint can be deployed on-premise or online in Office 365. The setup needs to be specified depending on which SharePoint is available. The following steps need to be completed to create the SharePoint repository type.

1. We start in the _**DMS by Simova - Administrator**_ role.
2. Click on _**Setup**_ in the ribbon bar and execute the action _**Repository**_.
3. Execute the action _**New**_ in the ribbon bar.
4. Select the repository type _**SharePoint**_ in the _**Repository Type**_ field.
5. Specify the repository code by entering a code in the _**Code**_ field.
6. Add the link to the top level site of the SharePoint Web Application in the _**Web Application URL**_ field.
7. Select the Language ID for the SharePoint site in the _**Repository - Language ID**_ field. The language ID should be the same as the SharePoint language.
8. Select the authentication mode that is necessary for the authentication to the SharePonit site in the _**Authentication Mode**_ field.
9. Select the authentication type in the _**Authentication Type**_ field. It's possible to choose between _**Basic**_ and _**Modern**_ type if the _**SharePoint Online**_ authentication mode has been selected.

> :information_source: The other fields are required for the Modern authentication type and are set up during the Enabling OAuth with Azure App Registration setup.

# Database repository
The following steps need to be completed to create the Database repository type.

1. We start in the _**DMS by Simova - Administrator**_ role.
2. Click on _**Setup**_ in the ribbon bar and execute the action _**Repository**_.
3. Execute the action _**New**_ in the ribbon bar.
4. Select the repository type _**SharePoint**_ in the _**Repository Type**_ field.
5. Specify the repository code by entering a code in the _**Code**_ field.

> :warning: The files and documents are stored in the BLOB field when _**Database**_ is selected as the repository type. This can cause a strong growth of the database. 

# See also
- [Creation of the SharePoint web application](/Setting-up-DMS-by-Simova/General-settings/Repository-selection/Creation-of-the-SharePoint-web-application)
- [Enabling OAuth with Azure App Registration](/Setting-up-DMS-by-Simova/General-settings/Repository-selection/Enabling-OAuth-with-Azure-App-Registration)