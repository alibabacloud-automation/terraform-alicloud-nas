# alicloud_nas_file_system

## Input

| Name            | Description                                                  | Type   | Default | Required |
| :-------------- | :----------------------------------------------------------- | ------ | ------- | -------- |
| file_system_id  | file system id the of file system.                           | string | null    | no       |
| protocol_type   | Type of protocol used. Currently includes the NFS type and the SMB type | string   | Performance    | yes      |
| storage_type | The file system type. Currently includes the Performance type and the Capacity type | string | NFS     | yes      |
| file_system_description | File system description (space characters are not allowed). | string | terraform-alicloud-nas-file-system   | no       |

## Output
| Name            | Description                                                  |
| :-------------- | :----------------------------------------------------------- |
| this_file_system_id | File system id (space characters are not allowed).       |
| this_file_system_description | File system description (space characters are not allowed). |
| this_protocol_type | Type of protocol used. Currently includes the NFS type and the SMB type. |
| this_storage_type | The file system type. Currently includes the Performance type and the Capacity type. |
