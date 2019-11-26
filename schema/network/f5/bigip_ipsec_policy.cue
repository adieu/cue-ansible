package ansible

module: bigip_ipsec_policy: {
	module:            "bigip_ipsec_policy"
	short_description: "Manage IPSec policies on a BIG-IP"
	description: [
		"Manage IPSec policies on a BIG-IP.",
	]
	version_added: 2.8
	options: {
		name: {
			description: [
				"Specifies the name of the IPSec policy.",
			]
			type:     "str"
			required: true
		}
		description: {
			description: [
				"Description of the policy",
			]
			type: "str"
		}
		protocol: {
			description: [
				"Specifies the IPsec protocol",
				"Options include ESP (Encapsulating Security Protocol) or AH (Authentication Header).",
			]
			type: "str"
			choices: [
				"esp",
				"ah",
			]
		}
		mode: {
			description: [
				"Specifies the processing mode.",
				"When C(transport), specifies a mode that encapsulates only the payload (adding an ESP header, trailer, and authentication tag).",
				"When C(tunnel), specifies a mode that includes encapsulation of the header as well as the payload (adding a new IP header, in addition to adding an ESP header, trailer, and authentication tag). If you select this option, you must also provide IP addresses for the local and remote endpoints of the IPsec tunnel.",
				"When C(isession), specifies the use of iSession over an IPsec tunnel. To use this option, you must also configure the iSession endpoints with IPsec in the Acceleration section of the user interface.",
				"When C(interface), specifies that the IPsec policy can be used in the tunnel profile for network interfaces.",
			]

			type: "str"
			choices: [
				"transport",
				"interface",
				"isession",
				"tunnel",
			]
		}
		tunnel_local_address: {
			description: [
				"Specifies the local endpoint IP address of the IPsec tunnel.",
				"This parameter is only valid when C(mode) is C(tunnel).",
			]
			type: "str"
		}
		tunnel_remote_address: {
			description: [
				"Specifies the remote endpoint IP address of the IPsec tunnel.",
				"This parameter is only valid when C(mode) is C(tunnel).",
			]
			type: "str"
		}
		encrypt_algorithm: {
			description: [
				"Specifies the algorithm to use for IKE encryption.",
			]
			type: "str"
			choices: [
				"none",
				"3des",
				"aes128",
				"aes192",
				"aes256",
				"aes-gmac256",
				"aes-gmac192",
				"aes-gmac128",
				"aes-gcm256",
				"aes-gcm192",
				"aes-gcm256",
				"aes-gcm128",
			]
		}
		route_domain: {
			description: [
				"Specifies the route domain, when C(interface) is selected for the C(mode) setting.",
			]
			type: "int"
		}
		auth_algorithm: {
			description: [
				"Specifies the algorithm to use for IKE authentication.",
			]
			type: "str"
			choices: [
				"sha1",
				"sha256",
				"sha384",
				"sha512",
				"aes-gcm128",
				"aes-gcm192",
				"aes-gcm256",
				"aes-gmac128",
				"aes-gmac192",
				"aes-gmac256",
			]
		}
		ipcomp: {
			description: [
				"Specifies whether to use IPComp encapsulation.",
				"When C(none), specifies that IPComp is disabled.",
				"When C(deflate), specifies that IPComp is enabled and uses the Deflate compression algorithm.",
			]

			type: "str"
			choices: [
				"none",
				"null",
				"deflate",
			]
		}
		lifetime: {
			description: [
				"Specifies the length of time, in minutes, before the IKE security association expires.",
			]

			type: "int"
		}
		kb_lifetime: {
			description: [
				"Specifies the length of time, in kilobytes, before the IKE security association expires.",
			]

			type: "int"
		}
		perfect_forward_secrecy: {
			description: [
				"Specifies the Diffie-Hellman group to use for IKE Phase 2 negotiation.",
			]
			type: "str"
			choices: [
				"none",
				"modp768",
				"modp1024",
				"modp1536",
				"modp2048",
				"modp3072",
				"modp4096",
				"modp6144",
				"modp8192",
			]
		}
		ipv4_interface: {
			description: [
				"When C(mode) is C(interface) indicate if the IPv4 C(any) address should be used. By default C(BIG-IP) assumes C(any6) address for tunnel addresses when C(mode) is C(interface).",
				"This option takes effect only when C(mode) is set to C(interface).",
			]
			type:          "bool"
			version_added: 2.9
		}
		partition: {
			description: [
				"Device partition to manage resources on.",
			]
			type:    "str"
			default: "Common"
		}
		state: {
			description: [
				"When C(present), ensures that the resource exists.",
				"When C(absent), ensures the resource is removed.",
			]
			type: "str"
			choices: [
				"present",
				"absent",
			]
			default: "present"
		}
	}
	extends_documentation_fragment: "f5"
	author: [
		"Tim Rupp (@caphrim007)",
		"Wojciech Wypior (@wojtek0806)",
	]
}
