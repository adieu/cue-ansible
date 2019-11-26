package ansible

module: nclu: {
	module:            "nclu"
	version_added:     "2.3"
	author:            "Cumulus Networks (@isharacomix)"
	short_description: "Configure network interfaces using NCLU"
	description: [
		"Interface to the Network Command Line Utility, developed to make it easier to configure operating systems running ifupdown2 and Quagga, such as Cumulus Linux. Command documentation is available at U(https://docs.cumulusnetworks.com/cumulus-linux/System-Configuration/Network-Command-Line-Utility-NCLU/)",
	]

	options: {
		commands: description: [
			"A list of strings containing the net commands to run. Mutually exclusive with I(template).",
		]

		template: description: [
			"A single, multi-line string with jinja2 formatting. This string will be broken by lines, and each line will be run through net. Mutually exclusive with I(commands).",
		]

		commit: {
			description: [
				"When true, performs a 'net commit' at the end of the block. Mutually exclusive with I(atomic).",
			]

			default: false
			type:    "bool"
		}
		abort: {
			description: [
				"Boolean. When true, perform a 'net abort' before the block. This cleans out any uncommitted changes in the buffer. Mutually exclusive with I(atomic).",
			]

			default: false
			type:    "bool"
		}
		atomic: {
			description: [
				"When true, equivalent to both I(commit) and I(abort) being true. Mutually exclusive with I(commit) and I(atomic).",
			]

			default: false
			type:    "bool"
		}
		description: {
			description: [
				"Commit description that will be recorded to the commit log if I(commit) or I(atomic) are true.",
			]

			default: "Ansible-originated commit"
		}
	}
}
