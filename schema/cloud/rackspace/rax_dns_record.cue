package ansible

module: rax_dns_record: {
	module:            "rax_dns_record"
	short_description: "Manage DNS records on Rackspace Cloud DNS"
	description: [
		"Manage DNS records on Rackspace Cloud DNS",
	]
	version_added: 1.5
	options: {
		comment: description: [
			"Brief description of the domain. Maximum length of 160 characters",
		]
		data: {
			description: [
				"IP address for A/AAAA record, FQDN for CNAME/MX/NS, or text data for SRV/TXT",
			]

			required: true
		}
		domain: description: [
			"Domain name to create the record in. This is an invalid option when type=PTR",
		]

		loadbalancer: {
			description: [
				"Load Balancer ID to create a PTR record for. Only used with type=PTR",
			]
			version_added: 1.7
		}
		name: {
			description: [
				"FQDN record name to create",
			]
			required: true
		}
		overwrite: {
			description: [
				"Add new records if data doesn't match, instead of updating existing record with matching name. If there are already multiple records with matching name and overwrite=true, this module will fail.",
			]

			default:       true
			type:          "bool"
			version_added: 2.1
		}
		priority: description: [
			"Required for MX and SRV records, but forbidden for other record types. If specified, must be an integer from 0 to 65535.",
		]

		server: {
			description: [
				"Server ID to create a PTR record for. Only used with type=PTR",
			]
			version_added: 1.7
		}
		state: {
			description: [
				"Indicate desired state of the resource",
			]
			choices: [
				"present",
				"absent",
			]
			default: "present"
		}
		ttl: {
			description: [
				"Time to live of record in seconds",
			]
			default: 3600
		}
		type: {
			description: [
				"DNS record type",
			]
			choices: [
				"A",
				"AAAA",
				"CNAME",
				"MX",
				"NS",
				"SRV",
				"TXT",
				"PTR",
			]
			required: true
		}
	}
	notes: [
		"It is recommended that plays utilizing this module be run with C(serial: 1) to avoid exceeding the API request limit imposed by the Rackspace CloudDNS API",
		"To manipulate a C(PTR) record either C(loadbalancer) or C(server) must be supplied",
		"As of version 1.7, the C(type) field is required and no longer defaults to an C(A) record.",
		"C(PTR) record support was added in version 1.7",
	]
	author: "Matt Martz (@sivel)"
	extends_documentation_fragment: [
		"rackspace",
		"rackspace.openstack",
	]
}
