package ansible

module: skydive_capture: {
	module:        "skydive_capture"
	version_added: "2.8"
	author: [
		"Sumit Jaiswal (@sjaiswal)",
	]
	short_description: "Module which manages flow capture on interfaces"
	description: [
		"This module manages flow capture on interfaces. The Gremlin expression is continuously evaluated which means that it is possible to define a capture on nodes that do not exist yet.",
		"It is useful when you want to start a capture on all OpenvSwitch whatever the number of Skydive agents you will start.",
		"While starting the capture, user can specify the capture name, capture description and capture type optionally.",
	]

	requirements: [
		"skydive-client",
	]
	extends_documentation_fragment: "skydive"
	options: {
		query: {
			description: [
				"It's the complete gremlin query which the users can input, I(G.V().Has('Name', 'eth0', 'Type', 'device')), to create the capture. And, if the user directly inputs the gremlin query then user is not required to input any other module parameter as gremlin query takes care of creating the flow capture.",
			]

			required: false
		}
		interface_name: {
			description: [
				"To define flow capture interface name.",
			]
			required: false
		}
		type: {
			description: [
				"To define flow capture interface type.",
			]
			required: false
		}
		capture_name: {
			description: [
				"To define flow capture name.",
			]
			required: false
			default:  ""
		}
		description: {
			description: [
				"Configures a text string to be associated with the instance of this object.",
			]

			default: ""
		}
		extra_tcp_metric: {
			description: [
				"To define flow capture ExtraTCPMetric.",
			]
			type:    "bool"
			default: false
		}
		ip_defrag: {
			description: [
				"To define flow capture IPDefrag.",
			]
			type:    "bool"
			default: false
		}
		reassemble_tcp: {
			description: [
				"To define flow capture ReassembleTCP.",
			]
			type:    "bool"
			default: false
		}
		layer_key_mode: {
			description: [
				"To define flow capture Layer KeyMode.",
			]
			type:    "str"
			default: "L2"
		}
		state: {
			description: [
				"State of the flow capture. If value is I(present) flow capture will be created else if it is I(absent) it will be deleted.",
			]

			default: "present"
			choices: [
				"present",
				"absent",
			]
		}
	}
}
