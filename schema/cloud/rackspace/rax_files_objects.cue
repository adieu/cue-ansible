package ansible

module: rax_files_objects: {
	module:            "rax_files_objects"
	short_description: "Upload, download, and delete objects in Rackspace Cloud Files"
	description: [
		"Upload, download, and delete objects in Rackspace Cloud Files",
	]
	version_added: "1.5"
	options: {
		clear_meta: {
			description: [
				"Optionally clear existing metadata when applying metadata to existing objects. Selecting this option is only appropriate when setting type=meta",
			]

			type:    "bool"
			default: "no"
		}
		container: {
			description: [
				"The container to use for file object operations.",
			]
			required: true
		}
		dest: description: [
			"The destination of a \"get\" operation; i.e. a local directory, \"/home/user/myfolder\". Used to specify the destination of an operation on a remote object; i.e. a file name, \"file1\", or a comma-separated list of remote objects, \"file1,file2,file17\"",
		]

		expires: description: [
			"Used to set an expiration on a file or folder uploaded to Cloud Files. Requires an integer, specifying expiration in seconds",
		]

		meta: description: [
			"A hash of items to set as metadata values on an uploaded file or folder",
		]
		method: {
			description: [
				"The method of operation to be performed.  For example, put to upload files to Cloud Files, get to download files from Cloud Files or delete to delete remote objects in Cloud Files",
			]

			choices: [
				"get",
				"put",
				"delete",
			]
			default: "get"
		}
		src: description: [
			"Source from which to upload files.  Used to specify a remote object as a source for an operation, i.e. a file name, \"file1\", or a comma-separated list of remote objects, \"file1,file2,file17\".  src and dest are mutually exclusive on remote-only object operations",
		]

		structure: {
			description: [
				"Used to specify whether to maintain nested directory structure when downloading objects from Cloud Files.  Setting to false downloads the contents of a container to a single, flat directory",
			]

			type:    "bool"
			default: "yes"
		}
		state: {
			description: [
				"Indicate desired state of the resource",
			]
			choices: ["present", "absent"]
			default: "present"
		}
		type: {
			description: [
				"Type of object to do work on",
				"Metadata object or a file object",
			]
			choices: [
				"file",
				"meta",
			]
			default: "file"
		}
	}
	author: "Paul Durivage (@angstwad)"
	extends_documentation_fragment: [
		"rackspace",
		"rackspace.openstack",
	]
}
