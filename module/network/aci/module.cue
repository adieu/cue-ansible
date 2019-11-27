package aci

mso_schema :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	mso_schema: {

		// The name of the schema.

		schema: string

		// A list of sites mapped to templates in this schema.

		sites?: [...]

		// Use C(present) or C(absent) for adding or removing.
		// Use C(query) for listing an object or multiple objects.

		state?: string

		// A list of templates for this schema.

		templates?: [...]
	}
}

mso_schema_template_externalepg :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	mso_schema_template_externalepg: {

		// The name as displayed on the MSO web interface.

		display_name?: string

		// The name of the external EPG to manage.

		externalepg?: string

		// The name of the schema.

		schema: string

		// Use C(present) or C(absent) for adding or removing.
		// Use C(query) for listing an object or multiple objects.

		state?: string

		// The name of the template.

		template: string

		// The VRF associated to this ANP.

		vrf?: {...}
	}
}

aci_epg_monitoring_policy :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	aci_epg_monitoring_policy: {

		// Use C(present) or C(absent) for adding or removing.
		// Use C(query) for listing an object or multiple objects.

		state?: string

		// The name of the tenant.

		tenant: string

		// Description for the monitoring policy.

		description?: string

		// The name of the monitoring policy.

		monitoring_policy: string
	}
}

aci_interface_policy_l2 :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	aci_interface_policy_l2: {

		// Determines if QinQ is disabled or if the port should be considered a core or edge port.
		// The APIC defaults to C(disabled) when unset during creation.

		qinq?: string

		// Use C(present) or C(absent) for adding or removing.
		// Use C(query) for listing an object or multiple objects.

		state?: string

		// Determines if Virtual Ethernet Port Aggregator is disabled or enabled.
		// The APIC defaults to C(no) when unset during creation.

		vepa?: bool

		// The scope of the VLAN.
		// The APIC defaults to C(global) when unset during creation.

		vlan_scope?: string

		// The description of the Layer 2 interface policy.

		description?: string

		// The name of the Layer 2 interface policy.

		l2_policy: string
	}
}

aci_filter :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	aci_filter: {

		// Description for the filter.

		description?: string

		// The name of the filter.

		filter: string

		// Use C(present) or C(absent) for adding or removing.
		// Use C(query) for listing an object or multiple objects.

		state?: string

		// The name of the tenant.

		tenant: string
	}
}

aci_interface_policy_leaf_policy_group :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	aci_interface_policy_leaf_policy_group: {

		// Choice of monitoring_policy to be used as part of the leaf policy group to be created.

		monitoring_policy?: string

		// Name of the leaf policy group to be added/deleted.

		policy_group?: string

		// Choice of priority_flow_control_policy to be used as part of the leaf policy group to be created.

		priority_flow_control_policy?: string

		// Use C(present) or C(absent) for adding or removing.
		// Use C(query) for listing an object or multiple objects.

		state?: string

		// Choice of fibre_channel_interface_policy to be used as part of the leaf policy group to be created.

		fibre_channel_interface_policy?: string

		// Choice of l2_interface_policy to be used as part of the leaf policy group to be created.

		l2_interface_policy?: string

		// Choice of lldp_policy to be used as part of the leaf policy group to be created.

		lldp_policy?: string

		// Choice of storm_control_interface_policy to be used as part of the leaf policy group to be created.

		storm_control_interface_policy?: string

		// Choice of stp_interface_policy to be used as part of the leaf policy group to be created.

		stp_interface_policy?: string

		// Choice of mcp_policy to be used as part of the leaf policy group to be created.

		mcp_policy?: string

		// Choice of port_security_policy to be used as part of the leaf policy group to be created.

		port_security_policy?: string

		// Choice of slow_drain_policy to be used as part of the leaf policy group to be created.

		slow_drain_policy?: string

		// Choice of link_level_policy to be used as part of the leaf policy group to be created.

		link_level_policy?: string

		// Choice of port_channel_policy to be used as part of the leaf policy group to be created.

		port_channel_policy?: string

		// Choice of cdp_policy to be used as part of the leaf policy group to be created.

		cdp_policy?: string

		// Choice of ingress_data_plane_policing_policy to be used as part of the leaf policy group to be created.

		ingress_data_plane_policing_policy?: string

		// Selector for the type of leaf policy group we want to create.
		// C(leaf) for Leaf Access Port Policy Group
		// C(link) for Port Channel (PC)
		// C(node) for Virtual Port Channel (VPC)

		lag_type: string

		// Choice of attached_entity_profile (AEP) to be used as part of the leaf policy group to be created.

		aep?: string

		// Description for the leaf policy group to be created.

		description?: string

		// Choice of egress_data_plane_policing_policy to be used as part of the leaf policy group to be created.

		egress_data_plane_policing_policy?: string
	}
}

aci_epg :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	aci_epg: {

		// Use C(present) or C(absent) for adding or removing.
		// Use C(query) for listing an object or multiple objects.

		state?: string

		// Name of the bridge domain being associated with the EPG.

		bd?: string

		// The forwarding control used by the EPG.
		// The APIC defaults to C(none) when unset during creation.

		fwd_control?: string

		// Whether ot not the EPG is part of the Preferred Group and can communicate without contracts.
		// This is very convenient for migration scenarios, or when ACI is used for network automation but not for policy.
		// The APIC defaults to C(no) when unset during creation.

		preferred_group?: bool

		// The Intra EPG Isolation.
		// The APIC defaults to C(unenforced) when unset during creation.

		intra_epg_isolation?: string

		// The QoS class.
		// The APIC defaults to C(unspecified) when unset during creation.

		priority?: string

		// Name of an existing tenant.

		tenant?: string

		// Name of an existing application network profile, that will contain the EPGs.

		ap: string

		// Description for the EPG.

		description?: string

		// Name of the end point group.

		epg: string
	}
}

aci_l3out_extsubnet :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	aci_l3out_extsubnet: {

		// Use C(present) or C(absent) for adding or removing.
		// Use C(query) for listing an object or multiple objects.

		state?: string

		// Name of External Subnet being created.

		subnet_name?: string

		// Name of an existing tenant.

		tenant: string

		// Description for the External Subnet.

		description?: string

		// Name of an existing ExtEpg.

		extepg: string

		// Name of an existing L3Out.

		l3out: string

		// The network address for the Subnet.

		network: string

		// Determines the scope of the Subnet.
		// The C(export-rtctrl) option controls which external networks are advertised out of the fabric using route-maps and IP prefix-lists.
		// The C(import-security) option classifies for the external EPG. The rules and contracts defined in this external EPG apply to networks matching this subnet.
		// The C(shared-rtctrl) option controls which external prefixes are advertised to other tenants for shared services.
		// The C(shared-security) option configures the classifier for the subnets in the VRF where the routes are leaked.
		// The APIC defaults to C(import-security) when unset during creation.

		scope?: [...]
	}
}

aci_static_binding_to_epg :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	aci_static_binding_to_epg: {

		// The switch ID(s) that the C(interface) belongs to.
		// When C(interface_type) is C(switch_port), C(port_channel), or C(fex), then C(leafs) is a string of the leaf ID.
		// When C(interface_type) is C(vpc), then C(leafs) is a list with both leaf IDs.
		// The C(leafs) value is usually something like '101' or '101-102' depending on C(connection_type).

		leafs?: [...]

		// The pod number part of the tDn.
		// C(pod_id) is usually an integer below C(10).

		pod_id?: int

		// Use C(present) or C(absent) for adding or removing.
		// Use C(query) for listing an object or multiple objects.

		state?: string

		// Name of an existing tenant.

		tenant?: string

		// The encapsulation ID associating the C(epg) with the interface path.
		// This acts as the secondary C(encap_id) when using micro-segmentation.
		// Accepted values are any valid encap ID for specified encap, currently ranges between C(1) and C(4096).

		encap_id?: int

		// The name of the end point group.

		epg?: string

		// Name of an existing application network profile, that will contain the EPGs.

		ap?: string

		// The C(interface) string value part of the tDn.
		// Usually a policy group like C(test-IntPolGrp) or an interface of the following format C(1/7) depending on C(interface_type).

		interface?: string

		// The Deployment Immediacy of Static EPG on PC, VPC or Interface.
		// The APIC defaults to C(lazy) when unset during creation.

		deploy_immediacy?: string

		// Description for the static path to EPG binding.

		description?: string

		// The type of interface for the static EPG deployment.

		interface_type?: string

		// Determines the primary encapsulation ID associating the C(epg) with the interface path when using micro-segmentation.
		// Accepted values are any valid encap ID for specified encap, currently ranges between C(1) and C(4096).

		primary_encap_id?: int

		// The C(extpaths) integer value part of the tDn.
		// C(extpaths) is only used if C(interface_type) is C(fex).
		// Usually something like C(1011).

		extpaths?: int

		// Determines how layer 2 tags will be read from and added to frames.
		// Values C(802.1p) and C(native) are identical.
		// Values C(access) and C(untagged) are identical.
		// Values C(regular), C(tagged) and C(trunk) are identical.
		// The APIC defaults to C(trunk) when unset during creation.

		interface_mode?: string
	}
}

aci_vrf :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	aci_vrf: {

		// Determines if the policy should be enforced by the fabric on ingress or egress.

		policy_control_direction?: string

		// Determines if the fabric should enforce contract policies to allow routing and packet forwarding.

		policy_control_preference?: string

		// Use C(present) or C(absent) for adding or removing.
		// Use C(query) for listing an object or multiple objects.

		state?: string

		// The name of the Tenant the VRF should belong to.

		tenant?: string

		// The name of the VRF.

		vrf?: string

		// The description for the VRF.

		description?: string
	}
}

mso_schema_site_anp :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	mso_schema_site_anp: {

		// The name of the ANP to manage.

		anp?: string

		// The name of the schema.

		schema: string

		// The name of the site.

		site: string

		// Use C(present) or C(absent) for adding or removing.
		// Use C(query) for listing an object or multiple objects.

		state?: string

		// The name of the template.

		template: string
	}
}

mso_schema_template_l3out :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	mso_schema_template_l3out: {

		// The VRF associated to this L3out.

		vrf?: {...}

		// The name as displayed on the MSO web interface.

		display_name?: string

		// The name of the l3out to manage.

		l3out?: string

		// The name of the schema.

		schema: string

		// Use C(present) or C(absent) for adding or removing.
		// Use C(query) for listing an object or multiple objects.

		state?: string

		// The name of the template.

		template: string
	}
}

aci_ap :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	aci_ap: {

		// The name of the application network profile.

		ap: string

		// Description for the AP.

		description?: string

		// Use C(present) or C(absent) for adding or removing.
		// Use C(query) for listing an object or multiple objects.

		state?: string

		// The name of an existing tenant.

		tenant: string
	}
}

aci_contract_subject :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	aci_contract_subject: {

		// Description for the contract subject.

		description?: string

		// The target DSCP.
		// The APIC defaults to C(unspecified) when unset during creation.

		dscp?: string

		// Determines if the APIC should reverse the src and dst ports to allow the return traffic back, since ACI is stateless filter.
		// The APIC defaults to C(yes) when unset during creation.

		reverse_filter?: bool

		// Use C(present) or C(absent) for adding or removing.
		// Use C(query) for listing an object or multiple objects.

		state?: string

		// The name of the tenant.

		tenant?: string

		// The match criteria across consumers.
		// The APIC defaults to C(at_least_one) when unset during creation.

		consumer_match?: string

		// The name of the Contract.

		contract?: string

		// The contract subject name.

		subject?: string

		// The QoS class.
		// The APIC defaults to C(unspecified) when unset during creation.

		priority?: string

		// The match criteria across providers.
		// The APIC defaults to C(at_least_one) when unset during creation.

		provider_match?: string
	}
}

mso_tenant :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	mso_tenant: {

		// A list of associated sites for this tenant.
		// Using this property will replace any existing associated sites.

		sites?: [...]

		// Use C(present) or C(absent) for adding or removing.
		// Use C(query) for listing an object or multiple objects.

		state?: string

		// The name of the tenant.

		tenant: string

		// A list of associated users for this tenant.
		// Using this property will replace any existing associated users.

		users?: [...]

		// The description for this tenant.

		description?: string

		// The name of the tenant to be displayed in the web UI.

		display_name: string
	}
}

aci_access_sub_port_block_to_access_port :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	aci_access_sub_port_block_to_access_port: {

		// The beginning (from-range) of the card range block for the leaf access port block.

		from_card?: string

		// The beginning (from-range) of the sub port range block for the leaf access port block.

		from_sub_port: string

		// The name of the Fabric access policy leaf interface profile.

		leaf_interface_profile: string

		// The end (to-range) of the port range block for the leaf access port block.

		to_port: string

		// The end (to-range) of the sub port range block for the leaf access port block.

		to_sub_port: string

		// The name of the Fabric access policy leaf interface profile access port selector.

		access_port_selector: string

		// The beginning (from-range) of the port range block for the leaf access port block.

		from_port: string

		// The name of the Fabric access policy leaf interface profile access port block.

		leaf_port_blk: string

		// The description to assign to the C(leaf_port_blk).

		leaf_port_blk_description?: string

		// Use C(present) or C(absent) for adding or removing.
		// Use C(query) for listing an object or multiple objects.

		state?: string

		// The end (to-range) of the card range block for the leaf access port block.

		to_card?: string
	}
}

aci_bd_to_l3out :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	aci_bd_to_l3out: {

		// The name of the Bridge Domain.

		bd?: string

		// The name of the l3out to associate with th Bridge Domain.

		l3out?: string

		// Use C(present) or C(absent) for adding or removing.
		// Use C(query) for listing an object or multiple objects.

		state?: string

		// The name of the Tenant.

		tenant?: string
	}
}

aci_encap_pool_range :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	aci_encap_pool_range: {

		// Description for the pool range.

		description?: string

		// The name of the pool that the range should be assigned to.

		pool?: string

		// The encap type of C(pool).

		pool_type: string

		// Use C(present) or C(absent) for adding or removing.
		// Use C(query) for listing an object or multiple objects.

		state?: string

		// The method used for allocating encaps to resources.
		// Only vlan and vsan support allocation modes.

		allocation_mode?: string

		// The method used for allocating encaps to resources.
		// Only vlan and vsan support allocation modes.

		pool_allocation_mode?: string

		// The end of encap range.

		range_end?: int

		// The name to give to the encap range.

		range_name?: string

		// The start of the encap range.

		range_start?: int
	}
}

aci_interface_policy_cdp :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	aci_interface_policy_cdp: {

		// Enable or Disable CDP state.
		// The APIC defaults to C(yes) when unset during creation.

		admin_state?: bool

		// The CDP interface policy name.

		cdp_policy: string

		// The description for the CDP interface policy name.

		description?: string

		// Use C(present) or C(absent) for adding or removing.
		// Use C(query) for listing an object or multiple objects.

		state?: string
	}
}

mso_label :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	mso_label: {

		// The name of the label.

		label: string

		// Use C(present) or C(absent) for adding or removing.
		// Use C(query) for listing an object or multiple objects.

		state?: string

		// The type of the label.

		type?: string
	}
}

mso_schema_template :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	mso_schema_template: {

		// The tenant used for this template.

		tenant: string

		// The name as displayed on the MSO web interface.

		display_name?: string

		// The name of the schema.

		schema: string

		// Use C(present) or C(absent) for adding or removing.
		// Use C(query) for listing an object or multiple objects.

		state?: string

		// The name of the template.

		template?: string
	}
}

aci_access_port_block_to_access_port :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	aci_access_port_block_to_access_port: {

		// The beginning (from-range) of the card range block for the leaf access port block.

		from_card?: string

		// The beginning (from-range) of the port range block for the leaf access port block.

		from_port: string

		// The name of the Fabric access policy leaf interface profile.

		leaf_interface_profile: string

		// The name of the Fabric access policy leaf interface profile access port block.

		leaf_port_blk: string

		// Use C(present) or C(absent) for adding or removing.
		// Use C(query) for listing an object or multiple objects.

		state?: string

		// The name of the Fabric access policy leaf interface profile access port selector.

		access_port_selector: string

		// The end (to-range) of the card range block for the leaf access port block.

		to_card?: string

		// The end (to-range) of the port range block for the leaf access port block.

		to_port: string

		// The description to assign to the C(leaf_port_blk).

		leaf_port_blk_description?: string
	}
}

aci_access_port_to_interface_policy_leaf_profile :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	aci_access_port_to_interface_policy_leaf_profile: {

		// The name of the Fabric access policy leaf interface profile access port selector.

		access_port_selector: string

		// B(Deprecated)
		// Starting with Ansible 2.8 we recommend using the module L(aci_access_port_block_to_access_port, aci_access_port_block_to_access_port.html).
		// The parameter will be removed in Ansible 2.12.
		// HORIZONTALLINE
		// The beginning (from-range) of the card range block for the leaf access port block.

		from_card?: string

		// B(Deprecated)
		// Starting with Ansible 2.8 we recommend using the module L(aci_access_port_block_to_access_port, aci_access_port_block_to_access_port.html).
		// The parameter will be removed in Ansible 2.12.
		// HORIZONTALLINE
		// The beginning (from-range) of the port range block for the leaf access port block.

		from_port: string

		// B(Deprecated)
		// Starting with Ansible 2.8 we recommend using the module L(aci_access_port_block_to_access_port, aci_access_port_block_to_access_port.html).
		// The parameter will be removed in Ansible 2.12.
		// HORIZONTALLINE
		// The description to assign to the C(leaf_port_blk)

		leaf_port_blk_description?: string

		// The name of the fabric access policy group to be associated with the leaf interface profile interface selector.

		policy_group?: string

		// Use C(present) or C(absent) for adding or removing.
		// Use C(query) for listing an object or multiple objects.

		state?: string

		// B(Deprecated)
		// Starting with Ansible 2.8 we recommend using the module L(aci_access_port_block_to_access_port, aci_access_port_block_to_access_port.html).
		// The parameter will be removed in Ansible 2.12.
		// HORIZONTALLINE
		// The end (to-range) of the port range block for the leaf access port block.

		to_port: string

		// The description to assign to the C(access_port_selector)

		description?: string

		// The type of interface for the static EPG deployment.

		interface_type?: string

		// The name of the Fabric access policy leaf interface profile.

		leaf_interface_profile: string

		// B(Deprecated)
		// Starting with Ansible 2.8 we recommend using the module L(aci_access_port_block_to_access_port, aci_access_port_block_to_access_port.html).
		// The parameter will be removed in Ansible 2.12.
		// HORIZONTALLINE
		// The name of the Fabric access policy leaf interface profile access port block.

		leaf_port_blk: string

		// B(Deprecated)
		// Starting with Ansible 2.8 we recommend using the module L(aci_access_port_block_to_access_port, aci_access_port_block_to_access_port.html).
		// The parameter will be removed in Ansible 2.12.
		// HORIZONTALLINE
		// The end (to-range) of the card range block for the leaf access port block.

		to_card?: string
	}
}

mso_user :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	mso_user: {

		// The email address of the user.
		// This parameter is required when creating new users.

		email?: string

		// The first name of the user.
		// This parameter is required when creating new users.

		first_name?: string

		// The last name of the user.
		// This parameter is required when creating new users.

		last_name?: string

		// The phone number of the user.
		// This parameter is required when creating new users.

		phone?: string

		// Use C(present) or C(absent) for adding or removing.
		// Use C(query) for listing an object or multiple objects.

		state?: string

		// The name of the user.

		user: string

		// The status of the user account.

		account_status?: string

		// The domain this user belongs to.
		// When creating new users, this defaults to C(Local).

		domain?: string

		// The roles for this user.

		roles?: [...]

		// The password of the user.

		user_password?: string
	}
}

mso_schema_template_anp_epg :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	mso_schema_template_anp_epg: {

		// The subnets associated to this ANP.

		subnets?: [...]

		// The name of the template.

		template: string

		// Whether this is a USEG EPG.

		useg_epg?: bool

		// Whether this EPG is added to preferred group or not.
		// When not specified, this parameter defaults to C(no).

		preferred_group?: bool

		// Use C(present) or C(absent) for adding or removing.
		// Use C(query) for listing an object or multiple objects.

		state?: string

		// The name as displayed on the MSO web interface.

		display_name?: string

		// The name of the EPG to manage.

		epg?: string

		// Whether intersite multicast source is enabled.
		// When not specified, this parameter defaults to C(no).

		intersite_multicaste_source?: bool

		// Whether intra EPG isolation is enforced.
		// When not specified, this parameter defaults to C(unenforced).

		intra_epg_isolation?: string

		// The name of the schema.

		schema: string

		// The VRF associated to this ANP.

		vrf?: {...}

		// The name of the ANP.

		anp: string

		// The BD associated to this ANP.

		bd?: {...}
	}
}

mso_schema_template_bd_subnet :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	mso_schema_template_bd_subnet: {

		// The IP range in CIDR notation.

		subnet: string

		// The name of the template to change.

		template: string

		// The scope of the subnet.

		scope?: string

		// Use C(present) or C(absent) for adding or removing.
		// Use C(query) for listing an object or multiple objects.

		state?: string

		// Whether this subnet has a default gateway.

		no_default_gateway?: bool

		// The name of the schema.

		schema: string

		// Whether this subnet is shared between VRFs.

		shared?: bool

		// The name of the BD to manage.

		bd: string

		// The description of this subnet.

		description?: string
	}
}

aci_interface_selector_to_switch_policy_leaf_profile :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	aci_interface_selector_to_switch_policy_leaf_profile: {

		// Name of Interface Profile Selector to be added and associated with the Leaf Profile.

		interface_selector?: string

		// Name of the Leaf Profile to which we add a Selector.

		leaf_profile?: string

		// Use C(present) or C(absent) for adding or removing.
		// Use C(query) for listing an object or multiple objects.

		state?: string
	}
}

aci_switch_policy_vpc_protection_group :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	aci_switch_policy_vpc_protection_group: {

		// The Explicit vPC Protection Group ID.

		protection_group_id: int

		// Use C(present) or C(absent) for adding or removing.
		// Use C(query) for listing an object or multiple objects.

		state?: string

		// The ID of the first Leaf Switch for the Explicit vPC Protection Group.

		switch_1_id: int

		// The ID of the Second Leaf Switch for the Explicit vPC Protection Group.

		switch_2_id: int

		// The vPC domain policy to be associated with the Explicit vPC Protection Group.

		vpc_domain_policy?: string

		// The name of the Explicit vPC Protection Group.

		protection_group: string
	}
}

aci_taboo_contract :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	aci_taboo_contract: {

		// Use C(present) or C(absent) for adding or removing.
		// Use C(query) for listing an object or multiple objects.

		state?: string

		// The name of the Taboo Contract.

		taboo_contract: string

		// The name of the tenant.

		tenant: string

		// The description for the Taboo Contract.

		description?: string

		// The scope of a service contract.
		// The APIC defaults to C(context) when unset during creation.

		scope?: string
	}
}

aci_tenant_span_src_group_to_dst_group :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	aci_tenant_span_src_group_to_dst_group: {

		// The description for Span source group to destination group binding.

		description?: string

		// The Span destination group to associate with the source group.

		dst_group?: string

		// The name of the Span source group.

		src_group?: string

		// Use C(present) or C(absent) for adding or removing.
		// Use C(query) for listing an object or multiple objects.

		state?: string

		// The name of the Tenant.

		tenant?: string
	}
}

aci_vmm_credential :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	aci_vmm_credential: {

		// Description for the tenant.

		description?: string

		// Name of the virtual domain profile.

		domain?: string

		// Name of the credential profile.

		name?: string

		// Use C(present) or C(absent) for adding or removing.
		// Use C(query) for listing an object or multiple objects.

		state?: string

		// The VM platform for VMM Domains.
		// Support for Kubernetes was added in ACI v3.0.
		// Support for CloudFoundry, OpenShift and Red Hat was added in ACI v3.1.

		vm_provider?: string

		// VMM controller password.

		credential_password?: string

		// VMM controller username.

		credential_username?: string
	}
}

mso_schema_site_anp_epg_domain :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	mso_schema_site_anp_epg_domain: {

		// Specifies microsegmentation is enabled or not. This attribute can only be used with vmmDomain domain association.

		allow_micro_segmentation?: bool

		// The name of the ANP.

		anp?: string

		// Virtual LAN type for port encap. This attribute can only be used with vmmDomain domain association.

		port_encap_vlan?: int

		// Virtual LAN type for port encap. This attribute can only be used with vmmDomain domain association.

		port_encap_vlan_type?: string

		// The name of the site.

		site: string

		// EPG enhanced lagpolicy name. This attribute can only be used with vmmDomain domain association.

		enhanced_lagpolicy_name?: string

		// Use C(present) or C(absent) for adding or removing.
		// Use C(query) for listing an object or multiple objects.

		state?: string

		// Which switch type to use with this domain association. This attribute can only be used with vmmDomain domain association.

		switch_type?: string

		// Which VLAN enacap mode to use. This attribute can only be used with vmmDomain domain association.

		vlan_encap_mode?: string

		// The deployment immediacy of the domain.
		// C(immediate) means B(Deploy immediate).
		// C(lazy) means B(deploy on demand).

		deployment_immediacy?: string

		// The name of the EPG.

		epg?: string

		// Virtual LAN type for microsegmentation. This attribute can only be used with vmmDomain domain association.

		micro_seg_vlan_type?: string

		// Determines when the policies should be resolved and available.
		// Defaults to C(lazy) when unset during creation.

		resolution_immediacy?: string

		// The name of the schema.

		schema: string

		// The name of the template.

		template: string

		// The type of domain to associate.

		domain_association_type?: string

		// The domain profile name.

		domain_profile?: string

		// Distinguished name of EPG lagpolicy. This attribute can only be used with vmmDomain domain association.

		enhanced_lagpolicy_dn?: string

		// Virtual LAN for microsegmentation. This attribute can only be used with vmmDomain domain association.

		micro_seg_vlan?: int

		// Which switching mode to use with this domain association. This attribute can only be used with vmmDomain domain association.

		switching_mode?: string
	}
}

aci_config_rollback :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	aci_config_rollback: {

		// The export policy that the C(compare_snapshot) is associated to.

		compare_export_policy?: string

		// The name of the snapshot to compare with C(snapshot).

		compare_snapshot?: string

		// The description for the Import Policy.

		description?: string

		// Determines how the current and snapshot configuration should be compared for replacement.
		// The APIC defaults to C(replace) when unset.

		import_type?: string

		// The name of the snapshot to rollback to, or the base snapshot to use for comparison.
		// The C(aci_snapshot) module can be used to query the list of available snapshots.

		snapshot: string

		// The export policy that the C(snapshot) is associated to.

		export_policy: string

		// Determines if the APIC should fail the rollback if unable to decrypt secured data.
		// The APIC defaults to C(yes) when unset.

		fail_on_decrypt?: bool

		// Determines how the import should be handled by the APIC.
		// The APIC defaults to C(atomic) when unset.

		import_mode?: string

		// The name of the Import Policy to use for config rollback.

		import_policy?: string

		// Use C(preview) for previewing the diff between two snapshots.
		// Use C(rollback) for reverting the configuration to a previous snapshot.

		state?: string
	}
}

aci_epg_to_domain :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	aci_epg_to_domain: {

		// Name of the physical or virtual domain being associated with the EPG.

		domain?: string

		// Specify whether the Domain is a physical (phys), a virtual (vmm) or an L2 external domain association (l2dom).

		domain_type?: string

		// The VLAN encapsulation for the EPG when binding a VMM Domain with static C(encap_mode).
		// This acts as the secondary encap when using useg.
		// Accepted values range between C(1) and C(4096).

		encap?: int

		// Determines the primary VLAN ID when using useg.
		// Accepted values range between C(1) and C(4096).

		primary_encap?: int

		// Switching Mode used by the switch

		switching_mode?: string

		// Determines when the policy is pushed to hardware Policy CAM.
		// The APIC defaults to C(lazy) when unset during creation.

		deploy_immediacy?: string

		// Use C(present) or C(absent) for adding or removing.
		// Use C(query) for listing an object or multiple objects.

		state?: string

		// Name of an existing tenant.

		tenant?: string

		// Determines if netflow should be enabled.
		// The APIC defaults to C(no) when unset during creation.

		netflow?: bool

		// The VM platform for VMM Domains.
		// Support for Kubernetes was added in ACI v3.0.
		// Support for CloudFoundry, OpenShift and Red Hat was added in ACI v3.1.

		vm_provider?: string

		// Name of the end point group.

		epg?: string

		// Name of an existing application network profile, that will contain the EPGs.

		ap?: string

		// The encapsulation method to be used.
		// The APIC defaults to C(auto) when unset during creation.
		// If vxlan is selected, switching_mode must be "AVE".

		encap_mode?: string

		// Determines when the policies should be resolved and available.
		// The APIC defaults to C(lazy) when unset during creation.

		resolution_immediacy?: string

		// Allows micro-segmentation.
		// The APIC defaults to C(encap) when unset during creation.

		allow_useg?: string
	}
}

mso_schema_template_filter_entry :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	mso_schema_template_filter_entry: {

		// The source port range to.

		source_to?: string

		// Whether this filter entry is stateful.

		stateful?: bool

		// A list of TCP session rules.

		tcp_session_rules?: [...]

		// The name of the template.

		template: string

		// The description of this filer entry.

		description?: string

		// The IP protocol to use for this filter entry.

		ip_protocol?: string

		// The ethernet type to use for this filter entry.

		ethertype?: string

		// The name of the filter to manage.

		filter: string

		// Use C(present) or C(absent) for adding or removing.
		// Use C(query) for listing an object or multiple objects.

		state?: string

		// The destination port range from.

		destination_from?: string

		// The destination port range to.

		destination_to?: string

		// Whether this filter entry only matches fragments.

		fragments_only?: bool

		// The name as displayed on the MSO web interface.

		display_name?: string

		// The name as displayed on the MSO web interface.

		filter_display_name?: string

		// The name of the schema.

		schema: string

		// The source port range from.

		source_from?: string

		// The ARP flag to use for this filter entry.

		arp_flag?: string

		// The filter entry name to manage.

		entry?: string
	}
}

mso_schema_site_bd_l3out :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	mso_schema_site_bd_l3out: {

		// The name of the BD.

		bd?: string

		// The name of the l3out.

		l3out?: string

		// The name of the schema.

		schema: string

		// The name of the site.

		site: string

		// Use C(present) or C(absent) for adding or removing.
		// Use C(query) for listing an object or multiple objects.

		state?: string

		// The name of the template.

		template: string
	}
}

mso_schema_template_bd :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	mso_schema_template_bd: {

		// Whether to enable L2 stretch.

		layer2_stretch?: bool

		// Layer2 unknown unicast.

		layer2_unknown_unicast?: string

		// The name of the schema.

		schema: string

		// Use C(present) or C(absent) for adding or removing.
		// Use C(query) for listing an object or multiple objects.

		state?: string

		// The name of the template.

		template: string

		// The VRF associated to this BD. This is required only when creating a new BD.

		vrf?: {...}

		// The name of the BD to manage.

		bd?: string

		// The name as displayed on the MSO web interface.

		display_name?: string

		// Whether to allow intersite BUM traffic.

		intersite_bum_traffic?: bool

		// Whether to enable L3 multicast.

		layer3_multicast?: bool

		// Whether to optimize WAN bandwidth.

		optimize_wan_bandwidth?: bool

		// The subnets associated to this BD.

		subnets?: [...]
	}
}

mso_schema_site_bd_subnet :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	mso_schema_site_bd_subnet: {

		// The description of this subnet.

		description?: string

		// The name of the schema.

		schema: string

		// The scope of the subnet.

		scope?: string

		// Whether this subnet is shared between VRFs.

		shared?: bool

		// The name of the site.

		site: string

		// Use C(present) or C(absent) for adding or removing.
		// Use C(query) for listing an object or multiple objects.

		state?: string

		// The IP range in CIDR notation.

		subnet: string

		// The name of the BD.

		bd?: string

		// The name of the template.

		template: string

		// Whether this subnet has a default gateway.

		no_default_gateway?: bool
	}
}

mso_schema_site_vrf :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	mso_schema_site_vrf: {

		// The name of the schema.

		schema: string

		// The name of the site.

		site: string

		// Use C(present) or C(absent) for adding or removing.
		// Use C(query) for listing an object or multiple objects.

		state?: string

		// The name of the template.

		template: string

		// The name of the VRF to manage.

		vrf?: string
	}
}

mso_schema_template_external_epg_contract :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	mso_schema_template_external_epg_contract: {

		// Use C(present) or C(absent) for adding or removing.
		// Use C(query) for listing an object or multiple objects.

		state?: string

		// The name of the template to change.

		template: string

		// A contract associated to this EPG.

		contract?: {...}

		// The name of the EPG to manage.

		external_epg: string

		// The name of the schema.

		schema: string
	}
}

mso_schema_template_external_epg_subnet :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	mso_schema_template_external_epg_subnet: {

		// The name of the schema.

		schema: string

		// The scope of the subnet.

		scope?: [...]

		// Use C(present) or C(absent) for adding or removing.
		// Use C(query) for listing an object or multiple objects.

		state?: string

		// The IP range in CIDR notation.

		subnet: string

		// The name of the template to change.

		template: string

		// The aggregate option for the subnet.

		aggregate?: [...]

		// The name of the External EPG to manage.

		external_epg: string
	}
}

aci_firmware_source :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	aci_firmware_source: {

		// The firmware URL for the image(s) on the source.

		url?: string

		// The Firmware password or key string.

		url_password?: string

		// The Firmware download protocol.

		url_protocol?: string

		// The username for the source.

		url_username?: string

		// Polling interval in minutes.

		polling_interval?: int

		// The identifying name for the outside source of images, such as an HTTP or SCP server.

		source: string

		// Use C(present) or C(absent) for adding or removing.
		// Use C(query) for listing an object or multiple objects.

		state?: string
	}
}

aci_tenant_span_src_group :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	aci_tenant_span_src_group: {

		// The Span destination group to associate with the source group.

		dst_group?: string

		// The name of the Span source group.

		src_group?: string

		// Use C(present) or C(absent) for adding or removing.
		// Use C(query) for listing an object or multiple objects.

		state?: string

		// The name of the Tenant.

		tenant?: string

		// Enable or disable the span sources.
		// The APIC defaults to C(yes) when unset during creation.

		admin_state?: bool

		// The description for Span source group.

		description?: string
	}
}

aci_maintenance_policy :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	aci_maintenance_policy: {

		// Will trigger an immediate upgrade for nodes if adminst is set to triggered.

		adminst?: string

		// Whether the system will bring down the nodes gracefully during an upgrade, which reduces traffic lost.
		// The APIC defaults to C(no) when unset during creation.

		graceful?: bool

		// To check whether compatibility checks should be ignored
		// The APIC defaults to C(no) when unset during creation.

		ignoreCompat?: bool

		// The name for the maintenance policy.

		name: string

		// Whether the system pauses on error or just continues through it.

		runmode?: string

		// The name of scheduler that is applied to the policy.

		scheduler: string

		// Use C(present) or C(absent) for adding or removing.
		// Use C(query) for listing an object or multiple objects.

		state?: string
	}
}

mso_schema_site_anp_epg :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	mso_schema_site_anp_epg: {

		// The name of the schema.

		schema: string

		// The name of the site.

		site: string

		// Use C(present) or C(absent) for adding or removing.
		// Use C(query) for listing an object or multiple objects.

		state?: string

		// The name of the template.

		template: string

		// The name of the ANP.

		anp?: string

		// The name of the EPG to manage.

		epg?: string
	}
}

mso_schema_site_vrf_region_cidr :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	mso_schema_site_vrf_region_cidr: {

		// The name of the site.

		site: string

		// Use C(present) or C(absent) for adding or removing.
		// Use C(query) for listing an object or multiple objects.

		state?: string

		// The name of the template.

		template: string

		// The name of the VRF.

		vrf?: string

		// The name of the region CIDR to manage.

		cidr?: string

		// Whether this is the primary CIDR.

		primary?: bool

		// The name of the region.

		region?: string

		// The name of the schema.

		schema: string
	}
}

mso_schema_template_anp :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	mso_schema_template_anp: {

		// The name of the ANP to manage.

		anp?: string

		// The name as displayed on the MSO web interface.

		display_name?: string

		// The name of the schema.

		schema: string

		// Use C(present) or C(absent) for adding or removing.
		// Use C(query) for listing an object or multiple objects.

		state?: string

		// The name of the template.

		template: string
	}
}

mso_site :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	mso_site: {

		// The name of the site.

		site: string

		// Use C(present) or C(absent) for adding or removing.
		// Use C(query) for listing an object or multiple objects.

		state?: string

		// A list of URLs to reference the APICs.

		urls?: [...]

		// The password for the APICs.

		apic_password: string

		// The site ID of the APICs.

		apic_site_id: string

		// The username for the APICs.

		apic_username: string

		// The labels for this site.
		// Labels that do not already exist will be automatically created.

		labels?: [...]

		// Location of the site.

		location?: {...}
	}
}

aci_domain :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	aci_domain: {

		// The VM platform for VMM Domains.
		// Support for Kubernetes was added in ACI v3.0.
		// Support for CloudFoundry, OpenShift and Red Hat was added in ACI v3.1.

		vm_provider?: string

		// The virtual switch to use for vmm domains.
		// The APIC defaults to C(default) when unset during creation.

		vswitch?: string

		// Name of the physical, virtual, bridged routed or FC domain profile.

		domain?: string

		// The type of domain profile.
		// C(fc): The FC domain profile is a policy pertaining to single FC Management domain
		// C(l2dom): The external bridged domain profile is a policy for managing L2 bridged infrastructure bridged outside the fabric.
		// C(l3dom): The external routed domain profile is a policy for managing L3 routed infrastructure outside the fabric.
		// C(phys): The physical domain profile stores the physical resources and encap resources that should be used for EPGs associated with this domain.
		// C(vmm): The VMM domain profile is a policy for grouping VM controllers with similar networking policy requirements.

		domain_type?: string

		// The target Differentiated Service (DSCP) value.
		// The APIC defaults to C(unspecified) when unset during creation.

		dscp?: string

		// The layer 2 encapsulation protocol to use with the virtual switch.

		encap_mode?: string

		// The multicast IP address to use for the virtual switch.

		multicast_address?: string

		// Use C(present) or C(absent) for adding or removing.
		// Use C(query) for listing an object or multiple objects.

		state?: string
	}
}

aci_l3out_route_tag_policy :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	aci_l3out_route_tag_policy: {

		// The description for the route tag policy.

		description?: string

		// The name of the route tag policy.

		rtp: string

		// Use C(present) or C(absent) for adding or removing.
		// Use C(query) for listing an object or multiple objects.

		state?: string

		// The value of the route tag.
		// Accepted values range between C(0) and C(4294967295).
		// The APIC defaults to C(4294967295) when unset during creation.

		tag?: int

		// The name of the tenant.

		tenant: string
	}
}

mso_schema_site :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	mso_schema_site: {

		// The name of the schema.

		schema: string

		// The name of the site to manage.

		site: string

		// Use C(present) or C(absent) for adding or removing.
		// Use C(query) for listing an object or multiple objects.

		state?: string

		// The name of the template.

		template: string
	}
}

mso_schema_site_anp_epg_subnet :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	mso_schema_site_anp_epg_subnet: {

		// Whether this subnet is shared between VRFs.

		shared?: bool

		// The name of the site.

		site: string

		// The name of the template.

		template: string

		// Use C(present) or C(absent) for adding or removing.
		// Use C(query) for listing an object or multiple objects.

		state?: string

		// The IP range in CIDR notation.

		subnet: string

		// The name of the ANP.

		anp?: string

		// The description of this subnet.

		description?: string

		// The name of the EPG.

		epg?: string

		// Whether this subnet has a default gateway.

		no_default_gateway?: bool

		// The name of the schema.

		schema: string

		// The scope of the subnet.

		scope?: string
	}
}

aci_interface_policy_fc :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	aci_interface_policy_fc: {

		// Use C(present) or C(absent) for adding or removing.
		// Use C(query) for listing an object or multiple objects.

		state?: string

		// The description of the Fiber Channel interface policy.

		description?: string

		// The name of the Fiber Channel interface policy.

		fc_policy: string

		// The Port Mode to use.
		// The APIC defaults to C(f) when unset during creation.

		port_mode?: string
	}
}

aci_maintenance_group_node :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	aci_maintenance_group_node: {

		// The node to be added to the maintenance group.
		// The value equals the nodeid.

		node: string

		// Use C(present) or C(absent) for adding or removing.
		// Use C(query) for listing an object or multiple objects.

		state?: string

		// The maintenance group name that you want to add the node to.

		group: string
	}
}

aci_switch_policy_leaf_profile :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	aci_switch_policy_leaf_profile: {

		// Description for the Leaf Profile.

		description?: string

		// The name of the Leaf Profile.

		leaf_profile?: string

		// Use C(present) or C(absent) for adding or removing.
		// Use C(query) for listing an object or multiple objects.

		state?: string
	}
}

mso_schema_site_anp_epg_staticleaf :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	mso_schema_site_anp_epg_staticleaf: {

		// The VLAN id of the static leaf.

		vlan?: int

		// The name of the ANP.

		anp?: string

		// The path of the static leaf.

		leaf?: string

		// The pod of the static leaf.

		pod?: string

		// Use C(present) or C(absent) for adding or removing.
		// Use C(query) for listing an object or multiple objects.

		state?: string

		// The name of the template.

		template: string

		// The name of the EPG.

		epg?: string

		// The name of the schema.

		schema: string

		// The name of the site.

		site: string
	}
}

mso_schema_site_bd :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	mso_schema_site_bd: {

		// Use C(present) or C(absent) for adding or removing.
		// Use C(query) for listing an object or multiple objects.

		state?: string

		// The name of the template.

		template: string

		// The name of the BD to manage.

		bd?: string

		// Whether host-based routing is enabled.

		host_route?: bool

		// The name of the schema.

		schema: string

		// The name of the site.

		site: string
	}
}

aci_bd_subnet :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	aci_bd_subnet: {

		// The Route Profile to the associate with the Subnet.

		route_profile?: string

		// The L3 Out that contains the associated Route Profile.

		route_profile_l3_out?: string

		// The name of the Bridge Domain.

		bd?: string

		// The description for the Subnet.

		description?: string

		// The IPv6 Neighbor Discovery Prefix Policy to associate with the Subnet.

		nd_prefix_policy?: string

		// Determines the Subnet's Control State.
		// The C(querier_ip) option is used to treat the gateway_ip as an IGMP querier source IP.
		// The C(nd_ra) option is used to treat the gateway_ip address as a Neighbor Discovery Router Advertisement Prefix.
		// The C(no_gw) option is used to remove default gateway functionality from the gateway address.
		// The APIC defaults to C(nd_ra) when unset during creation.

		subnet_control?: string

		// The name of the Subnet.

		subnet_name?: string

		// The IPv4 or IPv6 gateway address for the Subnet.

		gateway?: string

		// The subnet mask for the Subnet.
		// This is the number associated with CIDR notation.
		// For IPv4 addresses, accepted values range between C(0) and C(32).
		// For IPv6 addresses, accepted Values range between C(0) and C(128).

		mask?: int

		// Determines if the Subnet is preferred over all available Subnets. Only one Subnet per Address Family (IPv4/IPv6). can be preferred in the Bridge Domain.
		// The APIC defaults to C(no) when unset during creation.

		preferred?: bool

		// Use C(present) or C(absent) for adding or removing.
		// Use C(query) for listing an object or multiple objects.

		state?: string

		// The name of the Tenant.

		tenant?: string

		// Determines if the Subnet should be treated as a VIP; used when the BD is extended to multiple sites.
		// The APIC defaults to C(no) when unset during creation.

		enable_vip?: bool

		// Determines the scope of the Subnet.
		// The C(private) option only allows communication with hosts in the same VRF.
		// The C(public) option allows the Subnet to be advertised outside of the ACI Fabric, and allows communication with hosts in other VRFs.
		// The shared option limits communication to hosts in either the same VRF or the shared VRF.
		// The value is a list of options, C(private) and C(public) are mutually exclusive, but both can be used with C(shared).
		// The APIC defaults to C(private) when unset during creation.

		scope?: [...]
	}
}

aci_domain_to_encap_pool :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	aci_domain_to_encap_pool: {

		// The VM platform for VMM Domains.
		// Support for Kubernetes was added in ACI v3.0.
		// Support for CloudFoundry, OpenShift and Red Hat was added in ACI v3.1.

		vm_provider?: string

		// Name of the domain being associated with the Encap Pool.

		domain?: string

		// Determines if the Domain is physical (phys) or virtual (vmm).

		domain_type?: string

		// The name of the pool.

		pool?: string

		// The method used for allocating encaps to resources.
		// Only vlan and vsan support allocation modes.

		pool_allocation_mode?: string

		// The encap type of C(pool).

		pool_type: string

		// Use C(present) or C(absent) for adding or removing.
		// Use C(query) for listing an object or multiple objects.

		state?: string
	}
}

aci_filter_entry :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	aci_filter_entry: {

		// The arp flag to use when the ether_type is arp.
		// The APIC defaults to C(unspecified) when unset during creation.

		arp_flag?: string

		// Used to set the destination end port when ip_protocol is tcp or udp.
		// Accepted values are any valid TCP/UDP port range.
		// The APIC defaults to C(unspecified) when unset during creation.

		dst_port_end?: string

		// Used to set the destination start port when ip_protocol is tcp or udp.
		// Accepted values are any valid TCP/UDP port range.
		// The APIC defaults to C(unspecified) when unset during creation.

		dst_port_start?: string

		// The Ethernet type.
		// The APIC defaults to C(unspecified) when unset during creation.

		ether_type?: string

		// present, absent, query

		state?: string

		// Used to set both destination start and end ports to the same value when ip_protocol is tcp or udp.
		// Accepted values are any valid TCP/UDP port range.
		// The APIC defaults to C(unspecified) when unset during creation.

		dst_port?: string

		// The IP Protocol type when ether_type is ip.
		// The APIC defaults to C(unspecified) when unset during creation.

		ip_protocol?: string

		// The name of Filter that the entry should belong to.

		filter?: string

		// ICMPv6 message type; used when ip_protocol is icmpv6.
		// The APIC defaults to C(unspecified) when unset during creation.

		icmp6_msg_type?: string

		// The name of the tenant.

		tenant?: string

		// Description for the Filter Entry.

		description?: string

		// Then name of the Filter Entry.

		entry?: string

		// ICMPv4 message type; used when ip_protocol is icmp.
		// The APIC defaults to C(unspecified) when unset during creation.

		icmp_msg_type?: string

		// Determines the statefulness of the filter entry.

		stateful?: bool
	}
}

aci_firmware_group_node :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	aci_firmware_group_node: {

		// This is the name of the firmware group

		group: string

		// The node to be added to the firmware group - the value equals the NodeID

		node: string

		// Use C(present) or C(absent) for adding or removing.
		// Use C(query) for listing an object or multiple objects.

		state?: string
	}
}

aci_tenant_ep_retention_policy :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	aci_tenant_ep_retention_policy: {

		// Description for the End point retention policy.

		description?: string

		// Local end point aging interval in seconds.
		// Accepted values range between C(120) and C(65535); 0 is used for infinite.
		// The APIC defaults to C(900) when unset during creation.

		local_ep_interval?: int

		// Remote end point aging interval in seconds.
		// Accepted values range between C(120) and C(65535); 0 is used for infinite.
		// The APIC defaults to C(300) when unset during creation.

		remote_ep_interval?: int

		// Bounce entry aging interval in seconds.
		// Accepted values range between C(150) and C(65535); 0 is used for infinite.
		// The APIC defaults to C(630) when unset during creation.

		bounce_age?: int

		// Determines if the bounce entries are installed by RARP Flood or COOP Protocol.
		// The APIC defaults to C(coop) when unset during creation.

		bounce_trigger?: string

		// The name of the end point retention policy.

		epr_policy?: string

		// Hold interval in seconds.
		// Accepted values range between C(5) and C(65535).
		// The APIC defaults to C(300) when unset during creation.

		hold_interval?: int

		// Move frequency per second.
		// Accepted values range between C(0) and C(65535); 0 is used for none.
		// The APIC defaults to C(256) when unset during creation.

		move_frequency?: int

		// Use C(present) or C(absent) for adding or removing.
		// Use C(query) for listing an object or multiple objects.

		state?: string

		// The name of an existing tenant.

		tenant?: string
	}
}

aci_tenant_span_dst_group :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	aci_tenant_span_dst_group: {

		// The description of the SPAN destination group.

		description?: string

		// The name of the SPAN destination group.

		dst_group: string

		// Use C(present) or C(absent) for adding or removing.
		// Use C(query) for listing an object or multiple objects.

		state?: string

		// The name of the tenant.

		tenant: string
	}
}

mso_schema_site_anp_epg_staticport :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	mso_schema_site_anp_epg_staticport: {

		// The pod of the static port.

		pod?: string

		// The name of the site.

		site: string

		// Use C(present) or C(absent) for adding or removing.
		// Use C(query) for listing an object or multiple objects.

		state?: string

		// The name of the template.

		template: string

		// The path type of the static port

		type?: string

		// The port encap VLAN id of the static port.

		vlan?: int

		// The name of the EPG.

		epg?: string

		// The deployment immediacy of the static port.
		// C(immediate) means B(Deploy immediate).
		// C(lazy) means B(deploy on demand).

		deployment_immediacy?: string

		// The leaf of the static port.

		leaf?: string

		// The mode of the static port.
		// C(native) means B(Access (802.1p)).
		// C(regular) means B(Trunk).
		// C(untagged) means B(Access (untagged)).

		mode?: string

		// The path of the static port.

		path?: string

		// The name of the schema.

		schema: string

		// The name of the ANP.

		anp?: string
	}
}

mso_schema_site_vrf_region :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	mso_schema_site_vrf_region: {

		// The name of the site.

		site: string

		// Use C(present) or C(absent) for adding or removing.
		// Use C(query) for listing an object or multiple objects.

		state?: string

		// The name of the template.

		template: string

		// The name of the VRF.

		vrf?: string

		// The name of the region to manage.

		region?: string

		// The name of the schema.

		schema: string
	}
}

aci_bd :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	aci_bd: {

		// Determines the forwarding method for L2 multicast, broadcast, and link layer traffic.
		// The APIC defaults to C(bd-flood) when unset during creation.

		multi_dest?: string

		// Determines if PIM is enabled.
		// The APIC defaults to C(no) when unset during creation.

		enable_multicast?: bool

		// Clears all End Points in all Leaves when C(yes).
		// The value is not reset to disabled once End Points have been cleared; that requires a second task.
		// The APIC defaults to C(no) when unset during creation.

		endpoint_clear?: bool

		// The name of the IPv6 Neighbor Discovery Policy the Bridge Domain should use when overridding the default IPV6 ND Policy.

		ipv6_nd_policy?: string

		// Determines if the BD should limit IP learning to only subnets owned by the Bridge Domain.
		// The APIC defaults to C(yes) when unset during creation.

		limit_ip_learn?: bool

		// Use C(present) or C(absent) for adding or removing.
		// Use C(query) for listing an object or multiple objects.

		state?: string

		// The name of the Tenant.

		tenant?: string

		// Determines if the Bridge Domain should inherit or resolve the End Point Retention Policy.
		// The APIC defaults to C(resolve) when unset during creation.

		endpoint_retention_action?: string

		// The name of the End Point Retention Policy the Bridge Domain should use when overriding the default End Point Retention Policy.

		endpoint_retention_policy?: string

		// Determines what forwarding method to use for unknown l2 destinations.
		// The APIC defaults to C(proxy) when unset during creation.

		l2_unknown_unicast?: string

		// Determines if GARP should be enabled to detect when End Points move.
		// The APIC defaults to C(garp) when unset during creation.

		endpoint_move_detect?: string

		// The name of the IGMP Snooping Policy the Bridge Domain should use when overriding the default IGMP Snooping Policy.

		igmp_snoop_policy?: string

		// Determines if the Bridge Domain should learn End Point IPs.
		// The APIC defaults to C(yes) when unset during creation.

		ip_learning?: bool

		// Determines the forwarding method to use for unknown multicast destinations.
		// The APIC defaults to C(flood) when unset during creation.

		l3_unknown_multicast?: string

		// The name of the VRF.

		vrf?: string

		// Determines if the Bridge Domain should flood ARP traffic.
		// The APIC defaults to C(no) when unset during creation.

		arp_flooding?: bool

		// The type of traffic on the Bridge Domain.
		// The APIC defaults to C(ethernet) when unset during creation.

		bd_type?: string

		// Determines if IP forwarding should be allowed.
		// The APIC defaults to C(yes) when unset during creation.

		enable_routing?: bool

		// The name of the Bridge Domain.

		bd?: string

		// Description for the Bridge Domain.

		description?: string

		// The MAC Address to assign to the C(bd) instead of using the default.
		// The APIC defaults to C(00:22:BD:F8:19:FF) when unset during creation.

		mac_address?: string
	}
}

aci_contract_subject_to_filter :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	aci_contract_subject_to_filter: {

		// Use C(present) or C(absent) for adding or removing.
		// Use C(query) for listing an object or multiple objects.

		state?: string

		// The name of the Contract Subject.

		subject?: string

		// The name of the tenant.

		tenant: string

		// The name of the contract.

		contract?: string

		// The name of the Filter to bind to the Subject.

		filter?: string

		// Determines if the binding should be set to log.
		// The APIC defaults to C(none) when unset during creation.

		log?: string
	}
}

mso_schema_template_anp_epg_contract :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	mso_schema_template_anp_epg_contract: {

		// The name of the schema.

		schema: string

		// Use C(present) or C(absent) for adding or removing.
		// Use C(query) for listing an object or multiple objects.

		state?: string

		// The name of the template to change.

		template: string

		// The name of the ANP.

		anp: string

		// A contract associated to this EPG.

		contract?: {...}

		// The name of the EPG to manage.

		epg: string
	}
}

aci_config_snapshot :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	aci_config_snapshot: {

		// The name of the snapshot to delete.

		snapshot?: string

		// Use C(present) or C(absent) for adding or removing.
		// Use C(query) for listing an object or multiple objects.

		state?: string

		// The description for the Config Export Policy.

		description?: string

		// The name of the Export Policy to use for Config Snapshots.

		export_policy?: string

		// Sets the config backup to be formatted in JSON or XML.
		// The APIC defaults to C(json) when unset.

		format?: string

		// Determines if secure information should be included in the backup.
		// The APIC defaults to C(yes) when unset.

		include_secure?: bool

		// Determines how many snapshots can exist for the Export Policy before the APIC starts to rollover.
		// Accepted values range between C(1) and C(10).
		// The APIC defaults to C(3) when unset.

		max_count?: int
	}
}

aci_l3out_extepg :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	aci_l3out_extepg: {

		// Description for the ExtEpg.

		description?: string

		// The target Differentiated Service (DSCP) value.
		// The APIC defaults to C(unspecified) when unset during creation.

		dscp?: string

		// Name of ExtEpg being created.

		extepg: string

		// Name of an existing L3Out.

		l3out: string

		// Whether ot not the EPG is part of the Preferred Group and can communicate without contracts.
		// This is very convenient for migration scenarios, or when ACI is used for network automation but not for policy.
		// The APIC defaults to C(no) when unset during creation.

		preferred_group?: bool

		// Use C(present) or C(absent) for adding or removing.
		// Use C(query) for listing an object or multiple objects.

		state?: string

		// Name of an existing tenant.

		tenant: string
	}
}

aci_rest :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	aci_rest: {

		// When used instead of C(src), sets the payload of the API request directly.
		// This may be convenient to template simple requests.
		// For anything complex use the C(template) lookup plugin (see examples) or the M(template) module with parameter C(src).

		content?: _

		// The HTTP method of the request.
		// Using C(delete) is typically used for deleting objects.
		// Using C(get) is typically used for querying objects.
		// Using C(post) is typically used for modifying objects.

		method?: string

		// URI being used to execute API calls.
		// Must end in C(.xml) or C(.json).

		path: string

		// Name of the absolute path of the filename that includes the body of the HTTP request being sent to the ACI fabric.
		// If you require a templated payload, use the C(content) parameter together with the C(template) lookup plugin, or use M(template).

		src?: string
	}
}

aci_aaa_user :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	aci_aaa_user: {

		// The status of the locally-authenticated user account.

		enabled?: bool

		// The expiration date of the locally-authenticated user account.

		expiration?: string

		// The name of the locally-authenticated user user to add.

		aaa_user?: string

		// Description for the AAA user.

		description?: string

		// The email address of the locally-authenticated user.

		email?: string

		// The lifetime of the locally-authenticated user password.

		aaa_password_lifetime?: int

		// Whether to enable an expiration date for the locally-authenticated user account.

		expires?: bool

		// The phone number of the locally-authenticated user.

		phone?: string

		// The password of the locally-authenticated user.

		aaa_password?: string

		// Whether this account needs password update.

		aaa_password_update_required?: bool

		// Whether to clear the password history of a locally-authenticated user.

		clear_password_history?: bool

		// The first name of the locally-authenticated user.

		first_name?: string

		// The last name of the locally-authenticated user.

		last_name?: string

		// Use C(present) or C(absent) for adding or removing.
		// Use C(query) for listing an object or multiple objects.

		state?: string
	}
}

aci_aep_to_domain :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	aci_aep_to_domain: {

		// The name of the Attachable Access Entity Profile.

		aep?: string

		// Name of the physical or virtual domain being associated with the AEP.

		domain?: string

		// Determines if the Domain is physical (phys) or virtual (vmm).

		domain_type?: string

		// Use C(present) or C(absent) for adding or removing.
		// Use C(query) for listing an object or multiple objects.

		state?: string

		// The VM platform for VMM Domains.
		// Support for Kubernetes was added in ACI v3.0.
		// Support for CloudFoundry, OpenShift and Red Hat was added in ACI v3.1.

		vm_provider?: string
	}
}

aci_domain_to_vlan_pool :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	aci_domain_to_vlan_pool: {

		// Use C(present) or C(absent) for adding or removing.
		// Use C(query) for listing an object or multiple objects.

		state?: string

		// The VM platform for VMM Domains.
		// Support for Kubernetes was added in ACI v3.0.
		// Support for CloudFoundry, OpenShift and Red Hat was added in ACI v3.1.

		vm_provider?: string

		// Name of the domain being associated with the VLAN Pool.

		domain?: string

		// Determines if the Domain is physical (phys) or virtual (vmm).

		domain_type?: string

		// The name of the pool.

		pool?: string

		// The method used for allocating VLANs to resources.

		pool_allocation_mode: string
	}
}

aci_fabric_scheduler :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	aci_fabric_scheduler: {

		// Description for the Scheduler.

		description?: string

		// This set the hour of execution

		hour?: int

		// Use C(present) or C(absent) for adding or removing.
		// Use C(query) for listing an object or multiple objects.

		state?: string

		// This is the name for your what recurring or oneTime execution

		windowname?: string

		// This is the amount of devices that can be executed on at a time

		concurCap?: int

		// This is the date and time that the scheduler will execute

		date?: string

		// This sets the day when execution will take place

		day?: string

		// If you want to make the Scheduler a recurring it would be a "True" and for a oneTime execution it would be "False". For a shell just exclude this option from the task

		recurring?: bool

		// This is the amount MAX amount of time a process can be executed

		maxTime?: string

		// This sets the minute of execution, used in conjunction with hour

		minute?: int

		// The name of the Scheduler.

		name: string
	}
}

aci_interface_policy_port_channel :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	aci_interface_policy_port_channel: {

		// Determines if Suspend Individual is enabled.
		// This makes up the LACP Policy Control Policy; if one setting is defined, then all other Control Properties left undefined or set to false will not exist after the task is ran.
		// The APIC defaults to C(yes) when unset during creation.

		suspend_individual?: bool

		// Determines if Load Defer is enabled.
		// This makes up the LACP Policy Control Policy; if one setting is defined, then all other Control Properties left undefined or set to false will not exist after the task is ran.
		// The APIC defaults to C(no) when unset during creation.

		load_defer?: bool

		// Maximum links.
		// Accepted values range between 1 and 16.
		// The APIC defaults to C(16) when unset during creation.

		max_links?: int

		// Minimum links.
		// Accepted values range between 1 and 16.
		// The APIC defaults to C(1) when unset during creation.

		min_links?: int

		// Port channel interface policy mode.
		// Determines the LACP method to use for forming port-channels.
		// The APIC defaults to C(off) when unset during creation.

		mode?: string

		// Use C(present) or C(absent) for adding or removing.
		// Use C(query) for listing an object or multiple objects.

		state?: string

		// Determines if Symmetric Hashing is enabled.
		// This makes up the LACP Policy Control Policy; if one setting is defined, then all other Control Properties left undefined or set to false will not exist after the task is ran.
		// The APIC defaults to C(no) when unset during creation.

		symmetric_hash?: bool

		// The description for the port channel.

		description?: string

		// Determines if Fast Select is enabled for Hot Standby Ports.
		// This makes up the LACP Policy Control Policy; if one setting is defined, then all other Control Properties left undefined or set to false will not exist after the task is ran.
		// The APIC defaults to C(yes) when unset during creation.

		fast_select?: bool

		// Determines if Graceful Convergence is enabled.
		// This makes up the LACP Policy Control Policy; if one setting is defined, then all other Control Properties left undefined or set to false will not exist after the task is ran.
		// The APIC defaults to C(yes) when unset during creation.

		graceful_convergence?: bool

		// Name of the port channel.

		port_channel: string
	}
}

aci_aep :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	aci_aep: {

		// The name of the Attachable Access Entity Profile.

		aep: string

		// Description for the AEP.

		description?: string

		// Enable infrastructure VLAN.
		// The hypervisor functions of the AEP.
		// C(no) will disable the infrastructure vlan if it is enabled.

		infra_vlan?: bool

		// Use C(present) or C(absent) for adding or removing.
		// Use C(query) for listing an object or multiple objects.

		state?: string
	}
}

aci_contract :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	aci_contract: {

		// The name of the tenant.

		tenant: string

		// The name of the contract.

		contract: string

		// Description for the contract.

		description?: string

		// The target Differentiated Service (DSCP) value.
		// The APIC defaults to C(unspecified) when unset during creation.

		dscp?: string

		// The desired QoS class to be used.
		// The APIC defaults to C(unspecified) when unset during creation.

		priority?: string

		// The scope of a service contract.
		// The APIC defaults to C(context) when unset during creation.

		scope?: string

		// Use C(present) or C(absent) for adding or removing.
		// Use C(query) for listing an object or multiple objects.

		state?: string
	}
}

aci_vlan_pool :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	aci_vlan_pool: {

		// Description for the C(pool).

		description?: string

		// The name of the pool.

		pool?: string

		// The method used for allocating VLANs to resources.

		pool_allocation_mode?: string

		// Use C(present) or C(absent) for adding or removing.
		// Use C(query) for listing an object or multiple objects.

		state?: string
	}
}

aci_vlan_pool_encap_block :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	aci_vlan_pool_encap_block: {

		// The method used for allocating encaps to resources.

		pool_allocation_mode?: string

		// Use C(present) or C(absent) for adding or removing.
		// Use C(query) for listing an object or multiple objects.

		state?: string

		// The method used for allocating encaps to resources.

		allocation_mode?: string

		// The end of encap block.

		block_end?: int

		// The name to give to the encap block.

		block_name?: string

		// The start of the encap block.

		block_start?: int

		// Description for the pool encap block.

		description?: string

		// The name of the pool that the encap block should be assigned to.

		pool?: string
	}
}

mso_role :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	mso_role: {

		// Use C(present) or C(absent) for adding or removing.
		// Use C(query) for listing an object or multiple objects.

		state?: string

		// The description of the role.

		description?: string

		// The name of the role to be displayed in the web UI.

		display_name?: string

		// A list of permissions tied to this role.

		permissions?: [...]

		// The name of the role.

		role: string
	}
}

mso_schema_site_vrf_region_cidr_subnet :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	mso_schema_site_vrf_region_cidr_subnet: {

		// The name of the template.

		template: string

		// The name of the zone for the region CIDR subnet.

		zone?: string

		// The name of the schema.

		schema: string

		// The name of the site.

		site: string

		// Use C(present) or C(absent) for adding or removing.
		// Use C(query) for listing an object or multiple objects.

		state?: string

		// The IP subnet of this region CIDR.

		subnet?: string

		// The name of the VRF.

		vrf?: string

		// The IP range of for the region CIDR.

		cidr?: string

		// The name of the region.

		region?: string
	}
}

mso_schema_template_contract_filter :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	mso_schema_template_contract_filter: {

		// The scope of the contract.
		// This defaults to C(vrf) when unset on creation.

		contract_scope?: string

		// The filter to associate with this contract.

		filter?: string

		// The name of the schema.

		schema: string

		// The name of the template.

		template: string

		// The type of filter to manage.

		filter_type?: string

		// Use C(present) or C(absent) for adding or removing.
		// Use C(query) for listing an object or multiple objects.

		state?: string

		// The name of the contract to manage.

		contract: string

		// The name as displayed on the MSO web interface.
		// This defaults to the contract name when unset on creation.

		contract_display_name?: string

		// The type of filters defined in this contract.
		// This defaults to C(both-way) when unset on creation.

		contract_filter_type?: string

		// A list of filter directives.

		filter_directives?: [...]

		// The schema name in which the filter is located.

		filter_schema?: string

		// The template name in which the filter is located.

		filter_template?: string
	}
}

mso_schema_template_vrf :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	mso_schema_template_vrf: {

		// Use C(present) or C(absent) for adding or removing.
		// Use C(query) for listing an object or multiple objects.

		state?: string

		// The name of the template.

		template: string

		// The name of the VRF to manage.

		vrf?: string

		// The name as displayed on the MSO web interface.

		display_name?: string

		// Whether to enable L3 multicast.

		layer3_multicast?: bool

		// The name of the schema.

		schema: string
	}
}

aci_l3out :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	aci_l3out: {

		// Name of the external L3 domain being associated with the L3Out.

		domain: string

		// Use C(present) or C(absent) for adding or removing.
		// Use C(query) for listing an object or multiple objects.

		state?: string

		// Name of an existing tenant.

		tenant: string

		// The AS number for the L3Out.
		// Only applicable when using 'eigrp' as the l3protocol

		asn?: int

		// Description for the L3Out.

		description?: string

		// The target Differentiated Service (DSCP) value.
		// The APIC defaults to C(unspecified) when unset during creation.

		dscp?: string

		// Name of L3Out being created.

		l3out: string

		// Routing protocol for the L3Out

		l3protocol?: [...]

		// Route Control enforcement direction. The only allowed values are export or import,export.

		route_control?: [...]

		// Name of the VRF being associated with the L3Out.

		vrf: string
	}
}

aci_tenant :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	aci_tenant: {

		// Use C(present) or C(absent) for adding or removing.
		// Use C(query) for listing an object or multiple objects.

		state?: string

		// The name of the tenant.

		tenant: string

		// Description for the tenant.

		description?: string
	}
}

aci_maintenance_group :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	aci_maintenance_group: {

		// This is the name of the group

		group: string

		// This is the name of the policy that was created using aci_maintenance_policy

		policy: string

		// Use C(present) or C(absent) for adding or removing.
		// Use C(query) for listing an object or multiple objects.

		state?: string
	}
}

mso_schema_template_anp_epg_subnet :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	mso_schema_template_anp_epg_subnet: {

		// Whether this subnet has a default gateway.

		no_default_gateway?: bool

		// The name of the schema.

		schema: string

		// The scope of the subnet.

		scope?: string

		// Whether this subnet is shared between VRFs.

		shared?: bool

		// Use C(present) or C(absent) for adding or removing.
		// Use C(query) for listing an object or multiple objects.

		state?: string

		// The IP range in CIDR notation.

		subnet: string

		// The name of the ANP.

		anp: string

		// The description of this subnet.

		description?: string

		// The name of the EPG to manage.

		epg: string

		// The name of the template to change.

		template: string
	}
}

mso_schema_template_deploy :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	mso_schema_template_deploy: {

		// Use C(deploy) to deploy schema template.
		// Use C(status) to get deployment status.
		// Use C(undeploy) to deploy schema template from a site.

		state?: string

		// The name of the template.

		template?: string

		// The name of the schema.

		schema: string

		// The name of the site B(to undeploy).

		site?: string
	}
}

aci_firmware_policy :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	aci_firmware_policy: {

		// Check if compatibility checks should be ignored

		ignoreCompat?: bool

		// Name of the firmware policy

		name: string

		// Use C(present) or C(absent) for adding or removing.
		// Use C(query) for listing an object or multiple objects.

		state?: string

		// The version of the firmware associated with this policy. This value is very import as well as constructing
		// it correctly. The syntax for this field is n9000-xx.x. If you look at the firmware repository using the UI
		// each version will have a "Full Version" column, this is the value you need to use. So, if the Full Version
		// is 13.1(1i), the value for this field would be n9000-13.1(1i)

		version: string
	}
}

aci_interface_policy_leaf_profile :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	aci_interface_policy_leaf_profile: {

		// Use C(present) or C(absent) for adding or removing.
		// Use C(query) for listing an object or multiple objects.

		state?: string

		// Description for the Fabric access policy leaf interface profile.

		description?: string

		// The name of the Fabric access policy leaf interface profile.

		leaf_interface_profile: string
	}
}

aci_firmware_group :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	aci_firmware_group: {

		// This is the name of the firmware policy, which was create by aci_firmware_policy. It is important that
		// you use the same name as the policy created with aci_firmware_policy

		firmwarepol?: string

		// This the name of the firmware group

		group: string

		// Use C(present) or C(absent) for adding or removing.
		// Use C(query) for listing an object or multiple objects.

		state?: string
	}
}

aci_interface_policy_ospf :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	aci_interface_policy_ospf: {

		// The interface policy controls.
		// This is a list of one or more of the following controls:
		// C(advert-subnet) -- Advertise IP subnet instead of a host mask in the router LSA.
		// C(bfd) -- Bidirectional Forwarding Detection
		// C(mtu-ignore) -- Disables MTU mismatch detection on an interface.
		// C(passive) -- The interface does not participate in the OSPF protocol and will not establish adjacencies or send routing updates. However the interface is announced as part of the routing network.

		controls?: [...]

		// The interval between hello packets from a neighbor before the router declares the neighbor as down.
		// This value must be the same for all networking devices on a specific network.
		// Specifying a smaller dead interval (seconds) will give faster detection of a neighbor being down and improve convergence, but might cause more routing instability.
		// Accepted values range between C(1) and C(65535).
		// The APIC defaults to C(40) when unset during creation.

		dead_interval?: int

		// The description for the OSPF interface.

		description?: string

		// The OSPF interface policy network type.
		// OSPF supports broadcast and point-to-point.
		// The APIC defaults to C(unspecified) when unset during creation.

		network_type?: string

		// Whether prefix suppressions is enabled or disabled.
		// The APIC defaults to C(inherit) when unset during creation.

		prefix_suppression?: bool

		// The interval between LSA retransmissions.
		// The retransmit interval occurs while the router is waiting for an acknowledgement from the neighbor router that it received the LSA.
		// If no acknowledgment is received at the end of the interval, then the LSA is resent.
		// Accepted values range between C(1) and C(65535).
		// The APIC defaults to C(5) when unset during creation.

		retransmit_interval?: int

		// The name of the Tenant the OSPF interface policy should belong to.

		tenant: string

		// The OSPF cost of the interface.
		// The cost (also called metric) of an interface in OSPF is an indication of the overhead required to send packets across a certain interface. The cost of an interface is inversely proportional to the bandwidth of that interface. A higher bandwidth indicates a lower cost. There is more overhead (higher cost) and time delays involved in crossing a 56k serial line than crossing a 10M ethernet line. The formula used to calculate the cost is C(cost= 10000 0000/bandwith in bps) For example, it will cost 10 EXP8/10 EXP7 = 10 to cross a 10M Ethernet line and will cost 10 EXP8/1544000 = 64 to cross a T1 line.
		// By default, the cost of an interface is calculated based on the bandwidth; you can force the cost of an interface with the ip ospf cost value interface subconfiguration mode command.
		// Accepted values range between C(1) and C(450).
		// The APIC defaults to C(0) when unset during creation.

		cost?: int

		// The interval between hello packets that OSPF sends on the interface.
		// Note that the smaller the hello interval, the faster topological changes will be detected, but more routing traffic will ensue.
		// This value must be the same for all routers and access servers on a specific network.
		// Accepted values range between C(1) and C(65535).
		// The APIC defaults to C(10) when unset during creation.

		hello_interval?: int

		// The OSPF interface policy name.
		// This name can be between 1 and 64 alphanumeric characters.
		// Note that you cannot change this name after the object has been saved.

		ospf: string

		// The priority for the OSPF interface profile.
		// Accepted values ranges between C(0) and C(255).
		// The APIC defaults to C(1) when unset during creation.

		priority?: int

		// Use C(present) or C(absent) for adding or removing.
		// Use C(query) for listing an object or multiple objects.

		state?: string

		// The delay time needed to send an LSA update packet.
		// OSPF increments the LSA age time by the transmit delay amount before transmitting the LSA update.
		// You should take into account the transmission and propagation delays for the interface when you set this value.
		// Accepted values range between C(1) and C(450).
		// The APIC defaults to C(1) when unset during creation.

		transmit_delay?: int
	}
}

aci_tenant_action_rule_profile :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	aci_tenant_action_rule_profile: {

		// The name of the action rule profile.

		action_rule?: string

		// The description for the action rule profile.

		description?: string

		// Use C(present) or C(absent) for adding or removing.
		// Use C(query) for listing an object or multiple objects.

		state?: string

		// The name of the tenant.

		tenant?: string
	}
}

aci_aaa_user_certificate :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	aci_aaa_user_certificate: {

		// Use C(present) or C(absent) for adding or removing.
		// Use C(query) for listing an object or multiple objects.

		state?: string

		// The name of the user to add a certificate to.

		aaa_user: string

		// Whether this is a normal user or an appuser.

		aaa_user_type?: string

		// The PEM format public key extracted from the X.509 certificate.

		certificate?: string

		// The name of the user certificate entry in ACI.

		certificate_name?: string
	}
}

aci_encap_pool :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	aci_encap_pool: {

		// Description for the C(pool).

		description?: string

		// The name of the pool.

		pool?: string

		// The method used for allocating encaps to resources.
		// Only vlan and vsan support allocation modes.

		pool_allocation_mode?: string

		// The encap type of C(pool).

		pool_type: string

		// Use C(present) or C(absent) for adding or removing.
		// Use C(query) for listing an object or multiple objects.

		state?: string
	}
}

aci_interface_policy_lldp :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	aci_interface_policy_lldp: {

		// The description for the LLDP interface policy name.

		description?: string

		// The LLDP interface policy name.

		lldp_policy: string

		// Enable or disable Receive state.
		// The APIC defaults to C(yes) when unset during creation.

		receive_state?: bool

		// Use C(present) or C(absent) for adding or removing.
		// Use C(query) for listing an object or multiple objects.

		state?: string

		// Enable or Disable Transmit state.
		// The APIC defaults to C(yes) when unset during creation.

		transmit_state?: bool
	}
}

aci_interface_policy_mcp :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	aci_interface_policy_mcp: {

		// Enable or disable admin state.
		// The APIC defaults to C(yes) when unset during creation.

		admin_state?: bool

		// The description for the MCP interface.

		description?: string

		// The name of the MCP interface.

		mcp: string

		// Use C(present) or C(absent) for adding or removing.
		// Use C(query) for listing an object or multiple objects.

		state?: string
	}
}

aci_interface_policy_port_security :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	aci_interface_policy_port_security: {

		// The description for the contract.

		description?: string

		// Maximum number of end points.
		// Accepted values range between C(0) and C(12000).
		// The APIC defaults to C(0) when unset during creation.

		max_end_points?: int

		// The name of the port security.

		port_security: string

		// The delay time in seconds before MAC learning is re-enabled
		// Accepted values range between C(60) and C(3600)
		// The APIC defaults to C(60) when unset during creation

		port_security_timeout?: int

		// Use C(present) or C(absent) for adding or removing.
		// Use C(query) for listing an object or multiple objects.

		state?: string
	}
}

aci_switch_leaf_selector :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	aci_switch_leaf_selector: {

		// The description to assign to the C(leaf).

		description?: string

		// Start of Node Block range.

		from?: int

		// Name of Node Block range to be added to Leaf Selector of given Leaf Profile.

		leaf_node_blk?: string

		// Name of the Leaf Profile to which we add a Selector.

		leaf_profile?: string

		// Name of the Policy Group to be added to Leaf Selector of given Leaf Profile.

		policy_group?: string

		// Use C(present) or C(absent) for adding or removing.
		// Use C(query) for listing an object or multiple objects.

		state?: string

		// Start of Node Block range.

		to?: int

		// Name of Leaf Selector.

		leaf?: string

		// The description to assign to the C(leaf_node_blk)

		leaf_node_blk_description?: string
	}
}

aci_epg_to_contract :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	aci_epg_to_contract: {

		// The name of the contract.

		contract?: string

		// Determines if the EPG should Provide or Consume the Contract.

		contract_type: string

		// The name of the end point group.

		epg?: string

		// QoS class.
		// The APIC defaults to C(unspecified) when unset during creation.

		priority?: string

		// The matching algorithm for Provided Contracts.
		// The APIC defaults to C(at_least_one) when unset during creation.

		provider_match?: string

		// Use C(present) or C(absent) for adding or removing.
		// Use C(query) for listing an object or multiple objects.

		state?: string

		// Name of an existing tenant.

		tenant?: string

		// Name of an existing application network profile, that will contain the EPGs.

		ap?: string
	}
}

aci_fabric_node :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	aci_fabric_node: {

		// Switch Name for the new Fabric Node Member.

		switch?: string

		// Description for the new Fabric Node Member.

		description?: string

		// Node ID Number for the new Fabric Node Member.

		node_id?: int

		// The pod id of the new Fabric Node Member.

		pod_id?: int

		// Role for the new Fabric Node Member.

		role?: string

		// Serial Number for the new Fabric Node Member.

		serial?: string

		// Use C(present) or C(absent) for adding or removing.
		// Use C(query) for listing an object or multiple objects.

		state?: string
	}
}
