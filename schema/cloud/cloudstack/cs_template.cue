package ansible

module: cs_template: {
	module:            "cs_template"
	short_description: "Manages templates on Apache CloudStack based clouds."
	description: [
		"Register templates from an URL.",
		"Create templates from a ROOT volume of a stopped VM or its snapshot.",
		"Update (since version 2.7), extract and delete templates.",
	]
	version_added: "2.0"
	author:        "René Moser (@resmo)"
	options: {
		name: {
			description: ["Name of the template."]
			type:     "str"
			required: true
		}
		url: {
			description: [
				"URL of where the template is hosted on I(state=present).",
				"URL to which the template would be extracted on I(state=extracted).",
				"Mutually exclusive with I(vm).",
			]
			type: "str"
		}
		vm: {
			description: [
				"VM name the template will be created from its volume or alternatively from a snapshot.",
				"VM must be in stopped state if created from its volume.",
				"Mutually exclusive with I(url).",
			]
			type: "str"
		}
		snapshot: {
			description: [
				"Name of the snapshot, created from the VM ROOT volume, the template will be created from.",
				"I(vm) is required together with this argument.",
			]
			type: "str"
		}
		os_type: {
			description: ["OS type that best represents the OS of this template."]
			type: "str"
		}
		checksum: {
			description: [
				"The MD5 checksum value of this template.",
				"If set, we search by checksum instead of name.",
			]
			type: "str"
		}
		is_ready: {
			description: [
				"Note: this flag was not implemented and therefore marked as deprecated.",
				"Deprecated, will be removed in version 2.11.",
			]
			type: "bool"
		}
		is_public: {
			description: [
				"Register the template to be publicly available to all users.",
				"Only used if I(state) is C(present).",
			]
			type: "bool"
		}
		is_featured: {
			description: [
				"Register the template to be featured.",
				"Only used if I(state) is C(present).",
			]
			type: "bool"
		}
		is_dynamically_scalable: {
			description: [
				"Register the template having XS/VMware tools installed in order to support dynamic scaling of VM CPU/memory.",
				"Only used if I(state) is C(present).",
			]
			type: "bool"
		}
		cross_zones: {
			description: [
				"Whether the template should be synced or removed across zones.",
				"Only used if I(state) is C(present) or C(absent).",
			]
			default: false
			type:    "bool"
		}
		mode: {
			description: [
				"Mode for the template extraction.",
				"Only used if I(state=extracted).",
			]
			type:    "str"
			default: "http_download"
			choices: ["http_download", "ftp_upload"]
		}
		domain: {
			description: ["Domain the template, snapshot or VM is related to."]
			type: "str"
		}
		account: {
			description: ["Account the template, snapshot or VM is related to."]
			type: "str"
		}
		project: {
			description: ["Name of the project the template to be registered in."]
			type: "str"
		}
		zone: {
			description: [
				"Name of the zone you wish the template to be registered or deleted from.",
				"If not specified, first found zone will be used.",
			]
			type: "str"
		}
		template_filter: {
			description: [
				"Name of the filter used to search for the template.",
				"The filter C(all) was added in 2.7.",
			]
			type:    "str"
			default: "self"
			choices: ["all", "featured", "self", "selfexecutable", "sharedexecutable", "executable", "community"]
		}
		template_find_options: {
			description: [
				"Options to find a template uniquely.",
				"More than one allowed.",
			]
			type: "list"
			choices: ["display_text", "checksum", "cross_zones"]
			version_added: "2.7"
			aliases: ["template_find_option"]
			default: []
		}
		hypervisor: {
			description: [
				"Name the hypervisor to be used for creating the new template.",
				"Relevant when using I(state=present).",
				"Possible values are C(KVM), C(VMware), C(BareMetal), C(XenServer), C(LXC), C(HyperV), C(UCS), C(OVM), C(Simulator).",
			]
			type: "str"
		}
		requires_hvm: {
			description: [
				"Whether the template requires HVM or not.",
				"Only considered while creating the template.",
			]
			type: "bool"
		}
		password_enabled: {
			description: ["Enable template password reset support."]
			type: "bool"
		}
		template_tag: {
			description: ["The tag for this template."]
			type: "str"
		}
		sshkey_enabled: {
			description: [
				"True if the template supports the sshkey upload feature.",
				"Only considered if I(url) is used (API limitation).",
			]
			type: "bool"
		}
		is_routing: {
			description: [
				"Sets the template type to routing, i.e. if template is used to deploy routers.",
				"Only considered if I(url) is used.",
			]
			type: "bool"
		}
		format: {
			description: [
				"The format for the template.",
				"Only considered if I(state=present).",
			]
			type: "str"
			choices: ["QCOW2", "RAW", "VHD", "OVA"]
		}
		is_extractable: {
			description: ["Allows the template or its derivatives to be extractable."]
			type: "bool"
		}
		details: {
			description: ["Template details in key/value pairs."]
			type: "str"
		}
		bits: {
			description: ["32 or 64 bits support."]
			type:    "int"
			default: 64
			choices: [32, 64]
		}
		display_text: {
			description: ["Display text of the template."]
			type: "str"
		}
		state: {
			description: ["State of the template."]
			type:    "str"
			default: "present"
			choices: ["present", "absent", "extracted"]
		}
		poll_async: {
			description: ["Poll async jobs until job has finished."]
			default: true
			type:    "bool"
		}
		tags: {
			description: [
				"List of tags. Tags are a list of dictionaries having keys I(key) and I(value).",
				"To delete all tags, set a empty list e.g. I(tags: []).",
			]
			type: "list"
			aliases: ["tag"]
			version_added: "2.4"
		}
	}
	extends_documentation_fragment: "cloudstack"
}
