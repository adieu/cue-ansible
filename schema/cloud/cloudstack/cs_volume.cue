package ansible

module: cs_volume: {
	module:            "cs_volume"
	short_description: "Manages volumes on Apache CloudStack based clouds."
	description: [
		"Create, destroy, attach, detach, extract or upload volumes.",
	]
	version_added: "2.1"
	author: [
		"Jefferson Girão (@jeffersongirao)",
		"René Moser (@resmo)",
	], options: {

		name: {
			description: [
				"Name of the volume.",
				"I(name) can only contain ASCII letters.",
			]
			type:     "str"
			required: true
		}
		account: {
			description: ["Account the volume is related to."]
			type: "str"
		}
		device_id: {
			description: [
				"ID of the device on a VM the volume is attached to.",
				"Only considered if I(state) is C(attached).",
			]
			type: "int"
		}
		custom_id: {
			description: [
				"Custom id to the resource.",
				"Allowed to Root Admins only.",
			]
			type: "str"
		}
		disk_offering: {
			description: [
				"Name of the disk offering to be used.",
				"Required one of I(disk_offering), I(snapshot) if volume is not already I(state=present).",
			]
			type: "str"
		}
		display_volume: {
			description: [
				"Whether to display the volume to the end user or not.",
				"Allowed to Root Admins only.",
			]
			type: "bool"
		}
		domain: {
			description: ["Name of the domain the volume to be deployed in."]
			type: "str"
		}
		max_iops: {
			description: ["Max iops"]
			type: "int"
		}
		min_iops: {
			description: ["Min iops"]
			type: "int"
		}
		project: {
			description: ["Name of the project the volume to be deployed in."]
			type: "str"
		}
		size: {
			description: ["Size of disk in GB"]
			type: "int"
		}
		snapshot: {
			description: [
				"The snapshot name for the disk volume.",
				"Required one of I(disk_offering), I(snapshot) if volume is not already I(state=present).",
			]
			type: "str"
		}
		force: {
			description: [
				"Force removal of volume even it is attached to a VM.",
				"Considered on I(state=absent) only.",
			]
			default: false
			type:    "bool"
		}
		shrink_ok: {
			description: ["Whether to allow to shrink the volume."]
			default: false
			type:    "bool"
		}
		vm: {
			description: ["Name of the virtual machine to attach the volume to."]
			type: "str"
		}
		zone: {
			description: [
				"Name of the zone in which the volume should be deployed.",
				"If not set, default zone is used.",
			]
			type: "str"
		}
		state: {
			description: [
				"State of the volume.",
				"The choices C(extracted) and C(uploaded) were added in version 2.8.",
			]
			type:    "str"
			default: "present"
			choices: ["present", "absent", "attached", "detached", "extracted", "uploaded"]
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
		url: {
			description: [
				"URL to which the volume would be extracted on I(state=extracted)",
				"or the URL where to download the volume on I(state=uploaded).",
				"Only considered if I(state) is C(extracted) or C(uploaded).",
			]
			type:          "str"
			version_added: "2.8"
		}
		mode: {
			description: [
				"Mode for the volume extraction.",
				"Only considered if I(state=extracted).",
			]
			type: "str"
			choices: ["http_download", "ftp_upload"]
			default:       "http_download"
			version_added: "2.8"
		}
		format: {
			description: [
				"The format for the volume.",
				"Only considered if I(state=uploaded).",
			]
			type: "str"
			choices: ["QCOW2", "RAW", "VHD", "VHDX", "OVA"]
			version_added: "2.8"
		}
	}, extends_documentation_fragment:
		"cloudstack"
}
