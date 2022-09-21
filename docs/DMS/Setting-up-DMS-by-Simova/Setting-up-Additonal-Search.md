

Mappings represent the data link from an area in Business Central to a document library. In some areas there may be a requirement to see files and documents from another area through linked values. If files and documents from the process should be seen in the master data the customer no. can be used as a linked value, for example.


# Create additional search
The following steps need to be completed to create an additional seach on a mapping.

1. We start in the _**DMS by Simova - Administrator**_ role.
2. Click on _**Mapping**_ in the ribbon bar and execute the action _**Mappings**_.
3. Click on the mapping _**Code**_ that should be configured with an additional search.
4. Execute the action _**Additonal Search**_ in the ribbon bar.
5. Execute the action _**Additonal Search Targets**_ in the ribbon bar.
6. Specify the additional search target code by entering a code in the _**Code**_ field.
7. Select a document library code in the _**Document Library**_ field where the target files and documents are stored too.
8. Select the metadata in the _**Display Name**_ field which is to be used as a linked value.
9. Activates the checkbox _**Activated Cycle**_ if the target document library is create in a cycle.
10. Go back tp _**Additional Search Sources**_.
11. Select the created additonal search target in the _**Target Code**_ field.
12. Specify the description by entering a description in the _**Description**_ field.
13. Select the matching source field from the mapping table in the _**Source Field**_ field.
14. The additional search is now activated on the mapping.

# Filter additional search by content type
The following steps need to be completed to filter content types in an additional search.

1. We start in the _**DMS by Simova - Administrator**_ role.
2. Click on _**Repository**_ in the ribbon bar and execute the action _**Additional Search**_.
3. Execute the action _**Edit List**_ in the ribbon bar.
4. Specify the content type in the _**Content Type Filter**_ field.

> :information_source: Multiple content types can be specified in a comma separated format.

# Use value mapping
In some cases it is necessary to overwrite specific source values and replace them with other values. The value mapping in the Additional Search can be used for this purpose. The following steps need to be completed to use value mapping in an additional search.

1. We start in the _**DMS by Simova - Administrator**_ role.
2. Click on _**Repository**_ in the ribbon bar and execute the action _**Additional Search**_.
3. Execute the action _**Value Mapping**_ in the ribbon bar.
4. Specify the _**Source Value**_ and the _**Target Value**_. The source value is then translated into the target value. The checkbox _**Ignore Source Value**_ has to be activated if it is necessary that all source values should be translated into a specific value.

# Consider the relationship between the documents
The following steps need to be completed in order to display the files found via document relationship for the found records.

1. We start in the _**DMS by Simova - Administrator**_ role.
2. Click on _**Repository**_ in the ribbon bar and execute the action _**Additional Search**_.
3. Execute the action _**Edit List**_ in the ribbon bar.
4. Activate the checkbox _**Use Document Relationship**_.



# See also
