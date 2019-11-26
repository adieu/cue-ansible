package dimensiondata

dimensiondata_network :: {

	// Additional description of the network domain.

	description?: string

	// The name of the network domain to create.

	name: string

	// The service plan, either "ESSENTIALS" or "ADVANCED".
	// MCP 2.0 Only.

	service_plan?: string

	// Should the resource be present or absent.

	state?: string
}

dimensiondata_vlan :: {

	// The Id or name of the target network domain.

	network_domain: string

	// The base address for the VLAN's IPv4 network (e.g. 192.168.1.0).

	private_ipv4_base_address?: string

	// The size of the IPv4 address space, e.g 24.
	// Required, if C(private_ipv4_base_address) is specified.

	private_ipv4_prefix_size?: string

	// The desired state for the target VLAN.
	// C(readonly) ensures that the state is only ever read, not modified (the module will fail if the resource does not exist).

	state?: string

	// Permit expansion of the target VLAN's network if the module parameters specify a larger network than the VLAN currently possesses.
	// If C(False), the module will fail under these conditions.
	// This is intended to prevent accidental expansion of a VLAN's network (since this operation is not reversible).

	allow_expand?: bool

	// A description of the VLAN.

	description?: string

	// The name of the target VLAN.
	// Required if C(state) is C(present).

	name?: string
}
