package ansible

module: vmware_resource_pool: {
	module:            "vmware_resource_pool"
	short_description: "Add/remove resource pools to/from vCenter"
	description: [
		"This module can be used to add/remove a resource pool to/from vCenter",
	]
	version_added: 2.3
	author: [
		"Davis Phillips (@dav1x)",
	]
	notes: [
		"Tested on vSphere 6.5",
	]
	requirements: [
		"python >= 2.6",
		"PyVmomi",
	]
	options: {
		datacenter: {
			description: [
				"Name of the datacenter to add the host.",
			]
			required: true
			type:     "str"
		}
		cluster: {
			description: [
				"Name of the cluster to add the host.",
			]
			required: true
			type:     "str"
		}
		resource_pool: {
			description: [
				"Resource pool name to manage.",
			]
			required: true
			type:     "str"
		}
		cpu_expandable_reservations: {
			description: [
				"In a resource pool with an expandable reservation, the reservation on a resource pool can grow beyond the specified value.",
			]
			default: true
			type:    "bool"
		}
		cpu_reservation: {
			description: [
				"Amount of resource that is guaranteed available to the virtual machine or resource pool.",
			]
			default: 0
			type:    "int"
		}
		cpu_limit: {
			description: [
				"The utilization of a virtual machine/resource pool will not exceed this limit, even if there are available resources.",
				"The default value -1 indicates no limit.",
			]
			default: -1
			type:    "int"
		}
		cpu_shares: {
			description: [
				"Memory shares are used in case of resource contention.",
			]
			choices: [
				"high",
				"custom",
				"low",
				"normal",
			]
			default: "normal"
			type:    "str"
		}
		mem_expandable_reservations: {
			description: [
				"In a resource pool with an expandable reservation, the reservation on a resource pool can grow beyond the specified value.",
			]
			default: true
			type:    "bool"
		}
		mem_reservation: {
			description: [
				"Amount of resource that is guaranteed available to the virtual machine or resource pool.",
			]
			default: 0
			type:    "int"
		}
		mem_limit: {
			description: [
				"The utilization of a virtual machine/resource pool will not exceed this limit, even if there are available resources.",
				"The default value -1 indicates no limit.",
			]
			default: -1
			type:    "int"
		}
		mem_shares: {
			description: [
				"Memory shares are used in case of resource contention.",
			]
			choices: [
				"high",
				"custom",
				"low",
				"normal",
			]
			default: "normal"
			type:    "str"
		}
		state: {
			description: [
				"Add or remove the resource pool",
			]
			default: "present"
			choices: [
				"present",
				"absent",
			]
			type: "str"
		}
	}
	extends_documentation_fragment: "vmware.documentation"
}
