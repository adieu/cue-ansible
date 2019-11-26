package ansible

module: nxos_acl: {
	module:                         "nxos_acl"
	extends_documentation_fragment: "nxos"
	version_added:                  "2.2"
	short_description:              "Manages access list entries for ACLs."
	description: [
		"Manages access list entries for ACLs.",
	]
	author: [
		"Jason Edelman (@jedelman8)",
		"Gabriele Gerbino (@GGabriele)",
	]
	notes: [
		"Tested against NXOSv 7.3.(0)D1(1) on VIRL",
		"C(state=absent) removes the ACE if it exists.",
		"C(state=delete_acl) deletes the ACL if it exists.",
		"For idempotency, use port numbers for the src/dest port params like I(src_port1) and names for the well defined protocols for the I(proto) param.",
		"Although this module is idempotent in that if the ace as presented in the task is identical to the one on the switch, no changes will be made. If there is any difference, what is in Ansible will be pushed (configured options will be overridden).  This is to improve security, but at the same time remember an ACE is removed, then re-added, so if there is a change, the new ACE will be exactly what parameters you are sending to the module.",
	]

	options: {
		seq: description: [
			"Sequence number of the entry (ACE).",
		]
		name: {
			description: [
				"Case sensitive name of the access list (ACL).",
			]
			required: true
		}
		action: {
			description: [
				"Action of the ACE.",
			]
			choices: ["permit", "deny", "remark"]
		}
		remark: description: [
			"If action is set to remark, this is the description.",
		]
		proto: description: [
			"Port number or protocol (as supported by the switch).",
		]
		src: description: [
			"Source ip and mask using IP/MASK notation and supports keyword 'any'.",
		]

		src_port_op: {
			description: [
				"Source port operands such as eq, neq, gt, lt, range.",
			]
			choices: ["any", "eq", "gt", "lt", "neq", "range"]
		}
		src_port1: description: [
			"Port/protocol and also first (lower) port when using range operand.",
		]

		src_port2: description: [
			"Second (end) port when using range operand.",
		]
		dest: description: [
			"Destination ip and mask using IP/MASK notation and supports the keyword 'any'.",
		]

		dest_port_op: {
			description: [
				"Destination port operands such as eq, neq, gt, lt, range.",
			]
			choices: ["any", "eq", "gt", "lt", "neq", "range"]
		}
		dest_port1: description: [
			"Port/protocol and also first (lower) port when using range operand.",
		]

		dest_port2: description: [
			"Second (end) port when using range operand.",
		]
		log: {
			description: [
				"Log matches against this entry.",
			]
			choices: ["enable"]
		}
		urg: {
			description: [
				"Match on the URG bit.",
			]
			choices: ["enable"]
		}
		ack: {
			description: [
				"Match on the ACK bit.",
			]
			choices: ["enable"]
		}
		psh: {
			description: [
				"Match on the PSH bit.",
			]
			choices: ["enable"]
		}
		rst: {
			description: [
				"Match on the RST bit.",
			]
			choices: ["enable"]
		}
		syn: {
			description: [
				"Match on the SYN bit.",
			]
			choices: ["enable"]
		}
		fin: {
			description: [
				"Match on the FIN bit.",
			]
			choices: ["enable"]
		}
		established: {
			description: [
				"Match established connections.",
			]
			choices: ["enable"]
		}
		fragments: {
			description: [
				"Check non-initial fragments.",
			]
			choices: ["enable"]
		}
		time_range: description: [
			"Name of time-range to apply.",
		]
		precedence: {
			description: [
				"Match packets with given precedence.",
			]
			choices: [
				"critical",
				"flash",
				"flash-override",
				"immediate",
				"internet",
				"network",
				"priority",
				"routine",
			]
		}
		dscp: {
			description: [
				"Match packets with given dscp value.",
			]
			choices: [
				"af11",
				"af12",
				"af13",
				"af21",
				"af22",
				"af23",
				"af31",
				"af32",
				"af33",
				"af41",
				"af42",
				"af43",
				"cs1",
				"cs2",
				"cs3",
				"cs4",
				"cs5",
				"cs6",
				"cs7",
				"default",
				"ef",
			]
		}
		state: {
			description: [
				"Specify desired state of the resource.",
			]
			default: "present"
			choices: ["present", "absent", "delete_acl"]
		}
	}
}
