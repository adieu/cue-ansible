package ansible

module: vsphere_file: {
	module:            "vsphere_file"
	short_description: "Manage files on a vCenter datastore"
	description: [
		"Manage files on a vCenter datastore.",
	]
	version_added: "2.8"
	author: [
		"Dag Wieers (@dagwieers)",
	]
	options: {
		host: {
			description: [
				"The vCenter server on which the datastore is available.",
			]
			type:     "str"
			required: true
			aliases: ["hostname"]
		}
		username: {
			description: [
				"The user name to authenticate on the vCenter server.",
			]
			type:     "str"
			required: true
		}
		password: {
			description: [
				"The password to authenticate on the vCenter server.",
			]
			type:     "str"
			required: true
		}
		datacenter: {
			description: [
				"The datacenter on the vCenter server that holds the datastore.",
			]
			type:     "str"
			required: true
		}
		datastore: {
			description: [
				"The datastore on the vCenter server to push files to.",
			]
			type:     "str"
			required: true
		}
		path: {
			description: [
				"The file or directory on the datastore on the vCenter server.",
			]
			type:     "str"
			required: true
			aliases: ["dest"]
		}
		validate_certs: {
			description: [
				"If C(no), SSL certificates will not be validated. This should only be set to C(no) when no other option exists.",
			]

			type:    "bool"
			default: true
		}
		timeout: {
			description: [
				"The timeout in seconds for the upload to the datastore.",
			]
			type:    "int"
			default: 10
		}
		state: {
			description: [
				"The state of or the action on the provided path.",
				"If C(absent), the file will be removed.",
				"If C(directory), the directory will be created.",
				"If C(file), more information of the (existing) file will be returned.",
				"If C(touch), an empty file will be created if the path does not exist.",
			]
			type: "str"
			choices: ["absent", "directory", "file", "touch"]
			default: "file"
		}
	}
	notes: ["The vSphere folder API does not allow to remove directory objects."]
}
