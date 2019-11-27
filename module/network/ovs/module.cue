package ovs

openvswitch_bridge :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	openvswitch_bridge: {

		// A dictionary of external-ids. Omitting this parameter is a No-op. To  clear all external-ids pass an empty value.

		external_ids?: string

		// Set bridge fail-mode. The default value (None) is a No-op.

		fail_mode?: string

		// Bridge parent of the fake bridge to manage

		parent?: string

		// Run set command after bridge configuration. This parameter is non-idempotent, play will always return I(changed) state if present

		set?: string

		// Whether the bridge should exist

		state?: string

		// How long to wait for ovs-vswitchd to respond

		timeout?: string

		// The VLAN id of the fake bridge to manage (must be between 0 and 4095). This parameter is required if I(parent) parameter is set.

		vlan?: string

		// Name of bridge or fake bridge to manage

		bridge: string
	}
}

openvswitch_db :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	openvswitch_db: {

		// Identifies the column in the record.

		col: string

		// Identifies the key in the record column, when the column is a map type.

		key?: string

		// Identifies the record in the table.

		record: string

		// Configures the state of the key. When set to I(present), the I(key) and I(value) pair will be set on the I(record) and when set to I(absent) the I(key) will not be set.

		state?: string

		// Identifies the table in the database.

		table: string

		// How long to wait for ovs-vswitchd to respond

		timeout?: string

		// Expected value for the table, record, column and key.

		value: string
	}
}

openvswitch_port :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	openvswitch_port: {

		// How long to wait for ovs-vswitchd to respond

		timeout?: string

		// Name of bridge to manage

		bridge: string

		// Dictionary of external_ids applied to a port.

		external_ids?: string

		// Name of port to manage on the bridge

		port: string

		// Set a single property on a port.

		set?: string

		// Whether the port should exist

		state?: string

		// VLAN tag for this port. Must be a value between 0 and 4095.

		tag?: string
	}
}
