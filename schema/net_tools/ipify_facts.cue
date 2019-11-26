package ansible

module: ipify_facts: {
	module:            "ipify_facts"
	short_description: "Retrieve the public IP of your internet gateway"
	description: [
		"If behind NAT and need to know the public IP of your internet gateway.",
	]
	version_added: "2.0"
	author: ["René Moser (@resmo)"]
	options: {
		api_url: {
			description: [
				"URL of the ipify.org API service.",
				"C(?format=json) will be appended per default.",
			]
			type:    "str"
			default: "https://api.ipify.org/"
		}
		timeout: {
			description: ["HTTP connection timeout in seconds."]
			type:          "int"
			default:       10
			version_added: "2.3"
		}
		validate_certs: {
			description: ["When set to C(NO), SSL certificates will not be validated."]
			type:          "bool"
			default:       true
			version_added: "2.4"
		}
	}
	notes: ["Visit https://www.ipify.org to get more information."]
}
