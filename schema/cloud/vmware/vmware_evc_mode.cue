package ansible

module: vmware_evc_mode: {
	module:            "vmware_evc_mode"
	short_description: "Enable/Disable EVC mode on vCenter"
	description: [
		"This module can be used to enable/disable EVC mode on vCenter.",
	]
	version_added: 2.9
	author: [
		"Michael Tipton (@castawayegr)",
	]
	notes: [
		"Tested on vSphere 6.7",
	]
	requirements: [
		"python >= 2.6",
		"PyVmomi",
	]
	options: {
		datacenter_name: {
			description: [
				"The name of the datacenter the cluster belongs to that you want to enable or disable EVC mode on.",
			]
			required: true
			type:     "str"
		}
		cluster_name: {
			description: [
				"The name of the cluster to enable or disable EVC mode on.",
			]
			required: true
			type:     "str"
		}
		evc_mode: {
			description: [
				"Required for C(state=present).",
				"The EVC mode to enable or disable on the cluster. (intel-broadwell, intel-nehalem, intel-merom, etc.).",
			]
			required: true
			type:     "str"
		}
		state: {
			description: [
				"Add or remove EVC mode.",
			]
			choices: ["absent", "present"]
			default: "present"
			type:    "str"
		}
	}
	extends_documentation_fragment: "vmware.documentation"
}
