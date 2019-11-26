package layer2

net_l2_interface :: {

	// List of VLANs to be configured in trunk port.

	trunk_vlans?: string

	// Configure given VLAN in access port.

	access_vlan?: string

	// List of Layer-2 interface definitions.

	aggregate?: string

	// Mode in which interface needs to be configured.

	mode?: string

	// Name of the interface excluding any logical unit number.

	name?: string

	// Native VLAN to be configured in trunk port.

	native_vlan?: string

	// State of the Layer-2 Interface configuration.

	state?: string

	// List of allowed VLAN's in a given trunk port.

	trunk_allowed_vlans?: string
}

net_vlan :: {

	// List of VLANs definitions.

	aggregate?: string

	// List of interfaces the VLAN should be configured on.

	interfaces?: string

	// Name of the VLAN.

	name?: string

	// Purge VLANs not defined in the I(aggregate) parameter.

	purge?: string

	// State of the VLAN configuration.

	state?: string

	// ID of the VLAN.

	vlan_id?: string
}
