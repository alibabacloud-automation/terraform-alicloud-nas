# alicloud_nas_access_group

## Input

| Name            | Description                                                  | Type   | Default | Required |
| :-------------- | :----------------------------------------------------------- | ------ | ------- | -------- |
| access_group_type | Permission group type, including the Vpc and Classic types | string | Vpc     | yes      |
| access_group_name | Permission group name 					 | string | null    | yes      |
| access_group_description | Permission group description. It is the same as the permission group name by default.| string | null| no |
| create_access_group | Determine whether a permission group exists              | bool   | false    | yes      |

## Output
| Name            | Description                                                  |
| :-------------- | :----------------------------------------------------------- |
| this_access_group_description | Permission group description. It is the same as the permission group name by default |
| this_access_group_type | Permission group type, including the Vpc and Classic types |
| this_access_group_name | Permission group name |

