package ansible

module: bigip_ike_peer: {
	module:            "bigip_ike_peer"
	short_description: "Manage IPSec IKE Peer configuration on BIG-IP"
	description: [
		"Manage IPSec IKE Peer configuration on BIG-IP.",
	]
	version_added: 2.8
	options: {
		name: {
			description: [
				"Specifies the name of the IKE peer.",
			]
			type:     "str"
			required: true
		}
		description: {
			description: [
				"Description of the IKE peer.",
			]
			type: "str"
		}
		version: {
			description: [
				"Specifies which version of IKE is used.",
				"If the system you are configuring is the IPsec initiator, and you select both versions, the system tries using IKEv2 for negotiation. If the remote peer does not support IKEv2, the IPsec tunnel fails. To use IKEv1 in this case, you must deselect Version 2 and try again.",
				"If the system you are configuring is the IPsec responder, and you select both versions, the IPsec initiator system determines which IKE version to use.",
				"When creating a new IKE peer, this value is required.",
			]
			type: "list"
			choices: [
				"v1",
				"v2",
			]
		}
		presented_id_type: {
			description: [
				"Specifies the identifier type that the local system uses to identify itself to the peer during IKE Phase 1 negotiations.",
			]

			type: "str"
			choices: [
				"address",
				"asn1dn",
				"fqdn",
				"keyid-tag",
				"user-fqdn",
				"override",
			]
		}
		presented_id_value: {
			description: [
				"This is a required value when C(version) includes (Cv2).",
				"Specifies a value for the identity when using a C(presented_id_type) of C(override).",
			]

			type: "str"
		}
		verified_id_type: {
			description: [
				"Specifies the identifier type that the local system uses to identify the peer during IKE Phase 1 negotiation.",
				"This is a required value when C(version) includes (Cv2).",
				"When C(user-fqdn), value of C(verified_id_value) must be in the form of User @ DNS domain string.",
			]

			type: "str"
			choices: [
				"address",
				"asn1dn",
				"fqdn",
				"keyid-tag",
				"user-fqdn",
				"override",
			]
		}
		verified_id_value: {
			description: [
				"This is a required value when C(version) includes (Cv2).",
				"Specifies a value for the identity when using a C(verified_id_type) of C(override).",
			]

			type: "str"
		}
		phase1_auth_method: {
			description: [
				"Specifies the authentication method for phase 1 negotiation.",
				"When creating a new IKE peer, if this value is not specified, the default is C(rsa-signature).",
			]

			type: "str"
			choices: [
				"pre-shared-key",
				"rsa-signature",
			]
		}
		phase1_cert: {
			description: [
				"Specifies the digital certificate to use for the RSA signature.",
				"When creating a new IKE peer, if this value is not specified, and C(phase1_auth_method) is C(rsa-signature), the default is C(default.crt).",
				"This parameter is invalid when C(phase1_auth_method) is C(pre-shared-key).",
			]
			type: "str"
		}
		phase1_key: {
			description: [
				"Specifies the public key that the digital certificate contains.",
				"When creating a new IKE peer, if this value is not specified, and C(phase1_auth_method) is C(rsa-signature), the default is C(default.key).",
				"This parameter is invalid when C(phase1_auth_method) is C(pre-shared-key).",
			]
			type: "str"
		}
		phase1_verify_peer_cert: {
			description: [
				"In IKEv2, specifies whether the certificate sent by the IKE peer is verified using the Trusted Certificate Authorities, a CRL, and/or a peer certificate.",
				"In IKEv1, specifies whether the identifier sent by the peer is verified with the credentials in the certificate, in the following manner - ASN1DN; specifies that the entire certificate subject name is compared with the identifier. Address, FQDN, or User FQDN; specifies that the certificate's subjectAltName is compared with the identifier. If the two do not match, the negotiation fails.",
				"When creating a new IKE peer, if this value is not specified, and C(phase1_auth_method) is C(rsa-signature), the default is C(no).",
				"This parameter is invalid when C(phase1_auth_method) is C(pre-shared-key).",
			]
			type: "bool"
		}
		preshared_key: {
			description: [
				"Specifies a string that the IKE peers share for authenticating each other.",
				"This parameter is only relevant when C(phase1_auth_method) is C(pre-shared-key).",
				"This parameter is invalid when C(phase1_auth_method) is C(rsa-signature).",
			]
			type: "str"
		}
		remote_address: {
			description: [
				"Displays the IP address of the BIG-IP system that is remote to the system you are configuring.",
			]

			type: "str"
		}
		phase1_encryption_algorithm: {
			description: [
				"Specifies the algorithm to use for IKE encryption.",
				"IKE C(version) C(v2) does not support C(blowfish), C(camellia), or C(cast128).",
			]
			type: "str"
			choices: [
				"3des",
				"des",
				"blowfish",
				"cast128",
				"aes128",
				"aes192",
				"aes256",
				"camellia",
			]
		}
		phase1_hash_algorithm: {
			description: [
				"Specifies the algorithm to use for IKE authentication.",
			]
			type: "str"
			choices: [
				"sha1",
				"md5",
				"sha256",
				"sha384",
				"sha512",
			]
		}
		phase1_perfect_forward_secrecy: {
			description: [
				"Specifies the Diffie-Hellman group to use for IKE Phase 1 and Phase 2 negotiations.",
			]
			type: "str"
			choices: [
				"ecp256",
				"ecp384",
				"ecp521",
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
		update_password: {
			description: [
				"C(always) will allow to update passwords if the user chooses to do so. C(on_create) will only set the password for newly created IKE peers.",
			]

			type: "str"
			choices: [
				"always",
				"on_create",
			]
			default: "always"
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
