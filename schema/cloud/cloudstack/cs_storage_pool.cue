package ansible

module: cs_storage_pool: {
	module:            "cs_storage_pool"
	short_description: "Manages Primary Storage Pools on Apache CloudStack based clouds."
	description: [
		"Create, update, put into maintenance, disable, enable and remove storage pools.",
	]
	version_added: "2.4"
	author: [
		"Netservers Ltd. (@netservers)",
		"René Moser (@resmo)",
	]
	options: {
		name: {
			description: ["Name of the storage pool."]
			type:     "str"
			required: true
		}
		zone: {
			description: [
				"Name of the zone in which the host should be deployed.",
				"If not set, default zone is used.",
			]
			type: "str"
		}
		storage_url: {
			description: [
				"URL of the storage pool.",
				"Required if I(state=present).",
			]
			type: "str"
		}
		pod: {
			description: ["Name of the pod."]
			type: "str"
		}
		cluster: {
			description: ["Name of the cluster."]
			type: "str"
		}
		scope: {
			description: [
				"The scope of the storage pool.",
				"Defaults to cluster when C(cluster) is provided, otherwise zone.",
			]
			type: "str"
			choices: ["cluster", "zone"]
		}
		managed: {
			description: [
				"Whether the storage pool should be managed by CloudStack.",
				"Only considered on creation.",
			]
			type: "bool"
		}
		hypervisor: {
			description: [
				"Required when creating a zone scoped pool.",
				"Possible values are C(KVM), C(VMware), C(BareMetal), C(XenServer), C(LXC), C(HyperV), C(UCS), C(OVM), C(Simulator).",
			]
			type: "str"
		}
		storage_tags: {
			description: ["Tags associated with this storage pool."]
			type: "list"
			aliases: ["storage_tag"]
		}
		provider: {
			description: ["Name of the storage provider e.g. SolidFire, SolidFireShared, DefaultPrimary, CloudByte."]
			type:    "str"
			default: "DefaultPrimary"
		}
		capacity_bytes: {
			description: ["Bytes CloudStack can provision from this storage pool."]
			type: "int"
		}
		capacity_iops: {
			description: ["Bytes CloudStack can provision from this storage pool."]
			type: "int"
		}
		allocation_state: {
			description: ["Allocation state of the storage pool."]
			type: "str"
			choices: ["enabled", "disabled", "maintenance"]
		}
		state: {
			description: ["State of the storage pool."]
			type:    "str"
			default: "present"
			choices: ["present", "absent"]
		}
	}
	extends_documentation_fragment: "cloudstack"
}
