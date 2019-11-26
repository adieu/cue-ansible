package interface

net_interface :: {

	// Purge Interfaces not defined in the aggregate parameter. This applies only for logical interface.

	purge?: string

	// Receiver rate in bits per second (bps).
	// This is state check parameter only.
	// Supports conditionals, see L(Conditionals in Networking Modules,../network/user_guide/network_working_with_command_output.html)

	rx_rate?: string

	// State of the Interface configuration, C(up) indicates present and operationally up and C(down) indicates present and operationally C(down)

	state?: string

	// List of Interfaces definitions.

	aggregate?: string

	// Time in seconds to wait before checking for the operational state on remote device. This wait is applicable for operational state argument which are I(state) with values C(up)/C(down), I(tx_rate) and I(rx_rate).

	delay?: string

	// Description of Interface.

	description?: string

	// Configure interface link status.

	enabled?: string

	// Transmit rate in bits per second (bps).
	// This is state check parameter only.
	// Supports conditionals, see L(Conditionals in Networking Modules,../network/user_guide/network_working_with_command_output.html)

	tx_rate?: string

	// Interface link status

	duplex?: string

	// Maximum size of transmit packet.

	mtu?: string

	// Name of the Interface.

	name: string

	// Interface link speed.

	speed?: string
}

net_linkagg :: {

	// Purge link aggregation groups not defined in the I(aggregate) parameter.

	purge?: string

	// State of the link aggregation group.

	state?: string

	// List of link aggregation definitions.

	aggregate?: string

	// List of members interfaces of the link aggregation group. The value can be single interface or list of interfaces.

	members: string

	// Minimum members that should be up before bringing up the link aggregation group.

	min_links?: string

	// Mode of the link aggregation group. A value of C(on) will enable LACP. C(active) configures the link to actively information about the state of the link, or it can be configured in C(passive) mode ie. send link state information only when received them from another link.

	mode?: string

	// Name of the link aggregation group.

	name: string
}

net_lldp_interface :: {

	// List of interfaces LLDP should be configured on.

	aggregate?: string

	// Name of the interface LLDP should be configured on.

	name?: string

	// Purge interfaces not defined in the aggregate parameter.

	purge?: string

	// State of the LLDP configuration.

	state?: string
}
