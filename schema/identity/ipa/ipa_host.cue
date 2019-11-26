package ansible

module: ipa_host: {
	module:            "ipa_host"
	author:            "Thomas Krahn (@Nosmoht)"
	short_description: "Manage FreeIPA host"
	description: [
		"Add, modify and delete an IPA host using IPA API",
	]
	options: {
		fqdn: {
			description: [
				"Full qualified domain name.",
				"Can not be changed as it is the unique identifier.",
			]
			required: true
			aliases: ["name"]
		}
		description: description: [
			"A description of this host.",
		]
		force: {
			description: [
				"Force host name even if not in DNS.",
			]
			required: false
			type:     "bool"
		}
		ip_address: description: [
			"Add the host to DNS with this IP address.",
		]
		mac_address: {
			description: [
				"List of Hardware MAC address(es) off this host.",
				"If option is omitted MAC addresses will not be checked or changed.",
				"If an empty list is passed all assigned MAC addresses will be removed.",
				"MAC addresses that are already assigned but not passed will be removed.",
			]
			aliases: ["macaddress"]
		}
		ns_host_location: {
			description: [
				"Host location (e.g. \"Lab 2\")",
			]
			aliases: ["nshostlocation"]
		}
		ns_hardware_platform: {
			description: [
				"Host hardware platform (e.g. \"Lenovo T61\")",
			]
			aliases: ["nshardwareplatform"]
		}
		ns_os_version: {
			description: [
				"Host operating system and version (e.g. \"Fedora 9\")",
			]
			aliases: ["nsosversion"]
		}
		user_certificate: {
			description: [
				"List of Base-64 encoded server certificates.",
				"If option is omitted certificates will not be checked or changed.",
				"If an empty list is passed all assigned certificates will be removed.",
				"Certificates already assigned but not passed will be removed.",
			]
			aliases: ["usercertificate"]
		}
		state: {
			description: "State to ensure"
			default:     "present"
			choices: ["present", "absent", "enabled", "disabled"]
		}
		update_dns: {
			description: [
				"If set C(\"True\") with state as C(\"absent\"), then removes DNS records of the host managed by FreeIPA DNS.",
				"This option has no effect for states other than \"absent\".",
			]
			default:       false
			type:          "bool"
			version_added: "2.5"
		}
		random_password: {
			description:   "Generate a random password to be used in bulk enrollment"
			default:       false
			type:          "bool"
			version_added: "2.5"
		}
	}
	extends_documentation_fragment: "ipa.documentation"
	version_added:                  "2.3"
}
