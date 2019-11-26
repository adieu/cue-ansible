package ansible

module: ipadm_addr: {
	module:            "ipadm_addr"
	short_description: "Manage IP addresses on an interface on Solaris/illumos systems"
	description: [
		"Create/delete static/dynamic IP addresses on network interfaces on Solaris/illumos systems.",
		"Up/down static/dynamic IP addresses on network interfaces on Solaris/illumos systems.",
		"Manage IPv6 link-local addresses on network interfaces on Solaris/illumos systems.",
	]
	version_added: "2.3"
	author:        "Adam Števko (@xen0l)"
	options: {
		address: {
			description: ["Specifiies an IP address to configure in CIDR notation."]
			required: false
			aliases: ["addr"]
		}
		addrtype: {
			description: ["Specifiies a type of IP address to configure."]
			required: false
			default:  "static"
			choices: ["static", "dhcp", "addrconf"]
		}
		addrobj: {
			description: ["Specifies an unique IP address on the system."]
			required: true
		}
		temporary: {
			description: [
				"Specifies that the configured IP address is temporary. Temporary IP addresses do not persist across reboots.",
			]

			required: false
			default:  false
			type:     "bool"
		}
		wait: {
			description: ["Specifies the time in seconds we wait for obtaining address via DHCP."]
			required: false
			default:  60
		}
		state: {
			description: ["Create/delete/enable/disable an IP address on the network interface."]
			required: false
			default:  "present"
			choices: ["absent", "present", "up", "down", "enabled", "disabled", "refreshed"]
		}
	}
}
