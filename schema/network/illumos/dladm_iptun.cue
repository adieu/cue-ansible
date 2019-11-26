package ansible

module: dladm_iptun: {
	module:            "dladm_iptun"
	short_description: "Manage IP tunnel interfaces on Solaris/illumos systems."
	description: [
		"Manage IP tunnel interfaces on Solaris/illumos systems.",
	]
	version_added: "2.3"
	author:        "Adam Števko (@xen0l)"
	options: {
		name: {
			description: ["IP tunnel interface name."]
			required: true
		}
		temporary: {
			description: [
				"Specifies that the IP tunnel interface is temporary. Temporary IP tunnel interfaces do not persist across reboots.",
			]

			required: false
			default:  false
			type:     "bool"
		}
		type: {
			description: ["Specifies the type of tunnel to be created."]
			required: false
			default:  "ipv4"
			choices: ["ipv4", "ipv6", "6to4"]
			aliases: ["tunnel_type"]
		}
		local_address: {
			description: ["Literal IP address or hostname corresponding to the tunnel source."]
			required: false
			aliases: ["local"]
		}
		remote_address: {
			description: ["Literal IP address or hostname corresponding to the tunnel destination."]
			required: false
			aliases: ["remote"]
		}
		state: {
			description: ["Create or delete Solaris/illumos VNIC."]
			required: false
			default:  "present"
			choices: ["present", "absent"]
		}
	}
}
