package ansible

module: vmware_host_service_manager: {
	module:            "vmware_host_service_manager"
	short_description: "Manage services on a given ESXi host"
	description: [
		"This module can be used to manage (start, stop, restart) services on a given ESXi host.",
		"If cluster_name is provided, specified service will be managed on all ESXi host belonging to that cluster.",
		"If specific esxi_hostname is provided, then specified service will be managed on given ESXi host only.",
	]
	version_added: "2.5"
	author: [
		"Abhijeet Kasurde (@Akasurde)",
	]
	notes: [
		"Tested on vSphere 6.5",
	]
	requirements: [
		"python >= 2.6",
		"PyVmomi",
	]
	options: {
		cluster_name: {
			description: [
				"Name of the cluster.",
				"Service settings are applied to every ESXi host system/s in given cluster.",
				"If C(esxi_hostname) is not given, this parameter is required.",
			]
			type: "str"
		}
		esxi_hostname: {
			description: [
				"ESXi hostname.",
				"Service settings are applied to this ESXi host system.",
				"If C(cluster_name) is not given, this parameter is required.",
			]
			type: "str"
		}
		state: {
			description: [
				"Desired state of service.",
				"State value 'start' and 'present' has same effect.",
				"State value 'stop' and 'absent' has same effect.",
			]
			choices: ["absent", "present", "restart", "start", "stop"]
			type:    "str"
			default: "start"
		}
		service_policy: {
			description: [
				"Set of valid service policy strings.",
				"If set C(on), then service should be started when the host starts up.",
				"If set C(automatic), then service should run if and only if it has open firewall ports.",
				"If set C(off), then Service should not be started when the host starts up.",
			]
			choices: ["automatic", "off", "on"]
			type: "str"
		}
		service_name: {
			description: [
				"Name of Service to be managed. This is a brief identifier for the service, for example, ntpd, vxsyslogd etc.",
				"This value should be a valid ESXi service name.",
			]
			required: true
			type:     "str"
		}
	}
	extends_documentation_fragment: "vmware.documentation"
}
