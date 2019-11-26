package ansible

module: ibm_sa_host: {
	module:            "ibm_sa_host"
	short_description: "Adds hosts to or removes them from IBM Spectrum Accelerate Family storage systems."
	version_added:     "2.7"

	description: [
		"This module adds hosts to or removes them from IBM Spectrum Accelerate Family storage systems.",
	]

	options: {
		host: {
			description: [
				"Host name.",
			]
			required: true
		}
		state: {
			description: [
				"Host state.",
			]
			required: true
			default:  "present"
			choices: ["present", "absent"]
		}
		cluster: {
			description: [
				"The name of the cluster to include the host.",
			]
			required: false
		}
		domain: {
			description: [
				"The domains the cluster will be attached to. To include more than one domain, separate domain names with commas. To include all existing domains, use an asterisk (\"*\").",
			]

			required: false
		}
		iscsi_chap_name: {
			description: [
				"The host's CHAP name identifier",
			]
			required: false
		}
		iscsi_chap_secret: {
			description: [
				"The password of the initiator used to authenticate to the system when CHAP is enable",
			]

			required: false
		}
	}

	extends_documentation_fragment: [
		"ibm_storage",
	]

	author: ["Tzur Eliyahu (@tzure)"]
}
