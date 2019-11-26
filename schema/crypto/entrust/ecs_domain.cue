package ansible

module: ecs_domain: {
	module: "ecs_domain"
	author: [
		"Chris Trufan (@ctrufan)",
	]
	version_added:     "2.10"
	short_description: "Request validation of a domain with the Entrust Certificate Services (ECS) API"
	description: [
		"Request validation or re-validation of a domain with the Entrust Certificate Services (ECS) API.",
		"Requires credentials for the L(Entrust Certificate Services,https://www.entrustdatacard.com/products/categories/ssl-certificates) (ECS) API.",
		"If the domain is already in the validation process, no new validation will be requested, but the validation data (if applicable) will be returned.",
		"If the domain is already in the validation process but the I(verification_method) specified is different than the current I(verification_method), the I(verification_method) will be updated and validation data (if applicable) will be returned.",
		"If the domain is an active, validated domain, the return value of I(changed) will be false, unless C(domain_status=EXPIRED), in which case a re-validation will be performed.",
		"If C(verification_method=dns), details about the required DNS entry will be specified in the return parameters I(dns_contents), I(dns_location), and I(dns_resource_type).",
		"If C(verification_method=web_server), details about the required file details will be specified in the return parameters I(file_contents) and I(file_location).",
		"If C(verification_method=email), the email address(es) that the validation email(s) were sent to will be in the return parameter I(emails). This is purely informational. For domains requested using this module, this will always be a list of size 1.",
	]

	notes: [
		"There is a small delay (typically about 5 seconds, but can be as long as 60 seconds) before obtaining the random values when requesting a validation while C(verification_method=dns) or C(verification_method=web_server). Be aware of that if doing many domain validation requests.",
	]

	options: {
		client_id: {
			description: [
				"The client ID to request the domain be associated with.",
				"If no client ID is specified, the domain will be added under the primary client with ID of 1.",
			]
			type:    "int"
			default: 1
		}
		domain_name: {
			description: [
				"The domain name to be verified or reverified.",
			]
			type:     "str"
			required: true
		}
		verification_method: {
			description: [
				"The verification method to be used to prove control of the domain.",
				"If C(verification_method=email) and the value I(verification_email) is specified, that value is used for the email validation. If I(verification_email) is not provided, the first value present in WHOIS data will be used. An email will be sent to the address in I(verification_email) with instructions on how to verify control of the domain.",
				"If C(verification_method=dns), the value I(dns_contents) must be stored in location I(dns_location), with a DNS record type of I(verification_dns_record_type). To prove domain ownership, update your DNS records so the text string returned by I(dns_contents) is available at I(dns_location).",
				"If C(verification_method=web_server), the contents of return value I(file_contents) must be made available on a web server accessible at location I(file_location).",
				"If C(verification_method=manual), the domain will be validated with a manual process. This is not recommended.",
			]
			type: "str"
			choices: ["dns", "email", "manual", "web_server"]
			required: true
		}
		verification_email: {
			description: [
				"Email address to be used to verify domain ownership.",
				"Email address must be either an email address present in the WHOIS data for I(domain_name), or one of the following constructed emails: admin@I(domain_name), administrator@I(domain_name), webmaster@I(domain_name), hostmaster@I(domain_name), postmaster@I(domain_name)",
				"Note that if I(domain_name) includes subdomains, the top level domain should be used. For example, if requesting validation of example1.ansible.com, or test.example2.ansible.com, and you want to use the \"admin\" preconstructed name, the email address should be admin@ansible.com.",
				"If using the email values from the WHOIS data for the domain or it's top level namespace, they must be exact matches.",
				"If C(verification_method=email) but I(verification_email) is not provided, the first email address found in WHOIS data for the domain will be used.",
				"To verify domain ownership, domain owner must follow the instructions in the email they receive.",
				"Only allowed if C(verification_method=email)",
			]
			type: "str"
		}
	}
	seealso: [{
		module:      "openssl_certificate"
		description: "Can be used to request certificates from ECS, with C(provider=entrust)."
	}, {
		module:      "ecs_certificate"
		description: "Can be used to request a Certificate from ECS using a verified domain."
	}]
	extends_documentation_fragment: ["ecs_credential"]
}
