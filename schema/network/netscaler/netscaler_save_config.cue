package ansible

module: netscaler_save_config: {
	module:            "netscaler_save_config"
	short_description: "Save Netscaler configuration."
	description: [
		"This module unconditionally saves the configuration on the target netscaler node.",
		"This module does not support check mode.",
		"This module is intended to run either on the ansible  control node or a bastion (jumpserver) with access to the actual netscaler instance.",
	]

	version_added: "2.4.0"

	author: "George Nikolopoulos (@giorgos-nikolopoulos)"

	options: {
		nsip: {
			description: [
				"The ip address of the netscaler appliance where the nitro API calls will be made.",
				"The port can be specified with the colon (:). E.g. C(192.168.1.1:555).",
			]
			required: true
		}

		nitro_user: {
			description: [
				"The username with which to authenticate to the netscaler node.",
			]
			required: true
		}

		nitro_pass: {
			description: [
				"The password with which to authenticate to the netscaler node.",
			]
			required: true
		}

		nitro_protocol: {
			choices: ["http", "https"]
			default: "http"
			description: [
				"Which protocol to use when accessing the nitro API objects.",
			]
		}

		validate_certs: {
			description: [
				"If C(no), SSL certificates will not be validated. This should only be used on personally controlled sites using self-signed certificates.",
			]
			required: false
			default:  "yes"
			type:     "bool"
		}

		nitro_timeout: {
			description: [
				"Time in seconds until a timeout error is thrown when establishing a new session with Netscaler.",
			]
			default: 310
		}
	}

	requirements: ["nitro python sdk"]
}
