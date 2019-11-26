package ansible

module: fortios_firewall_ssh_host_key: {
	module:            "fortios_firewall_ssh_host_key"
	short_description: "SSH proxy host public keys in Fortinet's FortiOS and FortiGate."
	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify firewall_ssh feature and host_key category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
	]

	version_added: "2.8"
	author: [
		"Miguel Angel Munoz (@mamunozgonzalez)",
		"Nicolas Thomas (@thomnico)",
	]
	notes: [
		"Requires fortiosapi library developed by Fortinet",
		"Run as a local_action in your playbook",
	]
	requirements: [
		"fortiosapi>=0.9.8",
	]
	options: {
		host: {
			description: [
				"FortiOS or FortiGate IP address.",
			]
			type:     "str"
			required: false
		}
		username: {
			description: [
				"FortiOS or FortiGate username.",
			]
			type:     "str"
			required: false
		}
		password: {
			description: [
				"FortiOS or FortiGate password.",
			]
			type:    "str"
			default: ""
		}
		vdom: {
			description: [
				"Virtual domain, among those defined previously. A vdom is a virtual instance of the FortiGate that can be configured and used as a different unit.",
			]

			type:    "str"
			default: "root"
		}
		https: {
			description: [
				"Indicates if the requests towards FortiGate must use HTTPS protocol.",
			]
			type:    "bool"
			default: true
		}
		ssl_verify: {
			description: [
				"Ensures FortiGate certificate must be verified by a proper CA.",
			]
			type:          "bool"
			default:       true
			version_added: 2.9
		}
		state: {
			description: [
				"Indicates whether to create or remove the object. This attribute was present already in previous version in a deeper level. It has been moved out to this outer level.",
			]

			type:     "str"
			required: false
			choices: [
				"present",
				"absent",
			]
			version_added: 2.9
		}
		firewall_ssh_host_key: {
			description: [
				"SSH proxy host public keys.",
			]
			default: null
			type:    "dict"
			suboptions: {
				state: {
					description: [
						"B(Deprecated)",
						"Starting with Ansible 2.9 we recommend using the top-level 'state' parameter.",
						"HORIZONTALLINE",
						"Indicates whether to create or remove the object.",
					]
					type:     "str"
					required: false
					choices: [
						"present",
						"absent",
					]
				}
				hostname: {
					description: [
						"Hostname of the SSH server.",
					]
					type: "str"
				}
				ip: {
					description: [
						"IP address of the SSH server.",
					]
					type: "str"
				}
				name: {
					description: [
						"SSH public key name.",
					]
					required: true
					type:     "str"
				}
				nid: {
					description: [
						"Set the nid of the ECDSA key.",
					]
					type: "str"
					choices: [
						256,
						384,
						521,
					]
				}
				port: {
					description: [
						"Port of the SSH server.",
					]
					type: "int"
				}
				public_key: {
					description: [
						"SSH public key.",
					]
					type: "str"
				}
				status: {
					description: [
						"Set the trust status of the public key.",
					]
					type: "str"
					choices: [
						"trusted",
						"revoked",
					]
				}
				type: {
					description: [
						"Set the type of the public key.",
					]
					type: "str"
					choices: [
						"RSA",
						"DSA",
						"ECDSA",
						"ED25519",
						"RSA-CA",
						"DSA-CA",
						"ECDSA-CA",
						"ED25519-CA",
					]
				}
			}
		}
	}
}
