package ansible

module: fortios_vpn_ipsec_manualkey_interface: {
	module:            "fortios_vpn_ipsec_manualkey_interface"
	short_description: "Configure IPsec manual keys in Fortinet's FortiOS and FortiGate."
	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify vpn_ipsec feature and manualkey_interface category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
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
		vpn_ipsec_manualkey_interface: {
			description: [
				"Configure IPsec manual keys.",
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
				addr_type: {
					description: [
						"IP version to use for IP packets.",
					]
					type: "str"
					choices: [
						4,
						6,
					]
				}
				auth_alg: {
					description: [
						"Authentication algorithm. Must be the same for both ends of the tunnel.",
					]
					type: "str"
					choices: [ null,
						"md5",
						"sha1",
						"sha256",
						"sha384",
						"sha512",
					]
				}
				auth_key: {
					description: [
						"Hexadecimal authentication key in 16-digit (8-byte) segments separated by hyphens.",
					]
					type: "str"
				}
				enc_alg: {
					description: [
						"Encryption algorithm. Must be the same for both ends of the tunnel.",
					]
					type: "str"
					choices: [ null,
						"des",
					]
				}
				enc_key: {
					description: [
						"Hexadecimal encryption key in 16-digit (8-byte) segments separated by hyphens.",
					]
					type: "str"
				}
				interface: {
					description: [
						"Name of the physical, aggregate, or VLAN interface. Source system.interface.name.",
					]
					type: "str"
				}
				ip_version: {
					description: [
						"IP version to use for VPN interface.",
					]
					type: "str"
					choices: [
						4,
						6,
					]
				}
				local_gw: {
					description: [
						"IPv4 address of the local gateway's external interface.",
					]
					type: "str"
				}
				local_gw6: {
					description: [
						"Local IPv6 address of VPN gateway.",
					]
					type: "str"
				}
				local_spi: {
					description: [
						"Local SPI, a hexadecimal 8-digit (4-byte) tag. Discerns between two traffic streams with different encryption rules.",
					]
					type: "str"
				}
				name: {
					description: [
						"IPsec tunnel name.",
					]
					required: true
					type:     "str"
				}
				remote_gw: {
					description: [
						"IPv4 address of the remote gateway's external interface.",
					]
					type: "str"
				}
				remote_gw6: {
					description: [
						"Remote IPv6 address of VPN gateway.",
					]
					type: "str"
				}
				remote_spi: {
					description: [
						"Remote SPI, a hexadecimal 8-digit (4-byte) tag. Discerns between two traffic streams with different encryption rules.",
					]
					type: "str"
				}
			}
		}
	}
}
