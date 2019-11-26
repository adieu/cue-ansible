package ansible

module: proxmox_template: {
	module:            "proxmox_template"
	short_description: "management of OS templates in Proxmox VE cluster"
	description: [
		"allows you to upload/delete templates in Proxmox VE cluster",
	]
	version_added: "2.0"
	options: {
		api_host: {
			description: [
				"the host of the Proxmox VE cluster",
			]
			required: true
		}
		api_user: {
			description: [
				"the user to authenticate with",
			]
			required: true
		}
		api_password: description: [
			"the password to authenticate with",
			"you can use PROXMOX_PASSWORD environment variable",
		]
		validate_certs: {
			description: [
				"enable / disable https certificate verification",
			]
			default: "no"
			type:    "bool"
		}
		node: {
			description: [
				"Proxmox VE node, when you will operate with template",
			]
			required: true
		}
		src: {
			description: [
				"path to uploaded file",
				"required only for C(state=present)",
			]
			aliases: ["path"]
		}
		template: description: [
			"the template name",
			"required only for states C(absent), C(info)",
		]
		content_type: {
			description: [
				"content type",
				"required only for C(state=present)",
			]
			default: "vztmpl"
			choices: ["vztmpl", "iso"]
		}
		storage: {
			description: [
				"target storage",
			]
			default: "local"
		}
		timeout: {
			description: [
				"timeout for operations",
			]
			default: 30
		}
		force: {
			description: [
				"can be used only with C(state=present), exists template will be overwritten",
			]
			type:    "bool"
			default: "no"
		}
		state: {
			description: [
				"Indicate desired state of the template",
			]
			choices: ["present", "absent"]
			default: "present"
		}
	}
	notes: [
		"Requires proxmoxer and requests modules on host. This modules can be installed with pip.",
	]
	requirements: ["proxmoxer", "requests"]
	author: "Sergei Antipov (@UnderGreen)"
}
