

Mappings represent the data link from an area in Business Central to a document library and the metadata. It is possible to create only one mapping per area. The definition of a mapping is done via the document type definition.

# Create field data mapping
The following steps need to be completed to create a data mapping.

1. We start in the _**DMS by Simova - Administrator**_ role.
2. Click on _**Mapping**_ in the ribbon bar and execute the action _**Data Mapping**_.
3. Execute the action _**New**_ in the ribbon bar.
4. Specify the data mapping code by entering a code in the _**Code**_ field.
5. Specify the data mapping description by entering a description in the _**Description**_ field.
6. Specify the target table in the _**Target Table**_ field which is the initial table.
7. Specify the target field in the _**Target Field**_ field which is the link field in the initial table.
8. Specify the type _**FIELD**_ in the _**Type**_ field to connect the source and target fields together.
9. Specify the source table in the _**Source Table**_ field.
10. Specify the source field in the _**Source Field**_ field which connects the target field.
11. A new line can be created if filters are to be applied. The type _**FILTER**_ or _**CONST**_ can be used. The filter value is specified in the _**Field Filter**_ field. The filter is applied based on the _**Source Table**_ and _**Source Field**_.
12. A new line should be created and the checkbox _**New Table**_ needs to be activated if you want to proceed to another table. The previous _**Source Table**_ is the new _**Target Table**_ in the new row.
13. A final line needs to be created with the type _**RETURN**_ in the _**Type**_ field. These final line returns the value of the _**Source Field**_.

# Create function data mapping
The following steps need to be completed to create a data mapping.

1. We start in the _**DMS by Simova - Administrator**_ role.
2. Click on _**Mapping**_ in the ribbon bar and execute the action _**Data Mapping**_.
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

# Assign data mapping
There may be document types in Business Central that are archived in the business process execution. An alternative mapping needs to be set up in the original document type mapping to create a matching to the archived document type. The following steps need to be completed to set a alternative mapping on the original document type mapping.

1. We start in the _**DMS by Simova - Administrator**_ role.
2. Click on _**Mapping**_ in the ribbon bar and execute the action _**Mappings**_.
3. Click on the mapping _**Code**_ that should be configured with the alternative mapping.
4. Select a mapping code in the _**Alternative Mapping Code**_ field to link a original mapping with antoher mapping.

> :warning: It is important that all mappings are created first. The alternative mapping setup for archived areas should only then be carried out.

# See also
