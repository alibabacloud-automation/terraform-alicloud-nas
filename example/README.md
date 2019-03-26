# Complete nas example

Configuration in this directory creates file system, access group, access rule and mount target.

## Usage

To run this example you need to execute:

```bash
$ terraform init
$ terraform plan
$ terraform apply
```

Note that this example may create resources which cost money. Run `terraform destroy` when you don't need these resources.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Outputs

| Name | Description |
|------|-------------|
| this_file_system_id     |  file system id created       |
| this_mount_target_domain|  mount target domain  created |
| this_access_group_name|  access group name  created |
| this_access_rule_id|  access rule id  created |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
