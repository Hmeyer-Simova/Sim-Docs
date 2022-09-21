

Inbound lists are used to return documents by barcode or file name to a specific process in Business Central.

# Create inbound list for return by barcode 
The following steps need to be completed to create an inbound list.

1. We start in the _**DMS by Simova - Administrator**_ role.
2. Click on _**Repository**_ in the ribbon bar and execute the action _**Inbound Lists**_.
3. Execute the action _**New**_ in the ribbon bar.
4. Specify the inbound list code by entering a code in the _**Code**_ field.
5. Specify the inbound list name by entering a name in the _**Name**_ field.
6. Select the assignment type in the _**Assignment Type**_ field to determine if the process should be executed automatically or with a manual assignment.
7. Select the error inbound list in the _**Error Inbound List**_ field.
8. Select the import type _**Import by Barcode**_ in the _**Import Type**_ field.
9. The inbound list for a barcode return is created.

> :information_source: BarSplit service needs to be connected for an automatic return.

# Add timestamp to the filename
The following steps need to be completed to add a timestamp to the file name.

1. We start in the _**DMS by Simova - Administrator**_ role.
2. Click on _**Repository**_ in the ribbon bar and execute the action _**Inbound Lists**_.
3. Click on the inbound list _**Code**_ where the timestamp should be configured too.
4. Activate the checkbox _**Add Timestamp to Filename**_.
5. Specify the separator between the file name and the timestamp in the field _**Separator between Barcode and Timestamp**_.
6. A timestamp is now added to the file name for documents returned by barcode.

# Configure inbound list for manual execution
The following steps need to be completed to configure an inbound list for manual execution.

1. We start in the _**DMS by Simova - Administrator**_ role.
2. Click on _**Repository**_ in the ribbon bar and execute the action _**Inbound Lists**_.
3. Click on the inbound list _**Code**_ that should be configured for manual execution.
4. Select the assignment type _**Half Automatically**_ in the _**Assignment Type**_ field.
5. Specify the barcode type in the _**Barcode Type**_ field.
6. Specify the minimum barcode length in the _**Barcode Minimum Length**_ field.
7. Specify the DPI value in the _**DPI**_ field.

# See also
