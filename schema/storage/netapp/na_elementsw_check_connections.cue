package ansible

module: na_elementsw_check_connections: {
	module: "na_elementsw_check_connections"

	short_description: "NetApp Element Software Check connectivity to MVIP and SVIP."
	extends_documentation_fragment: [
		"netapp.solidfire",
	]
	version_added: "2.7"
	author:        "NetApp Ansible Team (@carchi8py) <ng-ansibleteam@netapp.com>"
	description: [
		"Used to test the management connection to the cluster.",
		"The test pings the MVIP and SVIP, and executes a simple API method to verify connectivity.",
	]

	options: {

		skip: {
			description: [
				"Skip checking connection to SVIP or MVIP.",
			]
			choices: ["svip", "mvip"]
		}

		mvip: description: [
			"Optionally, use to test connection of a different MVIP.",
			"This is not needed to test the connection to the target cluster.",
		]

		svip: description: [
			"Optionally, use to test connection of a different SVIP.",
			"This is not needed to test the connection to the target cluster.",
		]
	}
}
