package ansible

module: netbox_ip_address: {
	module:            "netbox_ip_address"
	short_description: "Creates or removes IP addresses from Netbox"
	description: [
		"Creates or removes IP addresses from Netbox",
	]
	notes: [
		"Tags should be defined as a YAML list",
		"This should be ran with connection C(local) and hosts C(localhost)",
	]
	author: [
		"Mikhail Yohman (@FragmentedPacket)",
		"Anthony Ruhier (@Anthony25)",
	]
	requirements: [
		"pynetbox",
	]
	version_added: "2.8"
	options: {
		netbox_url: {
			description: [
				"URL of the Netbox instance resolvable by Ansible control host",
			]
			required: true
		}
		netbox_token: {
			description: [
				"The token created within Netbox to authorize API access",
			]
			required: true
		}
		data: {
			description: [
				"Defines the IP address configuration",
			]
			suboptions: {
				family: {
					description: [
						"Specifies with address family the IP address belongs to",
					]
					choices: [
						4,
						6,
					]
				}
				address: description: [
					"Required if state is C(present)",
				]
				prefix: description: [
					"""
		With state C(present), if an interface is given, it will ensure
		that an IP inside this prefix (and vrf, if given) is attached
		to this interface. Otherwise, it will get the next available IP
		of this prefix and attach it.
		With state C(new), it will force to get the next available IP in
		this prefix. If an interface is given, it will also force to attach
		it.
		Required if state is C(present) or C(new) when no address is given.
		Unused if an address is specified.

		""",
				]

				vrf: description: [
					"VRF that IP address is associated with",
				]
				tenant: description: [
					"The tenant that the device will be assigned to",
				]
				status: {
					description: [
						"The status of the IP address",
					]
					choices: [
						"Active",
						"Reserved",
						"Deprecated",
						"DHCP",
					]
				}
				role: {
					description: [
						"The role of the IP address",
					]
					choices: [
						"Loopback",
						"Secondary",
						"Anycast",
						"VIP",
						"VRRP",
						"HSRP",
						"GLBP",
						"CARP",
					]
				}
				interface: description: [
					"""
		The name and device of the interface that the IP address should be assigned to
		Required if state is C(present) and a prefix specified.

		""",
				]

				description: description: [
					"The description of the interface",
				]
				nat_inside: description: [
					"The inside IP address this IP is assigned to",
				]
				tags: description: [
					"Any tags that the IP address may need to be associated with",
				]
				custom_fields: description: [
					"must exist in Netbox",
				]
			}
			required: true
		}
		state: {
			description: [
				"""
		Use C(present), C(new) or C(absent) for adding, force adding or removing.
		C(present) will check if the IP is already created, and return it if
		true. C(new) will force to create it anyway (useful for anycasts, for
		example).

		""",
			]

			choices: ["absent", "new", "present"]
			default: "present"
		}
		validate_certs: {
			description: [
				"If C(no), SSL certificates will not be validated. This should only be used on personally controlled sites using self-signed certificates.",
			]
			default: "yes"
			type:    "bool"
		}
	}
}
