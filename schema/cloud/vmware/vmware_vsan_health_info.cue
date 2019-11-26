package ansible

module: vmware_vsan_health_info: {
	module: "vmware_vsan_health_info"

	short_description: "Gather information about a VMware vSAN cluster's health"

	version_added: "2.10"

	description: [
		"Gather information about a VMware vSAN cluster's health",
	]

	options: {
		cluster_name: {
			description: [
				"Name of the vSAN cluster.",
			]
			required: true
			type:     "str"
		}
		fetch_from_cache: {
			description: [
				"C(True) to return the result from cache directly instead of running the full health check.",
			]
			required: false
			default:  false
			type:     "bool"
		}
	}

	requirements: [
		"PyVmomi",
		"VMware vSAN Python's SDK",
	]

	extends_documentation_fragment: [
		"vmware.documentation",
	]

	author: ["Erwan Quelin (@equelin)"]
}
