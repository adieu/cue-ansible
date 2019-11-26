package ansible

module: beadm: {
	module:            "beadm"
	short_description: "Manage ZFS boot environments on FreeBSD/Solaris/illumos systems."
	description: [
		"Create, delete or activate ZFS boot environments.",
		"Mount and unmount ZFS boot environments.",
	]
	version_added: "2.3"
	author:        "Adam Števko (@xen0l)"
	options: {
		name: {
			description: ["ZFS boot environment name."]
			type:     "str"
			required: true
			aliases: ["be"]
		}
		snapshot: {
			description: [
				"If specified, the new boot environment will be cloned from the given snapshot or inactive boot environment.",
			]

			type: "str"
		}
		description: {
			description: [
				"Associate a description with a new boot environment. This option is available only on Solarish platforms.",
			]

			type: "str"
		}
		options: {
			description: [
				"Create the datasets for new BE with specific ZFS properties.",
				"Multiple options can be specified.",
				"This option is available only on Solarish platforms.",
			]
			type: "str"
		}
		mountpoint: {
			description: ["Path where to mount the ZFS boot environment."]
			type: "path"
		}
		state: {
			description: ["Create or delete ZFS boot environment."]
			type: "str"
			choices: ["absent", "activated", "mounted", "present", "unmounted"]
			default: "present"
		}
		force: {
			description: ["Specifies if the unmount should be forced."]
			type:    "bool"
			default: false
		}
	}
}
