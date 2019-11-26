package ansible

module: avi_pkiprofile: {
	module: "avi_pkiprofile"
	author: "Gaurav Rastogi (@grastogi23) <grastogi@avinetworks.com>"

	short_description: "Module for setup of PKIProfile Avi RESTful Object"
	description: [
		"This module is used to configure PKIProfile object",
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
		ca_certs: description: [
			"List of certificate authorities (root and intermediate) trusted that is used for certificate validation.",
		]
		created_by: description: [
			"Creator name.",
		]
		crl_check: {
			description: [
				"When enabled, avi will verify via crl checks that certificates in the trust chain have not been revoked.",
				"Default value when not specified in API or module is interpreted by Avi Controller as True.",
			]
			type: "bool"
		}
		crls: description: [
			"Certificate revocation lists.",
		]
		ignore_peer_chain: {
			description: [
				"When enabled, avi will not trust intermediate and root certs presented by a client.",
				"Instead, only the chain certs configured in the certificate authority section will be used to verify trust of the client's cert.",
				"Default value when not specified in API or module is interpreted by Avi Controller as False.",
			]
			type: "bool"
		}
		is_federated: {
			description: [
				"This field describes the object's replication scope.",
				"If the field is set to false, then the object is visible within the controller-cluster and its associated service-engines.",
				"If the field is set to true, then the object is replicated across the federation.",
				"Field introduced in 17.1.3.",
				"Default value when not specified in API or module is interpreted by Avi Controller as False.",
			]
			version_added: "2.4"
			type:          "bool"
		}
		name: {
			description: [
				"Name of the pki profile.",
			]
			required: true
		}
		tenant_ref: description: [
			"It is a reference to an object of type tenant.",
		]
		url: description: [
			"Avi controller URL of the object.",
		]
		uuid: description: [
			"Unique object identifier of the object.",
		]
		validate_only_leaf_crl: {
			description: [
				"When enabled, avi will only validate the revocation status of the leaf certificate using crl.",
				"To enable validation for the entire chain, disable this option and provide all the relevant crls.",
				"Default value when not specified in API or module is interpreted by Avi Controller as True.",
			]
			type: "bool"
		}
	}
	extends_documentation_fragment: ["avi"]
}
