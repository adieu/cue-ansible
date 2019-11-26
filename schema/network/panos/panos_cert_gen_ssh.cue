package ansible

module: panos_cert_gen_ssh: {
	module:            "panos_cert_gen_ssh"
	short_description: "generates a self-signed certificate using SSH protocol with SSH key"
	description: [
		"This module generates a self-signed certificate that can be used by GlobalProtect client, SSL connector, or",
		"otherwise. Root certificate must be preset on the system first. This module depends on paramiko for ssh.",
	]
	author:        "Luigi Mori (@jtschichold), Ivan Bojer (@ivanbojer)"
	version_added: "2.3"
	requirements: [
		"paramiko",
	]
	deprecated: {
		alternative: "Use U(https://galaxy.ansible.com/PaloAltoNetworks/paloaltonetworks) instead."
		removed_in:  "2.12"
		why:         "Consolidating code base."
	}
	notes: [
		"Checkmode is not supported.",
	]
	options: {
		ip_address: {
			description: [
				"IP address (or hostname) of PAN-OS device being configured.",
			]
			required: true
		}
		key_filename: {
			description: [
				"Location of the filename that is used for the auth. Either I(key_filename) or I(password) is required.",
			]
			required: true
		}
		password: {
			description: [
				"Password credentials to use for auth. Either I(key_filename) or I(password) is required.",
			]
			required: true
		}
		cert_friendly_name: {
			description: [
				"Human friendly certificate name (not CN but just a friendly name).",
			]
			required: true
		}
		cert_cn: {
			description: [
				"Certificate CN (common name) embedded in the certificate signature.",
			]
			required: true
		}
		signed_by: {
			description: [
				"Undersigning authority (CA) that MUST already be presents on the device.",
			]
			required: true
		}
		rsa_nbits: {
			description: [
				"Number of bits used by the RSA algorithm for the certificate generation.",
			]
			default: "2048"
		}
	}
}
