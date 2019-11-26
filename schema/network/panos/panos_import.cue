package ansible

module: panos_import: {
	module:            "panos_import"
	short_description: "import file on PAN-OS devices"
	description: [
		"Import file on PAN-OS device",
	]
	notes: [
		"API reference documentation can be read from the C(/api/) directory of your appliance",
		"Certificate validation is enabled by default as of Ansible 2.6. This may break existing playbooks but should be disabled with caution.",
	]
	author:        "Luigi Mori (@jtschichold), Ivan Bojer (@ivanbojer)"
	version_added: "2.3"
	requirements: [
		"pan-python",
		"requests",
		"requests_toolbelt",
	]
	deprecated: {
		alternative: "Use U(https://galaxy.ansible.com/PaloAltoNetworks/paloaltonetworks) instead."
		removed_in:  "2.12"
		why:         "Consolidating code base."
	}
	options: {
		category: {
			description: [
				"Category of file uploaded. The default is software.",
				"See API > Import section of the API reference for category options.",
			]
			default: "software"
		}
		file: description: [
			"Location of the file to import into device.",
		]
		url: description: [
			"URL of the file that will be imported to device.",
		]
		validate_certs: {
			description: [
				"If C(no), SSL certificates will not be validated. Disabling certificate validation is not recommended.",
			]
			default:       true
			type:          "bool"
			version_added: "2.6"
		}
	}
	extends_documentation_fragment: "panos"
}
