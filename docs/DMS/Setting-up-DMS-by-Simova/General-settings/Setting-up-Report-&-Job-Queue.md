

DMS by Simova runs some processes in the background. These processes are executed by the job queue entries in Business Central. The standard job queue entries for DMS by Simova are automatically created with the installation of the Extension.

This includes the following job queue entries:


| **Job Queue Entry** | **Description** | **Parameter** |
|--|--|--|
| DMS Job Queue - Archive | This job queue entry processes the report queue and uploads the documents from the shadow print to the repository.  | Execution takes place every minute. |
| DMS Job Queue - Synchronize Document Library | This job queue entry synchronize the document libraries with the document entry.  | Execution takes place every minute. |
| DMS Job Queue - Import / Assign | This job queue entry processes the import and assignment of files and documents from the inbound list. | Execution takes place every minute. |
| DMS Job Queue - Cycle creation | This job queue entry creates the new cycle at a new year. The execution takes place on the first day of the new year. | Execution takes place every minute. |
| DMS Job Queue - Clean Uploads | This job queue entry cleans up the BLOB field if the repository upload has to be carried out later. This can happen if the repository was not available at the time of upload. | Execution takes place every minute. |

# Report queue configuration
The following steps need to be completed to configure the report queue.

1. We start in the _**DMS by Simova - Administrator**_ role.
2. Click on _**Setup**_ in the ribbon bar and execute the action _**General**_.
3. The _**Retries**_ and _**Time span for next retry**_ option is set to default values. The values can be adjusted here.

# Job queue configuration
The following steps need to be completed to configure the job queue.

1. We start in the _**DMS by Simova - Administrator**_ role.
2. Click on _**Setup**_ in the ribbon bar and execute the action _**General**_.
3. The _**Retrying the job queue**_ option is set to default value. The value can be adjusted here.

# Re-creation of the job queue entries
The following steps need to be completed to re-create the job queue entries.

1. We start in the _**DMS by Simova - Administrator**_ role.
2. Execute the action _**Create default entries**_ in the _**Job Queue Entries**_ List directly from the _**DMS by Simova - Administrator**_ role.
3. The standard job queue entries are created.

# See also
