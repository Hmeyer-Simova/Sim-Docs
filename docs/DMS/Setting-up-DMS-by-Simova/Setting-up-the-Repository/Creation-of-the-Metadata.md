

Metadata represent the attributes of documents and are assigned to content types. Metadata need to be created before content types are created. There are different types of metadata that DMS by Simova supports. Text, Integer, Boolean, DateTime, Number and GUID can be selected as the type. The type defines the input option of values for the metadata.

# Create and publish metadata
The following steps need to be completed to create and publish metadata.

1. We start in the _**DMS by Simova - Administrator**_ role.
2. Click on the cue _**All**_ in the _**Metadata**_ section.
3. Specify the name of the metadata by entering a meaningful name in the _**Display Name**_ field.
4. Select the _**Type**_ of the metadata.
5. Execute the action _**Publish to Repository**_ in the ribbon bar.
6. The metadata is transferred to the repository.
7. The metadata is marked as _**Published**_ when it has been transferred successfully.

> :warning: Please ensure that the correct type of metadata is selected.

# Reset publish state
The following steps need to be completed to reset the publish state for a metadata.

1. We start in the _**DMS by Simova - Administrator**_ role.
2. Click on the cue _**All**_ in the _**Metadata**_ section.
3. Mark the metadata that should be resetet.
4. Execute the action _**Reset Status**_ in the ribbon bar.
5. The Published checkbox will be resetet.

> :information_source: The metadata in the repository is not deleted when the status is reset. The clean-up needs to be done manually in SharePoint if a SharePoint repository is used.

# Update metadata from repository
The following steps need to be completed to sync the existing metadata from repository.

1. We start in the _**DMS by Simova - Administrator**_ role.
2. Click on the cue _**All**_ in the _**Metadata**_ section.
4. Execute the action _**Update Repository**_ in the ribbon bar.
5. The metadata is automatically loaded from the repository and added to the metadata list.

> :warning: Only metadata added to a category DMS in the SharePoint columns will be loaded.

# See also
