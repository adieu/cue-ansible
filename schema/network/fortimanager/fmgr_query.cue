package ansible

module: fmgr_query: {
	module:        "fmgr_query"
	version_added: "2.8"
	notes: [
		"Full Documentation at U(https://ftnt-ansible-docs.readthedocs.io/en/latest/).",
	]
	author:            "Luke Weighall (@lweighall)"
	short_description: "Query FortiManager data objects for use in Ansible workflows."
	description: [
		"Provides information on data objects within FortiManager so that playbooks can perform conditionals.",
	]

	options: {
		adom: {
			description: [
				"The ADOM the configuration should belong to.",
			]
			required: false
			default:  "root"
		}

		object: {
			description: [
				"The data object we wish to query (device, package, rule, etc). Will expand choices as improves.",
			]
			required: true
			choices: [
				"device",
				"cluster_nodes",
				"task",
				"custom",
			]
		}

		custom_endpoint: {
			description: [
				"ADVANCED USERS ONLY! REQUIRES KNOWLEDGE OF FMGR JSON API!",
				"The HTTP Endpoint on FortiManager you wish to GET from.",
			]
			required: false
		}

		custom_dict: {
			description: [
				"ADVANCED USERS ONLY! REQUIRES KNOWLEDGE OF FMGR JSON API!",
				"DICTIONARY JSON FORMAT ONLY -- Custom dictionary/datagram to send to the endpoint.",
			]
			required: false
		}

		device_ip: {
			description: [
				"The IP of the device you want to query.",
			]
			required: false
		}

		device_unique_name: {
			description: [
				"The desired \"friendly\" name of the device you want to query.",
			]
			required: false
		}

		device_serial: {
			description: [
				"The serial number of the device you want to query.",
			]
			required: false
		}

		task_id: {
			description: [
				"The ID of the task you wish to query status on. If left blank and object = 'task' a list of tasks are returned.",
			]
			required: false
		}

		nodes: {
			description: [
				"A LIST of firewalls in the cluster you want to verify i.e. [\"firewall_A\",\"firewall_B\"].",
			]
			required: false
		}
	}
}
