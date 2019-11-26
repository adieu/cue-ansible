package ansible

module: na_ontap_net_routes: {
	module:            "na_ontap_net_routes"
	short_description: "NetApp ONTAP network routes"
	extends_documentation_fragment: [
		"netapp.na_ontap",
	]
	version_added: "2.6"
	author:        "NetApp Ansible Team (@carchi8py) <ng-ansibleteam@netapp.com>"
	description: [
		"Modify ONTAP network routes.",
	]
	options: {
		state: {
			description: [
				"Whether you want to create or delete a network route.",
			]
			choices: ["present", "absent"]
			default: "present"
		}
		vserver: {
			description: [
				"The name of the vserver.",
			]
			required: true
		}
		destination: {
			description: [
				"Specify the route destination.",
				"Example 10.7.125.5/20, fd20:13::/64.",
			]
			required: true
		}
		gateway: {
			description: [
				"Specify the route gateway.",
				"Example 10.7.125.1, fd20:13::1.",
			]
			required: true
		}
		metric: description: [
			"Specify the route metric.",
			"If this field is not provided the default will be set to 20.",
		]
		from_destination: {
			description: [
				"Specify the route destination that should be changed.",
				"new_destination was removed to fix idempotency issues. To rename destination the original goes to from_destination and the new goes to destination.",
			]
			version_added: "2.8"
		}
		from_gateway: {
			description: [
				"Specify the route gateway that should be changed.",
			]
			version_added: "2.8"
		}
		from_metric: {
			description: [
				"Specify the route metric that should be changed.",
			]
			version_added: "2.8"
		}
	}
}
