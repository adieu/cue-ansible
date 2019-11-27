package illumos

ipadm_ifprop :: {

	// Specifies the protocol for which we want to manage properties.

	protocol: string

	// Set or reset the property value.

	state?: string

	// Specifies that the property value is temporary. Temporary property values do not persist across reboots.

	temporary?: bool

	// Specifies the value we want to set for the property.

	value?: string

	// Specifies the IP interface we want to manage.

	interface: string

	// Specifies the name of the property we want to manage.

	property: string
}

dladm_etherstub :: {

	// Etherstub name.

	name: string

	// Create or delete Solaris/illumos etherstub.

	state?: string

	// Specifies that the etherstub is temporary. Temporary etherstubs do not persist across reboots.

	temporary?: bool
}

dladm_linkprop :: {

	// Link interface name.

	link: string

	// Specifies the name of the property we want to manage.

	property: string

	// Set or reset the property value.

	state?: string

	// Specifies that lin property configuration is temporary. Temporary link property configuration does not persist across reboots.

	temporary?: bool

	// Specifies the value we want to set for the link property.

	value?: string
}

flowadm :: {

	// Specifies that the configured flow is temporary. Temporary flows do not persist across reboots.

	temporary?: bool

	// Identifies a service specified by the local port.

	local_port?: string

	// - A flow is defined as a set of attributes based on Layer 3 and Layer 4 headers, which can be used to identify a protocol, service, or a zone.


	name: string

	// Sets the relative priority for the flow.

	priority?: string

	// Identifies a network flow by the remote IP address.

	remote_ip?: string

	// Create/delete/enable/disable an IP address on the network interface.

	state?: string

	// - Identifies the 8-bit differentiated services field (as defined in RFC 2474). The optional dsfield_mask is used to state the bits of interest in the differentiated services field when comparing with the dsfield value. Both values must be in hexadecimal.


	dsfield?: string

	// Specifiies a link to configure flow on.

	link?: string

	// Identifies a network flow by the local IP address.

	local_ip?: string

	// - Sets the full duplex bandwidth for the flow. The bandwidth is specified as an integer with one of the scale suffixes(K, M, or G for Kbps, Mbps, and Gbps). If no units are specified, the input value will be read as Mbps.


	maxbw?: string

	// - Specifies a Layer 4 protocol to be used. It is typically used in combination with I(local_port) to identify the service that needs special attention.


	transport?: string
}

ipadm_if :: {

	// IP interface name.

	name: string

	// Create or delete Solaris/illumos IP interfaces.

	state?: string

	// Specifies that the IP interface is temporary. Temporary IP interfaces do not persist across reboots.

	temporary?: bool
}

ipadm_addrprop :: {

	// Specifies the address object we want to manage.

	addrobj: string

	// Specifies the name of the address property we want to manage.

	property: string

	// Set or reset the property value.

	state?: string

	// Specifies that the address property value is temporary. Temporary values do not persist across reboots.

	temporary?: bool

	// Specifies the value we want to set for the address property.

	value?: string
}

ipadm_prop :: {

	// Specifies the name of property we want to manage.

	property: string

	// Specifies the protocol for which we want to manage properties.

	protocol: string

	// Set or reset the property value.

	state?: string

	// Specifies that the property value is temporary. Temporary property values do not persist across reboots.

	temporary?: bool

	// Specifies the value we want to set for the property.

	value?: string
}

dladm_iptun :: {

	// IP tunnel interface name.

	name: string

	// Literal IP address or hostname corresponding to the tunnel destination.

	remote_address?: string

	// Create or delete Solaris/illumos VNIC.

	state?: string

	// Specifies that the IP tunnel interface is temporary. Temporary IP tunnel interfaces do not persist across reboots.

	temporary?: bool

	// Specifies the type of tunnel to be created.

	type?: string

	// Literal IP address or hostname corresponding to the tunnel source.

	local_address?: string
}

dladm_vlan :: {

	// Create or delete Solaris/illumos VNIC.

	state?: string

	// Specifies that the VLAN interface is temporary. Temporary VLANs do not persist across reboots.

	temporary?: bool

	// VLAN ID value for VLAN interface.

	vlan_id?: string

	// VLAN underlying link name.

	link: string

	// VLAN interface name.

	name: string
}

dladm_vnic :: {

	// Sets the VNIC's MAC address. Must be valid unicast MAC address.

	mac?: string

	// VNIC name.

	name: string

	// Create or delete Solaris/illumos VNIC.

	state?: string

	// Specifies that the VNIC is temporary. Temporary VNICs do not persist across reboots.

	temporary?: bool

	// Enable VLAN tagging for this VNIC. The VLAN tag will have id I(vlan).

	vlan?: string

	// VNIC underlying link name.

	link: string
}

ipadm_addr :: {

	// Specifiies an IP address to configure in CIDR notation.

	address?: string

	// Specifies an unique IP address on the system.

	addrobj: string

	// Specifiies a type of IP address to configure.

	addrtype?: string

	// Create/delete/enable/disable an IP address on the network interface.

	state?: string

	// Specifies that the configured IP address is temporary. Temporary IP addresses do not persist across reboots.

	temporary?: bool

	// Specifies the time in seconds we wait for obtaining address via DHCP.

	wait?: string
}
