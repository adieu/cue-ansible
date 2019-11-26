package ansible

module: avi_sslprofile: {
	module: "avi_sslprofile"
	author: "Gaurav Rastogi (@grastogi23) <grastogi@avinetworks.com>"

	short_description: "Module for setup of SSLProfile Avi RESTful Object"
	description: [
		"This module is used to configure SSLProfile object",
		"more examples at U(https://github.com/avinetworks/devops)",
	]
	requirements: ["avisdk"]
	version_added: "2.3"
	options: {
		state: {
			description: [
				"The state that should be applied on the entity.",
			]
			default: "present"
			choices: ["absent", "present"]
		}
		avi_api_update_method: {
			description: [
				"Default method for object update is HTTP PUT.",
				"Setting to patch will override that behavior to use HTTP PATCH.",
			]
			version_added: "2.5"
			default:       "put"
			choices: ["put", "patch"]
		}
		avi_api_patch_op: {
			description: [
				"Patch operation to use when using avi_api_update_method as patch.",
			]
			version_added: "2.5"
			choices: ["add", "replace", "delete"]
		}
		accepted_ciphers: description: [
			"Ciphers suites represented as defined by U(http://www.openssl.org/docs/apps/ciphers.html).",
			"Default value when not specified in API or module is interpreted by Avi Controller as AES:3DES:RC4.",
		]
		accepted_versions: description: [
			"Set of versions accepted by the server.",
		]
		cipher_enums: description: [
			"Enum options - tls_ecdhe_ecdsa_with_aes_128_gcm_sha256, tls_ecdhe_ecdsa_with_aes_256_gcm_sha384, tls_ecdhe_rsa_with_aes_128_gcm_sha256,",
			"tls_ecdhe_rsa_with_aes_256_gcm_sha384, tls_ecdhe_ecdsa_with_aes_128_cbc_sha256, tls_ecdhe_ecdsa_with_aes_256_cbc_sha384,",
			"tls_ecdhe_rsa_with_aes_128_cbc_sha256, tls_ecdhe_rsa_with_aes_256_cbc_sha384, tls_rsa_with_aes_128_gcm_sha256, tls_rsa_with_aes_256_gcm_sha384,",
			"tls_rsa_with_aes_128_cbc_sha256, tls_rsa_with_aes_256_cbc_sha256, tls_ecdhe_ecdsa_with_aes_128_cbc_sha, tls_ecdhe_ecdsa_with_aes_256_cbc_sha,",
			"tls_ecdhe_rsa_with_aes_128_cbc_sha, tls_ecdhe_rsa_with_aes_256_cbc_sha, tls_rsa_with_aes_128_cbc_sha, tls_rsa_with_aes_256_cbc_sha,",
			"tls_rsa_with_3des_ede_cbc_sha, tls_rsa_with_rc4_128_sha.",
		]
		description: description: [
			"User defined description for the object.",
		]
		dhparam: description: [
			"Dh parameters used in ssl.",
			"At this time, it is not configurable and is set to 2048 bits.",
		]
		enable_ssl_session_reuse: {
			description: [
				"Enable ssl session re-use.",
				"Default value when not specified in API or module is interpreted by Avi Controller as True.",
			]
			type: "bool"
		}
		name: {
			description: [
				"Name of the object.",
			]
			required: true
		}
		prefer_client_cipher_ordering: {
			description: [
				"Prefer the ssl cipher ordering presented by the client during the ssl handshake over the one specified in the ssl profile.",
				"Default value when not specified in API or module is interpreted by Avi Controller as False.",
			]
			type: "bool"
		}
		send_close_notify: {
			description: [
				"Send 'close notify' alert message for a clean shutdown of the ssl connection.",
				"Default value when not specified in API or module is interpreted by Avi Controller as True.",
			]
			type: "bool"
		}
		ssl_rating: description: [
			"Sslrating settings for sslprofile.",
		]
		ssl_session_timeout: description: [
			"The amount of time in seconds before an ssl session expires.",
			"Default value when not specified in API or module is interpreted by Avi Controller as 86400.",
		]
		tags: description: [
			"List of tag.",
		]
		tenant_ref: description: [
			"It is a reference to an object of type tenant.",
		]
		type: {
			description: [
				"Ssl profile type.",
				"Enum options - SSL_PROFILE_TYPE_APPLICATION, SSL_PROFILE_TYPE_SYSTEM.",
				"Field introduced in 17.2.8.",
				"Default value when not specified in API or module is interpreted by Avi Controller as SSL_PROFILE_TYPE_APPLICATION.",
			]
			version_added: "2.6"
		}
		url: description: [
			"Avi controller URL of the object.",
		]
		uuid: description: [
			"Unique object identifier of the object.",
		]
	}
	extends_documentation_fragment: ["avi"]
}
