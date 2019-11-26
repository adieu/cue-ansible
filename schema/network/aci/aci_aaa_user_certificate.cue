package ansible

module: aci_aaa_user_certificate: {
	module:            "aci_aaa_user_certificate"
	short_description: "Manage AAA user certificates (aaa:UserCert)"
	description: [
		"Manage AAA user certificates on Cisco ACI fabrics.",
	]
	version_added: "2.5"
	options: {
		aaa_user: {
			description: [
				"The name of the user to add a certificate to.",
			]
			type:     "str"
			required: true
		}
		aaa_user_type: {
			description: [
				"Whether this is a normal user or an appuser.",
			]
			type: "str"
			choices: ["appuser", "user"]
			default: "user"
		}
		certificate: {
			description: [
				"The PEM format public key extracted from the X.509 certificate.",
			]
			type: "str"
			aliases: ["cert_data", "certificate_data"]
		}
		certificate_name: {
			description: [
				"The name of the user certificate entry in ACI.",
			]
			type: "str"
			aliases: ["cert_name"]
		}
		state: {
			description: [
				"Use C(present) or C(absent) for adding or removing.",
				"Use C(query) for listing an object or multiple objects.",
			]
			type: "str"
			choices: ["absent", "present", "query"]
			default: "present"
		}
	}
	extends_documentation_fragment: "aci"
	notes: [
		"The C(aaa_user) must exist before using this module in your playbook. The M(aci_aaa_user) module can be used for this.",
	]

	seealso: [{
		module: "aci_aaa_user"
	}, {
		name:        "APIC Management Information Model reference"
		description: "More information about the internal APIC class B(aaa:UserCert)."
		link:        "https://developer.cisco.com/docs/apic-mim-ref/"
	}]
	author: ["Dag Wieers (@dagwieers)"]
}
