package ansible

module: azure_rm_dnsrecordset: {
	module: "azure_rm_dnsrecordset"

	version_added: "2.4"

	short_description: "Create, delete and update DNS record sets and records"

	description: [
		"Creates, deletes, and updates DNS records sets and records within an existing Azure DNS Zone.",
	]

	options: {
		resource_group: {
			description: [
				"Name of resource group.",
			]
			required: true
		}
		zone_name: {
			description: [
				"Name of the existing DNS zone in which to manage the record set.",
			]
			required: true
		}
		relative_name: {
			description: [
				"Relative name of the record set.",
			]
			required: true
		}
		record_type: {
			description: [
				"The type of record set to create or delete.",
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
				"CAA",
				"SOA",
			]
			required: true
		}
		record_mode: {
			description: [
				"Whether existing record values not sent to the module should be purged.",
			]
			default: "purge"
			choices: [
				"append",
				"purge",
			]
		}
		state: {
			description: [
				"Assert the state of the record set. Use C(present) to create or update and C(absent) to delete.",
			]
			default: "present"
			choices: [
				"absent",
				"present",
			]
		}
		time_to_live: {
			description: [
				"Time to live of the record set in seconds.",
			]
			default: 3600
		}
		records: {
			description: [
				"List of records to be created depending on the type of record (set).",
			]
			suboptions: {
				preference: description: [
					"Used for creating an C(MX) record set/records.",
				]
				priority: description: [
					"Used for creating an C(SRV) record set/records.",
				]
				weight: description: [
					"Used for creating an C(SRV) record set/records.",
				]
				port: description: [
					"Used for creating an C(SRV) record set/records.",
				]
				entry: description: [
					"Primary data value for all record types.",
				]
			}
		}
	}

	extends_documentation_fragment: [
		"azure",
		"azure_tags",
	]

	author: [
		"Obezimnaka Boms (@ozboms)",
		"Matt Davis (@nitzmahone)",
	]
}
