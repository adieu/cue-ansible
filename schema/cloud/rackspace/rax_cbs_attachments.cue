package ansible

module: rax_cbs_attachments: {
	module:            "rax_cbs_attachments"
	short_description: "Manipulate Rackspace Cloud Block Storage Volume Attachments"
	description: [
		"Manipulate Rackspace Cloud Block Storage Volume Attachments",
	]
	version_added: 1.6
	options: {
		device: description: [
			"The device path to attach the volume to, e.g. /dev/xvde.",
			"Before 2.4 this was a required field. Now it can be left to null to auto assign the device name.",
		]
		volume: {
			description: [
				"Name or id of the volume to attach/detach",
			]
			required: true
		}
		server: {
			description: [
				"Name or id of the server to attach/detach",
			]
			required: true
		}
		state: {
			description: [
				"Indicate desired state of the resource",
			]
			choices: [
				"present",
				"absent",
			]
			default:  "present"
			required: true
		}
		wait: {
			description: [
				"wait for the volume to be in 'in-use'/'available' state before returning",
			]
			type:    "bool"
			default: "no"
		}
		wait_timeout: {
			description: [
				"how long before wait gives up, in seconds",
			]
			default: 300
		}
	}
	author: [
		"Christopher H. Laco (@claco)",
		"Matt Martz (@sivel)",
	]
	extends_documentation_fragment: "rackspace.openstack"
}
