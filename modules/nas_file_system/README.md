# alicloud_nas_file_system

## Input

| Name            | Description                                                  | Type   | Default | Required |
| :-------------- | :----------------------------------------------------------- | ------ | ------- | -------- |
| create_file_system  | Determine whether a file system exists.                           | bool | false    | yes       |
| file_system_type   | The type of the file system. Valid values: standard (Default), extreme, cpfs. | string   | standard    | no      |
| protocol_type   | The protocol type of the file system. Valid values: NFS, SMB (Available when the file_system_type is standard), cpfs (Available when the file_system_type is cpfs). | string   | Performance    | yes      |
| storage_type | The storage type of the file System. Currently includes the Performance type, the Capacity type, the standard type, the advance type, the advance_100 type and the advance_200 type. | string | NFS     | yes      |
| file_system_description | File system description (space characters are not allowed). | string | terraform-alicloud-nas-file-system   | no       |

## Output
| Name            | Description                                                  |
| :-------------- | :----------------------------------------------------------- |
| this_file_system_id | File system id (space characters are not allowed).       |
| this_file_system_description | File system description (space characters are not allowed). |
| this_protocol_type | Type of protocol used. Currently includes the NFS type and the SMB type. |
| this_storage_type | The file system type. Currently includes the Performance type and the Capacity type. |