package ansible

module: netbox_site: {
	module:            "netbox_site"
	short_description: "Creates or removes sites from Netbox"
	description: [
		"Creates or removes sites from Netbox",
	]
	notes: [
		"Tags should be defined as a YAML list",
		"This should be ran with connection C(local) and hosts C(localhost)",
	]
	author: [
		"Mikhail Yohman (@FragmentedPacket)",
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
			type:     "str"
		}
		netbox_token: {
			description: [
				"The token created within Netbox to authorize API access",
			]
			required: true
			type:     "str"
		}
		data: {
			description: [
				"Defines the site configuration",
			]
			suboptions: {
				name: {
					description: [
						"Name of the site to be created",
					]
					required: true
					type:     "str"
				}
				status: {
					description: [
						"Status of the site",
					]
					choices: [
						"Active",
						"Planned",
						"Retired",
					]
					type: "str"
				}
				region: {
					description: [
						"The region that the site should be associated with",
					]
					type: "str"
				}
				tenant: {
					description: [
						"The tenant the site will be assigned to",
					]
					type: "str"
				}
				facility: {
					description: [
						"Data center provider or facility, ex. Equinix NY7",
					]
					type: "str"
				}
				asn: {
					description: [
						"The ASN associated with the site",
					]
					type: "int"
				}
				time_zone: {
					description: [
						"Timezone associated with the site, ex. America/Denver",
					]
					type: "str"
				}
				description: {
					description: [
						"The description of the prefix",
					]
					type: "str"
				}
				physical_address: {
					description: [
						"Physical address of site",
					]
					type: "str"
				}
				shipping_address: {
					description: [
						"Shipping address of site",
					]
					type: "str"
				}
				latitude: {
					description: [
						"Latitude in decimal format",
					]
					type: "int"
				}
				longitude: {
					description: [
						"Longitude in decimal format",
					]
					type: "int"
				}
				contact_name: {
					description: [
						"Name of contact for site",
					]
					type: "str"
				}
				contact_phone: {
					description: [
						"Contact phone number for site",
					]
					type: "str"
				}
				contact_email: {
					description: [
						"Contact email for site",
					]
					type: "str"
				}
				comments: {
					description: [
						"Comments for the site. This can be markdown syntax",
					]
					type: "str"
				}
				tags: {
					description: [
						"Any tags that the prefix may need to be associated with",
					]
					type: "list"
				}
				custom_fields: {
					description: [
						"must exist in Netbox",
					]
					type: "dict"
				}
			}
			required: true
		}
		state: {
			description: [
				"Use C(present) or C(absent) for adding or removing.",
			]
			choices: ["absent", "present"]
			default: "present"
			type:    "str"
		}
		validate_certs: {
			description: [
				"""
		If C(no), SSL certificates will not be validated.
		This should only be used on personally controlled sites using self-signed certificates.

		""",
			]

			default: "yes"
			type:    "bool"
		}
	}
}
