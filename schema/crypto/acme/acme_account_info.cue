package ansible

module: acme_account_info: {
	module:            "acme_account_info"
	author:            "Felix Fontein (@felixfontein)"
	version_added:     "2.7"
	short_description: "Retrieves information on ACME accounts"
	description: [
		"Allows to retrieve information on accounts a CA supporting the L(ACME protocol,https://tools.ietf.org/html/rfc8555), such as L(Let's Encrypt,https://letsencrypt.org/).",
		"This module only works with the ACME v2 protocol.",
	]
	notes: [
		"The M(acme_account) module allows to modify, create and delete ACME accounts.",
		"This module was called C(acme_account_facts) before Ansible 2.8. The usage did not change.",
	]

	options: retrieve_orders: {
		description: [
			"Whether to retrieve the list of order URLs or order objects, if provided by the ACME server.",
			"A value of C(ignore) will not fetch the list of orders.",
			"Currently, Let's Encrypt does not return orders, so the C(orders) result will always be empty.",
		]

		type: "str"
		choices: [
			"ignore",
			"url_list",
			"object_list",
		]
		default:       "ignore"
		version_added: "2.9"
	}
	seealso: [{
		module:      "acme_account"
		description: "Allows to create, modify or delete an ACME account."
	}]
	extends_documentation_fragment: ["acme"]
}
