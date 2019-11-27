package oneview

oneview_enclosure_info :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	oneview_enclosure_info: {

		// Enclosure name.

		name?: string

		// List with options to gather additional information about an Enclosure and related resources. Options allowed: C(script), C(environmentalConfiguration), and C(utilization). For the option C(utilization), you can provide specific parameters.

		options?: string
	}
}

oneview_ethernet_network_info :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	oneview_ethernet_network_info: {

		// Ethernet Network name.

		name?: string

		// List with options to gather additional information about an Ethernet Network and related resources. Options allowed: C(associatedProfiles) and C(associatedUplinkGroups).

		options?: string
	}
}

oneview_logical_interconnect_group_info :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	oneview_logical_interconnect_group_info: {

		name?: string

		// Logical Interconnect Group name.
	}
}

oneview_network_set_info :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	oneview_network_set_info: {

		// Network Set name.

		name?: string

		// List with options to gather information about Network Set. Option allowed: C(withoutEthernet). The option C(withoutEthernet) retrieves the list of network_sets excluding Ethernet networks.

		options?: string
	}
}

oneview_san_manager_info :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	oneview_san_manager_info: {

		// List of params to delimit, filter and sort the list of resources.
		// params allowed: - C(start): The first item to return, using 0-based indexing. - C(count): The number of resources to return. - C(query): A general query string to narrow the list of resources returned. - C(sort): The sort order of the returned data set.

		params?: string

		// Provider Display Name.

		provider_display_name?: string
	}
}

oneview_datacenter_info :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	oneview_datacenter_info: {

		// Data Center name.

		name?: string

		// Retrieve additional information. Options available: 'visualContent'.

		options?: string
	}
}

oneview_ethernet_network :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	oneview_ethernet_network: {

		// List with Ethernet Network properties.

		data: string

		// Indicates the desired state for the Ethernet Network resource. - C(present) will ensure data properties are compliant with OneView. - C(absent) will remove the resource from OneView, if it exists. - C(default_bandwidth_reset) will reset the network connection template to the default.

		state?: string
	}
}

oneview_network_set :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	oneview_network_set: {

		// Indicates the desired state for the Network Set resource. - C(present) will ensure data properties are compliant with OneView. - C(absent) will remove the resource from OneView, if it exists.

		state?: string

		// List with the Network Set properties.

		data: string
	}
}

oneview_fc_network :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	oneview_fc_network: {

		// List with the Fibre Channel Network properties.

		data: string

		// Indicates the desired state for the Fibre Channel Network resource. C(present) will ensure data properties are compliant with OneView. C(absent) will remove the resource from OneView, if it exists.

		state?: string
	}
}

wakeonlan :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	wakeonlan: {

		// Network broadcast address to use for broadcasting magic Wake-on-LAN packet.

		broadcast?: string

		// MAC address to send Wake-on-LAN broadcast packet for.

		mac: string

		// UDP port to use for magic Wake-on-LAN packet.

		port?: string
	}
}

oneview_fc_network_info :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	oneview_fc_network_info: {

		name?: string

		// Fibre Channel Network name.
	}
}

oneview_fcoe_network :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	oneview_fcoe_network: {

		// List with FCoE Network properties.

		data: string

		// Indicates the desired state for the FCoE Network resource. C(present) will ensure data properties are compliant with OneView. C(absent) will remove the resource from OneView, if it exists.

		state?: string
	}
}

oneview_fcoe_network_info :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	oneview_fcoe_network_info: {

		name?: string

		// FCoE Network name.
	}
}

oneview_logical_interconnect_group :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	oneview_logical_interconnect_group: {

		// List with the Logical Interconnect Group properties.

		data: string

		// Indicates the desired state for the Logical Interconnect Group resource. C(absent) will remove the resource from OneView, if it exists. C(present) will ensure data properties are compliant with OneView.

		state?: string
	}
}

oneview_san_manager :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	oneview_san_manager: {

		// List with SAN Manager properties.

		data: string

		// Indicates the desired state for the Uplink Set resource. - C(present) ensures data properties are compliant with OneView. - C(absent) removes the resource from OneView, if it exists. - C(connection_information_set) updates the connection information for the SAN Manager. This operation is non-idempotent.

		state?: string
	}
}
