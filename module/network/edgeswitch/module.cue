package edgeswitch

edgeswitch_facts :: {

	// When supplied, this argument will restrict the facts collected to a given subset.  Possible values for this argument include all, config, and interfaces.  Can specify a list of values to include a larger subset.  Values can also be used with an initial C(M(!)) to specify that a specific subset should not be collected.

	gather_subset?: string
}

edgeswitch_vlan :: {

	// Each of the switch interfaces will be excluded from I(vlan_id) unless defined in I(*_interfaces). This is a default setting for all switch interfaces.

	auto_exclude?: bool

	// List of interfaces that should accept and transmit tagged frames for the VLAN. Accept range of interfaces.

	tagged_interfaces?: string

	// List of interfaces that should accept untagged frames and transmit them tagged for the VLAN. Accept range of interfaces.

	untagged_interfaces?: string

	// List of VLANs definitions.

	aggregate?: string

	// Each of the switch interfaces will be set to accept untagged frames and transmit them tagged for I(vlan_id) unless defined in I(*_interfaces). This is a default setting for all switch interfaces.

	auto_untag?: bool

	// List of interfaces that should be excluded of the VLAN. Accept range of interfaces.

	excluded_interfaces?: string

	// Name of the VLAN.

	name?: string

	// Purge VLANs not defined in the I(aggregate) parameter.

	purge?: bool

	// action on the VLAN configuration.

	state?: string

	// ID of the VLAN. Range 1-4093.

	vlan_id?: string

	// Each of the switch interfaces will be set to accept and transmit untagged frames for I(vlan_id) unless defined in I(*_interfaces). This is a default setting for all switch interfaces.

	auto_tag?: bool
}
