

Document libraries represent the storage location of documents. Content types are added to document libraries. Documents can then be stored in the document library with the available content types. Document libraries can be used multiple times for different areas. But it is recommended to create a document library for each area. 

# Create and publish document library
The following steps need to be completed to create and publish a document library.

1. We start in the _**DMS by Simova - Administrator**_ role.
2. Click on _**Repository**_ in the ribbon bar and execute the action _**Document Libraries**_.
3. Execute the action _**New**_ in the ribbon bar.
4. Specify the document library code by entering a code in the _**Code**_ field.
5. Select a default content type in the _**Dafault Content Type**_ field.
6. Activate the checkbox _**Activate Cycle**_.
7. Activate the checkbox _**Versioning**_.
8. Add more content types to the _**Content Types**_ list.
9. Execute the action _**Publish to Repository**_ in the ribbon bar.
10. The document library and the assigned content types is transferred to the repository.
11. The document library and the assigned content types is marked as _**Published**_ when it has been transferred successfully.

# Reset publish state
Some settings cannot be adjusted for a document library in the published state. Furthermore, it is sometimes necessary to republish a document library. Resetting the publishing status helps in this case. The following steps need to be completed to reset the publish state for a document library and the assigned content types.

1. We start in the _**DMS by Simova - Administrator**_ role.
2. Click on _**Repository**_ in the ribbon bar and execute the action _**Document Libraries**_.
3. Mark the document library that should be resetet in the _**Document Libraries**_ list.
3. Execute the action _**Reset Status**_ in the ribbon bar.
4. The Published checkbox will be resetet for the document library and the assigned content type.

> :information_source: The document library and the content types will not be deleted in the repository when the status is reset.

# Delete document library
The following steps need to be completed to delete a document library.

1. We start in the _**DMS by Simova - Administrator**_ role.
2. Click on _**Repository**_ in the ribbon bar and execute the action _**Document Libraries**_.
3. Mark the document library that should be deleted in the _**Document Libraries**_ list.
3. Execute the action _**Delete all data from repository**_ in the ribbon bar.
4. A message appears asking if you really want to delete all the data in the document library. This also deletes all releted entries to this document library in the document entry. Click _**Yes**_.
5. The document library will be deleted from the repository and the document entries will be deleted from the document entry. The Published checkbox will be resetet for the document library and the assigned content type.

> :information_source: The document library remains in the setup. The document library record can be deleted using the standard Business Central delete action.

# Update document library from repository
The following steps need to be completed to sync the existing content types from repository.

1. We start in the _**DMS by Simova - Administrator**_ role.
2. Click on _**Repository**_ in the ribbon bar and execute the action _**Document Libraries**_.
3. Execute the action _**Update Repository**_ in the ribbon bar.
4. The content type is automatically loaded from the repository and added to the content type list.

> :warning: Only content types added to a category DMS in the SharePoint columns will be loaded.

# Set index
The following steps need to be completed to add metadata to the index of a document library.

1. We start in the _**DMS by Simova - Administrator**_ role.
2. Click on _**Repository**_ in the ribbon bar and execute the action _**Document Libraries**_.
3. Execute the action _**Set Index**_ in the ribbon bar.
4. The metadata field assignments are created as index fields in the document library.

# Expand default view with metadata
New metadata needs to be expanded in the Document Library view when it is created and assigned to content types. The following steps need to be completed to add all existing metadata to the document libraries.

1. We start in the _**DMS by Simova - Administrator**_ role.
2. Click on _**Repository**_ in the ribbon bar and execute the action _**Document Libraries**_.
3. Execute the action _**Expand Default View with Metadata**_ in the ribbon bar.
4. The default view in SharePoint Server is enhanced with missing metadata in the view.

# See also
