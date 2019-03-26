
# alicloud_nas_access_rule

## Input

| Name            | Description                                                  | Type   | Default | Required |
| :-------------- | :----------------------------------------------------------- | ------ | ------- | -------- |
| access_group_name | The Name of the access group name.                         | string | null    | yes      |
| source_cidr_ip    | Address or address segment. 				 | string | 168.1.1.0/16 | yes |
| rw_access_type    | Read-write permission type: RDWR (default), RDONLY. 	 | string | RDWR    | no       |
| user_access_type  | User permission type: no_squash (default), root_squash, all_squash. | string  | no_squash| no |
| access_rule_priority | Priority level. Range: 1-100. Default value: 1.		 | Integer| 1	    | no       |
| create_access_rule| Determine whether a access rule exists.               	 | bool   | false   | yes      |

## Output
| Name            | Description                                                  |
| :-------------- | :----------------------------------------------------------- |
| this_access_group_name | The Name of the access group name.                    |
| this_source_cidr_ip | Address or address segment. |
| this_rw_access_type | Read-write permission type: RDWR (default), RDONLY. 	 |
| this_user_access_type | User permission type: no_squash (default), root_squash, all_squash. |
| this_access_rule_priority | Priority level. Range: 1-100. Default value: 1.		 |
| this_access_rule_id | The id of <access group name>:<access rule id>.          |
