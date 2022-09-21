

It is possible that documents are automatically converted to PDF or PDF/A3 when they are dropped. The option is located in the Module Setup.

This feature also allows to save e.g. booked documents directly as PDF/A3 which prevents the modification of the file.

# Enable PDF conversion
1. We start in the _**DMS by Simova - Administrator**_ role.
2. Open the page _**Simova Apps | DMS Module Setup**_
3. In the General Tab there is a group "PDF Conversion". Check the box "Convert Documents to PDF". _**(If this is not possible, the API by Simova must be updated.)**_

# Configure a conversion
1. Now another field appears showing the number of document types to be converted to PDF. **Click** on the number that appears.
2. A page opens for setting up the **document types to be converted**.
3. Through the dropdown of the "File Extension Description" field it is possible to select a specific file format.
4. As an example, you can now create a line for the **conversion of .png files**, select the **PDF format** to which it should be converted, and either **check** whether the original file (the .png file) should also be uploaded.
# Activate a conversion
1. **Activate** the conversion by checking the "Active" box.
2. Now, with this setup, all .png files will be converted to a PDF and stored in DMS by Simova.


> :information_source:In order to use this feature for the conversion of documents stored by double printing, it is only necessary to set up PDF to PDF/A3. 

> :warning:**Please note:** When PDF to PDF/A3 is set up, any PDF will be converted automatically whether it is dropped manually or printed twice. In addition, the field "Upload Source File" is disabled during the PDF conversion, otherwise the document would be stored with two versions).



# See also
- [Create new Cycle](/Working-with-DMS-by-Simova/Create-new-Cycle)
- [Correct Metadata](/Working-with-DMS-by-Simova/Correct-Metadata)
