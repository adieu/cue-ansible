package ansible

module: openvswitch_db: {
	module:            "openvswitch_db"
	author:            "Mark Hamilton (@markleehamilton) <mhamilton@vmware.com>"
	version_added:     2.0
	short_description: "Configure open vswitch database."
	requirements: ["ovs-vsctl >= 2.3.3"]
	description: [
		"Set column values in record in database table.",
	]
	options: {
		state: {
			required: false
			description: [
				"Configures the state of the key. When set to I(present), the I(key) and I(value) pair will be set on the I(record) and when set to I(absent) the I(key) will not be set.",
			]

			default: "present"
			choices: ["present", "absent"]
			version_added: "2.4"
		}
		table: {
			required: true
			description: [
				"Identifies the table in the database.",
			]
		}
		record: {
			required: true
			description: [
				"Identifies the record in the table.",
			]
		}
		col: {
			required: true
			description: [
				"Identifies the column in the record.",
			]
		}
		key: {
			required: false
			description: [
				"Identifies the key in the record column, when the column is a map type.",
			]
		}

		value: {
			required: true
			description: [
				"Expected value for the table, record, column and key.",
			]
		}
		timeout: {
			required: false
			default:  5
			description: ["How long to wait for ovs-vswitchd to respond"]
		}
	}
}
