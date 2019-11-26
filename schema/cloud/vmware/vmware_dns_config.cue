package ansible

module: vmware_dns_config: {
	module:            "vmware_dns_config"
	short_description: "Manage VMware ESXi DNS Configuration"
	description: [
		"Manage VMware ESXi DNS Configuration",
	]
	version_added: 2.0
	author: [
		"Joseph Callen (@jcpowermac)",
	]
	notes: [
		"Tested on vSphere 5.5",
	]
	requirements: [
		"python >= 2.6",
		"PyVmomi",
	]
	deprecated: {
		removed_in:  "2.14"
		why:         "Will be replaced with new module vmware_host_dns."
		alternative: "Use M(vmware_host_dns) instead."
	}
	options: {
		change_hostname_to: {
			description: [
				"The hostname that an ESXi host should be changed to.",
			]
			required: true
			type:     "str"
		}
		domainname: {
			description: [
				"The domain the ESXi host should be apart of.",
			]
			required: true
			type:     "str"
		}
		dns_servers: {
			description: [
				"The DNS servers that the host should be configured to use.",
			]
			required: true
			type:     "list"
		}
	}
	extends_documentation_fragment: "vmware.documentation"
}
