package ansible

module: cs_host: {
	module:            "cs_host"
	short_description: "Manages hosts on Apache CloudStack based clouds."
	description: [
		"Create, update and remove hosts.",
	]
	version_added: "2.3"
	author:        "René Moser (@resmo)"
	options: {
		name: {
			description: ["Name of the host."]
			type:     "str"
			required: true
			aliases: ["ip_address"]
		}
		url: {
			description: [
				"Url of the host used to create a host.",
				"If not provided, C(http://) and param I(name) is used as url.",
				"Only considered if I(state=present) and host does not yet exist.",
			]
			type: "str"
		}
		username: {
			description: [
				"Username for the host.",
				"Required if I(state=present) and host does not yet exist.",
			]
			type: "str"
		}
		password: {
			description: [
				"Password for the host.",
				"Required if I(state=present) and host does not yet exist.",
			]
			type: "str"
		}
		pod: {
			description: [
				"Name of the pod.",
				"Required if I(state=present) and host does not yet exist.",
			]
			type: "str"
		}
		cluster: {
			description: ["Name of the cluster."]
			type: "str"
		}
		hypervisor: {
			description: [
				"Name of the cluster.",
				"Required if I(state=present) and host does not yet exist.",
				"Possible values are C(KVM), C(VMware), C(BareMetal), C(XenServer), C(LXC), C(HyperV), C(UCS), C(OVM), C(Simulator).",
			]
			type: "str"
		}
		allocation_state: {
			description: ["Allocation state of the host."]
			type: "str"
			choices: ["enabled", "disabled", "maintenance"]
		}
		host_tags: {
			description: ["Tags of the host."]
			type: "list"
			aliases: ["host_tag"]
		}
		state: {
			description: ["State of the host."]
			type:    "str"
			default: "present"
			choices: ["present", "absent"]
		}
		zone: {
			description: [
				"Name of the zone in which the host should be deployed.",
				"If not set, default zone is used.",
			]
			type: "str"
		}
	}
	extends_documentation_fragment: "cloudstack"
}
