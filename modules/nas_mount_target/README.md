licloud_nas_mount_target

## Input

| Name            | Description                                                  | Type   | Default | Required |
| :-------------- | :----------------------------------------------------------- | ------ | ------- | -------- |
| access_group_name | The Name of the access group name.                         | string | null    | yes      |
| file_system_id    | The ID of the File system ID.				 | string | null    | yes      |
| create_mount_target | Determine whether a mount target exists. 				 | bool | false    | yes       |
| vswitch_id 	    | The ID of the VSwitch ID.                                  | string | null    | no       |

## Output
| Name            | Description                                                  |
| :-------------- | :----------------------------------------------------------- |
| this_access_group_name   | The Name of the access group name.                  |
| this_file_system_id      | The ID of the File system ID.  			 |
| this_mount_target_domain | Mount point domain name. 				 |
| this_vswitch_id          | The ID of the VSwitch ID. 				 |