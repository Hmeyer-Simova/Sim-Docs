

Mappings represent the data link from an area in Business Central to a document library and the metadata. It is possible to create only one mapping per area. The definition of a mapping is done via the document type definition.

# Create mapping
The following steps need to be completed to create a mapping and assign it to a document library.

1. We start in the _**DMS by Simova - Administrator**_ role.
2. Click on _**Mapping**_ in the ribbon bar and execute the action _**Mappings**_.
3. Execute the action _**New**_ in the ribbon bar.
4. Specify the mapping code by entering a code in the _**Code**_ field.
5. Specify the mapping description by entering a description in the _**Description**_ field.
6. Select a document library code in the _**Document Library Code**_ field to link the mapping with a document library.
7. Specify the table by entering or selection of a table ID/Name in the _**Table**_ field.
8. Specify the page by entering or selection of a page ID/Name in the _**Page Card**_ field.
9. Specify the list by entering or selection of a list ID/Name in the _**Page List**_ field.
10. Add the _**Source field**_ and _**Metadata Display Name**_ mapping in the register _**Field Mapping**_. A field from the defined Business Central table is selected as the Source Field. The appropriate metadata from the DMS setup is selected as the Metadata Display Name.
11. Activates the checkbox _**Include in Query**_ for the source field to be used for the query. These are usually sequence number fields in the table.
12. Execute the action _**Set Document Type**_ in the ribbon bar.
13. The _**Unique Document Type**_ checkbox has to be activated if there is only one document type in the defined table. In case there are several document types in the table the mapping need to be defined by a _**Table Field**_ and the specific _**Value**_. In most cases, there is a document type field that can be used to select the matching value for the document type.
14. The creation of the mapping is completed.

# Set alternative mapping
There may be document types in Business Central that are archived in the business process execution. An alternative mapping needs to be set up in the original document type mapping to create a matching to the archived document type. The following steps need to be completed to set a alternative mapping on the original document type mapping.

1. We start in the _**DMS by Simova - Administrator**_ role.
2. Click on _**Mapping**_ in the ribbon bar and execute the action _**Mappings**_.
3. Click on the mapping _**Code**_ that should be configured with the alternative mapping.
4. Select a mapping code in the _**Alternative Mapping Code**_ field to link a original mapping with antoher mapping.

> :warning: It is important that all mappings are created first. The alternative mapping setup for archived areas should only then be carried out.

# See also
