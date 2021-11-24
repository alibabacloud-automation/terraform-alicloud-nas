# Alicloud Nas Terraform Module On Alibaba Cloud 
# terraform-alicloud-nas

Terraform module which creates NAS resources on Alibaba Cloud

These types of resources are supported:
- [nas_file_system] (https://www.terraform.io/docs/providers/alicloud/r/nas_file_system.html)
- [nas_access_group](https://www.terraform.io/docs/providers/alicloud/r/nas_access_group.html)
- [nas_access_rule] (https://www.terraform.io/docs/providers/alicloud/r/nas_access_rule.html)
- [nas_mount_target](https://www.terraform.io/docs/providers/alicloud/r/nas_mount_target.html)

## Usage

You can use this in your terraform template with the following steps.

1. Adding a module resource to your template, e.g. main.tf
	
	```
	module "nas" {
        source = "terraform-alicloud-modules/nas/alicloud"
        create_access_group = "${var.create_access_group}"
        create_access_rule  = "${var.create_access_rule}"
        create_mount_target = "${var.create_mount_target}"
	create_file_system  = "${var.create_file_system}"
        protocol_type   = "${var.file_system_protocol_type}"
        storage_type    = "${var.file_system_storage_type}"
        file_system_description  = "${var.file_system_description}"
        access_group_description = "${var.access_group_description}"
        type        = "${var.access_group_type}"
        access_group_name = "${var.access_group_name}"
        source_cidr_ip    = "${var.source_cidr_ip}"
        rw_access_type    = "${var.rw_access_type}"
        user_access_type  = "${var.user_access_type}"
        priority          = "${var.access_rule_priority}"
        vswitch_id       = "${var.vswitch_id}"
        file_system_description = "${var.file_system_description}"
        access_group_description = "${var.access_group_description}"
	}
	```
2. Setting `access_key` and `secret_key` values through environment variables:

	- ALICLOUD_ACCESS_KEY
	- ALICLOUD_SECRET_KEY
	- ALICLOUD_REGION

# Input

| Name            | Description                                                  | Type   | Default | Required |
| :-------------- | :----------------------------------------------------------- | ------ | ------- | -------- |
| file_system_protocol_type	| Type of protocol type of file system. Currently includes the NFS type and the SMB type.| string  | Performance | yes |
| file_system_storage_type	| The storage type of file system. Currently includes the Performance type and the Capacity type | string | NFS | yes |
| file_system_description | description of file system (space characters are not allowed). | string | null | no |
| access_group_description | description of access group (space characters are not allowed). | string | terraform-alicloud-nas-file-system| no |
| acces_group_type		| Permission group type of access group, including the Vpc and Classic types | string   | Vpc    | yes     |
| access_group_name | The Name of the access group name of mount target and access rule and access group. | string | null    | yes      |
| source_cidr_ip    | Address or address segment of access rule.                 | string | null    | yes      |
| rw_access_type    | Read-write permission type: RDWR (default), RDONLY of access rule.  | string | RDWR    | no       |
| user_access_type  | User permission type: no_squash (default), root_squash, all_squash of access rule. | string | no_squash | no |
| access_rule_priority          | Priority level. Range: 1-100. Default value: 1 of access rule. | Integer | 1      | no |
| vswitch_id        | The ID of the VSwitch ID of mount target.                  | string | null    | no       |
| create_access_group | Determine whether a permission group exists of access group. | bool   | false   | no   |
| create_access_rule  | Judging whether permission rules exist of access rule.       | bool   | false   | no       |
| create_file_system  | Judging whether file system exist of file sytem.             | bool   | false   | no       |
| create_mount_target | Judging whether mount target exist of mount target.          | bool   | false   | no       |

## Output

| Name            | Description                                                  |
| :-------------- | :----------------------------------------------------------- |
| this_file_system_id | The ID of the file system.                               |
| this_protocol_type  | The protocol_type of the file system.                    |
| this_storage_type   | The storage_type of the file system.                     |
| this_type   	      | The type of the access group.                       	 |
| this_access_group_name   | The name of the access group.                       |
| this_mount_target_domain | The Mount Target Domain of the mount target.        |
| this_source_cidr_ip | The source_cidr_ip of the access rule.              	 |
| this_rw_access_type | The rw_access_type of the access rule.                   |
| this_user_access_type | The user_access_type of the access rule.               |
| this_priority 	| The priority of the access rule.                   	 |
| this_access_rule_id   | The id of the access rule.                       	 |

## Notes
From the version v1.2.0, the module has removed the following `provider` setting:

```hcl
provider "alicloud" {
	version              = ">=1.56.0"
	region               = var.region != "" ? var.region : null
	configuration_source = "terraform-alicloud-modules/classic-load-balance"
}
```

If you still want to use the `provider` setting to apply this module, you can specify a supported version, like 1.1.0:

```hcl
module "nas" {
	source              = "terraform-alicloud-modules/nas/alicloud"
	version             = "1.1.0"
	region              = "cn-beijing"
	create_access_group = true
	create_access_rule  = true
	// ...
}
```

If you want to upgrade the module to 1.2.0 or higher in-place, you can define a provider which same region with
previous region:

```hcl
provider "alicloud" {
	region = "cn-beijing"
}
module "nas" {
	source              = "terraform-alicloud-modules/nas/alicloud"
	create_access_group = true
	create_access_rule  = true
	// ...
}
```
or specify an alias provider with a defined region to the module using `providers`:

```hcl
provider "alicloud" {
	region = "cn-beijing"
	alias  = "bj"
}
module "nas" {
	source              = "terraform-alicloud-modules/nas/alicloud"
	providers           = {
		alicloud = alicloud.bj
	}
	create_access_group = true
	create_access_rule  = true
	// ...
}
```

and then run `terraform init` and `terraform apply` to make the defined provider effect to the existing module state.

More details see [How to use provider in the module](https://www.terraform.io/docs/language/modules/develop/providers.html#passing-providers-explicitly)

## Terraform versions

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.12.0 |
| <a name="requirement_alicloud"></a> [alicloud](#requirement\_alicloud) | >= 1.56.0 |

Authors
-------
Created and maintained by Alibaba Cloud Terraform Team(terraform@alibabacloud.com)

License
----
Apache 2 Licensed. See LICENSE for full details.
Reference
---------
* [Terraform-Provider-Alicloud Github](https://github.com/terraform-providers/terraform-provider-alicloud)
* [Terraform-Provider-Alicloud Release](https://releases.hashicorp.com/terraform-provider-alicloud/)
* [Terraform-Provider-Alicloud Docs](https://www.terraform.io/docs/providers/alicloud/index.html)