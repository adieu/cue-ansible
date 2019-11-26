package ansible

module: avi_ipamdnsproviderprofile: {
	module: "avi_ipamdnsproviderprofile"
	author: "Gaurav Rastogi (@grastogi23) <grastogi@avinetworks.com>"

	short_description: "Module for setup of IpamDnsProviderProfile Avi RESTful Object"
	description: [
		"This module is used to configure IpamDnsProviderProfile object",
		"more examples at U(https://github.com/avinetworks/devops)",
	]
	requirements: ["avisdk"]
	version_added: "2.4"
	options: {
		state: {
			description: [
				"The state that should be applied on the entity.",
			]
			default: "present"
			choices: ["absent", "present"]
		}
		avi_api_update_method: {
			description: [
				"Default method for object update is HTTP PUT.",
				"Setting to patch will override that behavior to use HTTP PATCH.",
			]
			version_added: "2.5"
			default:       "put"
			choices: ["put", "patch"]
		}
		avi_api_patch_op: {
			description: [
				"Patch operation to use when using avi_api_update_method as patch.",
			]
			version_added: "2.5"
			choices: ["add", "replace", "delete"]
		}
		allocate_ip_in_vrf: {
			description: [
				"If this flag is set, only allocate ip from networks in the virtual service vrf.",
				"Applicable for avi vantage ipam only.",
				"Field introduced in 17.2.4.",
				"Default value when not specified in API or module is interpreted by Avi Controller as False.",
			]
			version_added: "2.5"
			type:          "bool"
		}
		aws_profile: description: [
			"Provider details if type is aws.",
		]
		azure_profile: {
			description: [
				"Provider details if type is microsoft azure.",
				"Field introduced in 17.2.1.",
			]
			version_added: "2.5"
		}
		custom_profile: description: [
			"Provider details if type is custom.",
			"Field introduced in 17.1.1.",
		]
		gcp_profile: description: [
			"Provider details if type is google cloud.",
		]
		infoblox_profile: description: [
			"Provider details if type is infoblox.",
		]
		internal_profile: description: [
			"Provider details if type is avi.",
		]
		name: {
			description: [
				"Name for the ipam/dns provider profile.",
			]
			required: true
		}
		oci_profile: {
			description: [
				"Provider details for oracle cloud.",
				"Field introduced in 18.2.1,18.1.3.",
			]
			version_added: "2.9"
		}
		openstack_profile: description: [
			"Provider details if type is openstack.",
		]
		proxy_configuration: description: [
			"Field introduced in 17.1.1.",
		]
		tenant_ref: description: [
			"It is a reference to an object of type tenant.",
		]
		tencent_profile: {
			description: [
				"Provider details for tencent cloud.",
				"Field introduced in 18.2.3.",
			]
			version_added: "2.9"
		}
		type: {
			description: [
				"Provider type for the ipam/dns provider profile.",
				"Enum options - IPAMDNS_TYPE_INFOBLOX, IPAMDNS_TYPE_AWS, IPAMDNS_TYPE_OPENSTACK, IPAMDNS_TYPE_GCP, IPAMDNS_TYPE_INFOBLOX_DNS, IPAMDNS_TYPE_CUSTOM,",
				"IPAMDNS_TYPE_CUSTOM_DNS, IPAMDNS_TYPE_AZURE, IPAMDNS_TYPE_OCI, IPAMDNS_TYPE_TENCENT, IPAMDNS_TYPE_INTERNAL, IPAMDNS_TYPE_INTERNAL_DNS,",
				"IPAMDNS_TYPE_AWS_DNS, IPAMDNS_TYPE_AZURE_DNS.",
			]
			required: true
		}
		url: description: [
			"Avi controller URL of the object.",
		]
		uuid: description: [
			"Uuid of the ipam/dns provider profile.",
		]
	}
	extends_documentation_fragment: ["avi"]
}
