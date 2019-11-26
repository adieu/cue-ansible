package ansible

module: virt: {
	module:            "virt"
	short_description: "Manages virtual machines supported by libvirt"
	description: [
		"Manages virtual machines supported by I(libvirt).",
	]
	version_added: "0.2"
	options: {
		name: description: [
			"name of the guest VM being managed. Note that VM must be previously defined with xml.",
			"This option is required unless I(command) is C(list_vms).",
		]
		state: {
			description: [
				"Note that there may be some lag for state requests like C(shutdown) since these refer only to VM states. After starting a guest, it may not be immediately accessible. state and command are mutually exclusive except when command=list_vms. In this case all VMs in specified state will be listed.",
			]

			choices: ["destroyed", "paused", "running", "shutdown"]
		}
		command: {
			description: [
				"In addition to state management, various non-idempotent commands are available.",
			]
			choices: ["create", "define", "destroy", "freemem", "get_xml", "info", "list_vms", "nodeinfo", "pause", "shutdown", "start", "status", "stop", "undefine", "unpause", "virttype"]
		}
		autostart: {
			description: [
				"start VM at host startup.",
			]
			type:          "bool"
			version_added: "2.3"
		}
		uri: {
			description: [
				"libvirt connection uri.",
			]
			default: "qemu:///system"
		}
		xml: description: [
			"XML document used with the define command.",
			"Must be raw XML content using C(lookup). XML cannot be reference to a file.",
		]
	}
	requirements: [
		"python >= 2.6",
		"libvirt-python",
	]
	author: [
		"Ansible Core Team",
		"Michael DeHaan",
		"Seth Vidal (@skvidal)",
	]
}
