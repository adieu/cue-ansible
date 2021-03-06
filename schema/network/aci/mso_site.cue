package ansible

module: mso_site: {
	module:            "mso_site"
	short_description: "Manage sites"
	description: [
		"Manage sites on Cisco ACI Multi-Site.",
	]
	author: [
		"Dag Wieers (@dagwieers)",
	]
	version_added: "2.8"
	options: {
		apic_password: {
			description: [
				"The password for the APICs.",
			]
			type:     "str"
			required: true
		}
		apic_site_id: {
			description: [
				"The site ID of the APICs.",
			]
			type:     "str"
			required: true
		}
		apic_username: {
			description: [
				"The username for the APICs.",
			]
			type:     "str"
			required: true
			default:  "admin"
		}
		site: {
			description: [
				"The name of the site.",
			]
			type:     "str"
			required: true
			aliases: ["name"]
		}
		labels: {
			description: [
				"The labels for this site.",
				"Labels that do not already exist will be automatically created.",
			]
			type: "list"
		}
		location: {
			description: [
				"Location of the site.",
			]
			type: "dict"
			suboptions: {
				latitude: {
					description: [
						"The latitude of the location of the site.",
					]
					type: "float"
				}
				longitude: {
					description: [
						"The longitude of the location of the site.",
					]
					type: "float"
				}
			}
		}
		urls: {
			description: [
				"A list of URLs to reference the APICs.",
			]
			type: "list"
		}
		state: {
			description: [
				"Use C(present) or C(absent) for adding or removing.",
				"Use C(query) for listing an object or multiple objects.",
			]
			type: "str"
			choices: ["absent", "present", "query"]
			default: "present"
		}
	}
	extends_documentation_fragment: "mso"
}
