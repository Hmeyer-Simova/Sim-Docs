

DMS by Simova can be extended with code that allows a quick configuration with one click. In this documentation, as an example, we have split up the functions into 3 actions in order to guarantee a better explanation. 
However it is also possible to implement the following 3 functions as one action which will be explained in a later section.


# Function Overview 
A new Codeunit with four functions has been added. 

3 Functions for separate configuration:

 - Import a configuration (ImportConfiguration)
 - Create a repository entry (CreateRepository)
 - Publish DMS to the repository (PublishDMS)

Function for execution all of the above functionalities:

 - Executing all of the above functions (CompleteConfiguration)

The following documentation describes the parameters of the functions and how to implement them as an example.

#Import a configuration
For importing a configuration for the DMS an action has to be created in a custom area including the following code.
## Parameters

|Name|DataType|Description|
|--|--|--|
| ParamBase64Text | Text |Contains the configuration as a Base64 string that is imported into the system|

> :information_source: The Configuration file that will be used for this process can be created with the configuration wizard

## Code example

The following code example opens a file explorer where it is possible to select the product configuration that you want to import into business central.

    trigger OnAction()
    var
       LocalCodeunitSIMDMSConfiguration: Codeunit "SIM_DMS Configuration";
       LocalCodeunitTempBlob: Codeunit "Temp Blob";
       LocalCodeunitBase64Convert: Codeunit "Base64 Convert";
       GlobalCodeunitFileManagement: Codeunit "File Management";
       LocalInStream: InStream;
       LocalBase64StringText: Text;
       LocalconfigText: Text;
    begin
       Clear(LocalCodeunitTempBlob);
       GlobalCodeunitFileManagement.BLOBImportWithFilter(LocalCodeunitTempBlob, 'Choose Import File', '', 'All Files (*.*)|*.*', '*.*');
       if not LocalCodeunitTempBlob.HasValue() then exit;
       LocalCodeunitTempBlob.CreateInStream(LocalInStream, TextEncoding::UTF8);
       LocalInStream.Read(LocalconfigText);

       if LocalconfigText = '' then exit;

       LocalBase64StringText:= LocalCodeunitBase64Convert.ToBase64(LocalconfigText);
       LocalCodeunitSIMDMSConfiguration.ImportConfiguration(LocalBase64StringText);
    end;


#Create a repository entry
For creating a repository entry for the DMS an action has to be created in a custom area including the following code.
## Parameters

|Name|DataType|SubType |Lenght|Description|
|--|--|--|--|--|
| ParamRepositoryCode| Code | | 10 |Specifies the Name of the Repository |
| ParamEnumSIMDMSArchiveSystem | Enum | "SIM_DMS Archive System" | |Specifies the type of the Repository (SharePoint/Database)|
| ParamRepositoryServerURLText| Text | | 250 | Specifies the Repository URL. Enter the URL without the suffix "/".|
| ParamEnumSIMCOREAuthenticationMode| Enum | "SIM_CORE Authentication Mode" ||Specifies the authentication method. A distinction is made between SharePoint On-Premise with Kerberos or NTLM authentication, SharePoint forms-based authentication and SharePoint Online authentication.|
| ParamEnumSIMCOREAuthenticationType| Enum | "SIM_CORE Authentication Type" ||Specifies the authentication type. When using Basic authentication with multi-factor authentication enabled, an app password must be used as the user password. When using Modern authentication, an client id, tenant id and client secret must be used.|
| ParamRepositoryLangaugeID| Integer| | |Specifies the language of the repository.|
| ParamAppNameText| Text| | 250|Specifies the Name for the Azure AD application|
| ParamClientIDText| Text| | 250|Specifies the Client ID for Authentication |
| ParamTenantIDText| Text| | 250|Specifies the Tenant ID for Authentication.|
| ParamClientSecretText| Text| | 250|Specifies the Client Secret for Authentication.|
| ParamRedirectUrlText| Text| | 250|Specifies the Redirect Url after Authentication.|
| ParamTenantNameText| Text| | 250|Specifies the Tenant Name for Authentication.|

##Code example
The following code example will create a DMS repository entry with the values that are set as parameters for the function **CreateRepository** and the repository code will be inserted into the **DMS module setup**.

> :warning: If there is already a repository entry with the same repository code, the existing repository entry is used


    trigger OnAction()
    var
       LocalCodeunitSIMDMSCompanyConfiguration: Codeunit "SIM_DMS Configuration";
       LocalEnumSIMDMSArchiveSystem: Enum "SIM_DMS Archive System";
       LocalEnumSIMCOREAuthenticationMode: Enum "SIM_CORE Authentication Mode";
       LocalEnumSIMCOREauthenticationType: Enum "SIM_CORE Authentication Type";
    begin
       LocalCodeunitSIMDMSCompanyConfiguration.CreateRepository('Sharepoint', LocalEnumSIMDMSArchiveSystem::SharePoint, 'https://tegos.sharepoint.com/sites/simova-portal/archivtestseiten/SampleRepository', LocalEnumSIMCOREAuthenticationMode::SharepointOnline, LocalEnumSIMCOREauthenticationType::Basic, 1033, 'DMS by Simova', '', '', '', '', '');
    end;

#Publish DMS to the repository
For triggering the publishing of the configuration to the SharePoint an action has to be created in a custom area including the following code.
## Parameters

|Name|DataType|Lenght|Description|
|--|--|--|--|
| ParamUserIDCode| Text | 50 |Specifies the Business central User ID|
| ParamRepositoryUsernameText| Text| 100|Specifies the user name of the user to be used for the repository. In case of SharePoint Online (O365) is used as a repository, the SharePoint Online credentials must always be entered.|
| ParamRepositoryPasswordText| Text| 250|Specifies the password of the user to be used for the repository. In case of SharePoint Online (O365) is used as a repository, the SharePoint Online credentials must always be entered. If multi-factor authentication (MFA) is used, an App password must be entered here.|

## Code example

The following code sample executes the **PublishDMS** function, which creates a DMS user with the defined parameters and publishes the data in the context of the created DMS user to the repository

> :warning: If a DMS user with the entered UserID already exists, the already existing user will be used

    trigger OnAction()
    var
       LocalCodeunitSIMDMSCompanyConfiguration: Codeunit "SIM_DMS Configuration";
    begin
       LocalCodeunitSIMDMSCompanyConfiguration.PublishDMS(CopyStr(UserId, 1, 50), 'sampleRepositoryUsername', 'SampleRepositoryPassword');
    end;

#Comfort function
For triggering all of the above functions with one click an action has to be created in a custom area including the following code.

## Code example

The following code example opens a file explorer where you can select the product configuration you want to import into Business Central. Then a DMS repository entry is created with the values defined as parameters and the repository code is inserted into the DMS module setup. After that, a DMS user is created with the defined parameters and the data is published to the repository in the context of the created DMS user.

    trigger OnAction()
    var
       LocalCodeunitSIMDMSConfiguration: Codeunit "SIM_DMS Configuration";
       LocalCodeunitTempBlob: Codeunit "Temp Blob";
       LocalCodeunitBase64Convert: Codeunit "Base64 Convert";
       GlobalCodeunitFileManagement: Codeunit "File Management";
       LocalEnumSIMDMSArchiveSystem: Enum "SIM_DMS Archive System";
       LocalEnumSIMCOREAuthenticationMode: Enum "SIM_CORE Authentication Mode";
       LocalEnumSIMCOREauthenticationType: Enum "SIM_CORE Authentication Type";
       LocalInStream: InStream;
       LocalBase64StringText: Text;
       LocalconfigText: Text;
    begin
       Clear(LocalCodeunitTempBlob);
       GlobalCodeunitFileManagement.BLOBImportWithFilter(LocalCodeunitTempBlob, 'Choose Import File', '', 'All Files (*.*)|*.*', '*.*');
       if not LocalCodeunitTempBlob.HasValue() then exit;
       LocalCodeunitTempBlob.CreateInStream(LocalInStream, TextEncoding::UTF8);
       LocalInStream.Read(LocalconfigText);

       if LocalconfigText = '' then exit;

       LocalBase64StringText:= LocalCodeunitBase64Convert.ToBase64(LocalconfigText);
       LocalCodeunitSIMDMSConfiguration.CompleteConfiguration(LocalBase64StringText,'Sharepoint', LocalEnumSIMDMSArchiveSystem::SharePoint, 'https://tegos.sharepoint.com/sites/simova-portal/archivtestseiten/SampleRepository', LocalEnumSIMCOREAuthenticationMode::SharepointOnline, LocalEnumSIMCOREauthenticationType::Basic, 1033, 'DMS by Simova', '', '', '', '', '',CopyStr(UserId, 1, 50), 'sampleRepositoryUsername', 'SampleRepositoryPassword');
    end;

> :information_source: the order of the passed parameters is as followed: **Import a configuration**,**Create a repository entry**,**Publish DMS to the repository**

# See also
- [Configuration Wizard](/Setting-up-DMS-by-Simova/Quick-start/Configuration-Wizard)
- [General settings](/Setting-up-DMS-by-Simova/General-settings)
- [Repository selection](/Setting-up-DMS-by-Simova/General-settings/Repository-selection)

 