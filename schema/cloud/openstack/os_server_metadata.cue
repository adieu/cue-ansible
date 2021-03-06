package ansible

module: os_server_metadata: {
	module:                         "os_server_metadata"
	short_description:              "Add/Update/Delete Metadata in Compute Instances from OpenStack"
	extends_documentation_fragment: "openstack"
	version_added:                  "2.6"
	author:                         "Mario Santos (@ruizink)"
	description: [
		"Add, Update or Remove metadata in compute instances from OpenStack.",
	]
	options: {
		server: {
			description: [
				"Name of the instance to update the metadata",
			]
			required: true
			aliases: ["name"]
		}
		meta: {
			description: [
				"A list of key value pairs that should be provided as a metadata to the instance or a string containing a list of key-value pairs. Eg:  meta: \"key1=value1,key2=value2\"",
			]

			required: true
		}
		state: {
			description: [
				"Should the resource be present or absent.",
			]
			choices: ["present", "absent"]
			default: "present"
		}
		availability_zone: {
			description: [
				"Availability zone in which to create the snapshot.",
			]
			required: false
		}
	}
	requirements: [
		"python >= 2.7",
		"openstack",
	]
}
