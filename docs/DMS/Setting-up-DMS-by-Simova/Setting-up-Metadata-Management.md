

Metadata configured via the field mapping are values that cannot be changed. Metadata Management allows metadata to be added for manual entry or selection of metadata values.

# Metadaten Management Matrix
Metadata can be displayed for specific cases by configuration in Metadata Management. The following matrix describes the possible setups.


| **Metadata Name** | **Document Library Code** | **Content Type Name** | **Description** |
|--|--|--|--|
| <center>![image](/Getting-started/green-checkmark.png)</center> |  |  | The selected metadata in the field _**Metadata Name**_ is displayed for each document library and content type. |
| <center>![image](/Getting-started/green-checkmark.png)</center> | <center>![image](/Getting-started/green-checkmark.png)</center> |  | The selected metadata in the field _**Metadata Name**_ is displayed for the specified document library in the field _**Document Library Code**_ and all content type which are assigned to the document library. |
| <center>![image](/Getting-started/green-checkmark.png)</center> | <center>![image](/Getting-started/green-checkmark.png)</center> | <center>![image](/Getting-started/green-checkmark.png)</center> | The selected metadata in the field _**Metadata Name**_ is displayed for the specified document library in the field _**Document Library Code**_ and the specified content type in the field _** Content Type Name**_. Only content types from the selected document library can be selected. |
| <center>![image](/Getting-started/green-checkmark.png)</center> |  | <center>![image](/Getting-started/green-checkmark.png)</center> | The selected metadata in the field _**Metadata Name**_ is displayed for the specified content type in the field _**Content Type Name**_ and all document libraries where the content type is assigned too. |

# Define as mandatory field
The following steps need to be completed to define a metadata as mandatory.

1. We start in the _**DMS by Simova - Administrator**_ role.
2. Click on _**Repository**_ in the ribbon bar and execute the action _**Metadata Management**_.
3. Execute the action _**Edit List**_ in the ribbon bar.
4. Activate the _**Required Field**_ checkbox for the metadata that requires a mandatory input.
5. The Metadata field has to be filled after the setup.

# Restrict metadata for specific groups
The following steps need to be completed to restrict a metadata for a group.

1. We start in the _**DMS by Simova - Administrator**_ role.
2. Click on _**Repository**_ in the ribbon bar and execute the action _**Metadata Management**_.
3. Execute the action _**Edit List**_ in the ribbon bar.
4. Select the group in the field _**Limit Access to**_ for the metadata that should be restricted for a group.
5. The Metadata field will be restrict for the spedified group after the setup.

> :warning: Please ensure that members of the group are the correct one.

# Create and enable metadata templates
The following steps need to be completed to restrict a metadata for a group.

1. We start in the _**DMS by Simova - Administrator**_ role.
2. Click on _**Repository**_ in the ribbon bar and execute the action _**Metadata Management**_.
3. Execute the action _**Edit List**_ in the ribbon bar.
4. Activate the _**Enable Metadata Templates**_ checkbox for the metadata where metadata templates should be added too.
5. The _**Metadata Templates**_ area is displayed.
6. Add the templates in the _**Value**_ field.
7. The values are available for selection for the metadata.

> :information_source: A template value can be set up as a predefined value with the checkbox _**Default value**_. The checkbox _**Fixed**_ can be activated if a template value is to be defined for a metadata. Moreover a template value for the silent drop can be set via the checkbox _**Silent drop fixed value**_ if files and documents are added to DMS by Simova via silent drop.

# See also
