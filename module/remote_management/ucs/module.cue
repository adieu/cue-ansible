package ucs

ucs_dns_server :: {

	// If C(absent), will remove a DNS server.
	// If C(present), will add or update a DNS server.

	state?: string

	// Where the module will be run

	delegate_to?: string

	// A user-defined description of the DNS server.
	// Enter up to 256 characters.
	// You can use any characters or spaces except the following:
	// ` (accent mark),  (backslash), ^ (carat), " (double quote), = (equal sign), > (greater than), < (less than), or ' (single quote).

	description?: string

	// DNS server IP address.
	// Enter a valid IPV4 Address.
	// UCS Manager supports up to 4 DNS Servers

	dns_server?: string
}

ucs_storage_profile :: {

	// The name of the storage profile.
	// This name can be between 1 and 16 alphanumeric characters.
	// You cannot use spaces or any special characters other than - (hyphen), "_" (underscore), : (colon), and . (period).
	// You cannot change this name after profile is created.

	name: string

	// The distinguished name (dn) of the organization where the resource is assigned.

	org_dn?: string

	// If C(present), will verify that the storage profile is present and will create if needed.
	// If C(absent), will verify that the storage profile is absent and will delete if needed.

	state?: string

	// The user-defined description of the storage profile.
	// Enter up to 256 characters.
	// You can use any characters or spaces except the following:
	// ` (accent mark),  (backslash), ^ (carat), " (double quote), = (equal sign), > (greater than), < (less than), or ' (single quote).

	description?: string

	// List of Local LUNs used by the storage profile.

	local_luns?: string
}

ucs_timezone :: {

	// A user-defined description of the timezone.
	// Enter up to 256 characters.
	// You can use any characters or spaces except the following:
	// ` (accent mark),  (backslash), ^ (carat), " (double quote), = (equal sign), > (greater than), < (less than), or ' (single quote).

	description?: string

	// If C(absent), will unset timezone.
	// If C(present), will set or update timezone.

	state?: string

	// The timezone name.
	// Time zone names are from the L(tz database,https://en.wikipedia.org/wiki/List_of_tz_database_time_zones)
	// The timezone name is case sensitive.
	// The timezone name can be between 0 and 510 alphanumeric characters.
	// You cannot use spaces or any special characters other than
	// "-" (hyphen), "_" (underscore), "/" (backslash).

	timezone?: string

	// The admin_state setting
	// The enabled admin_state indicates the timezone configuration is utilized by UCS Manager.
	// The disabled admin_state indicates the timezone configuration is ignored by UCS Manager.

	admin_state?: string
}

ucs_vhba_template :: {

	// The VSAN to associate with vHBAs created from this template.

	vsan?: string

	// The WWPN pool that a vHBA created from this template uses to derive its WWPN address.

	wwpn_pool?: string

	// The Max Data Field Size field.
	// The maximum size of the Fibre Channel frame payload bytes that the vHBA supports.
	// Enter an string between '256' and '2112'.

	max_data?: string

	// The QoS policy that is associated with vHBAs created from this template.

	qos_policy?: string

	// The Redundancy Type used for template pairing from the Primary or Secondary redundancy template.
	// primary — Creates configurations that can be shared with the Secondary template.
	// Any other shared changes on the Primary template are automatically synchronized to the Secondary template.
	// secondary — All shared configurations are inherited from the Primary template.
	// none - Legacy vHBA template behavior. Select this option if you do not want to use redundancy.

	redundancy_type?: string

	// If C(present), will verify vHBA templates are present and will create if needed.
	// If C(absent), will verify vHBA templates are absent and will delete if needed.

	state?: string

	// The statistics collection policy that is associated with vHBAs created from this template.

	stats_policy?: string

	// The Template Type field.
	// This can be one of the following:
	// initial-template — vHBAs created from this template are not updated if the template changes.
	// updating-template - vHBAs created from this template are updated if the template changes.

	template_type?: string

	// A user-defined description of the template.
	// Enter up to 256 characters.
	// You can use any characters or spaces except the following:
	// ` (accent mark),  (backslash), ^ (carat), " (double quote), = (equal sign), > (greater than), < (less than), or ' (single quote).

	description?: string

	// The Fabric ID field.
	// The name of the fabric interconnect that vHBAs created with this template are associated with.

	fabric?: string

	// The name of the virtual HBA template.
	// This name can be between 1 and 16 alphanumeric characters.
	// You cannot use spaces or any special characters other than - (hyphen), "_" (underscore), : (colon), and . (period).
	// You cannot change this name after the template is created.

	name: string

	// Org dn (distinguished name)

	org_dn?: string

	// The SAN pin group that is associated with vHBAs created from this template.

	pin_group?: string
}

ucs_ip_pool :: {

	// The network address prefix associated with the IPv6 addresses in the block.

	ipv6_prefix?: string

	// Org dn (distinguished name)

	org_dn?: string

	// The primary DNS server that this block of IPv4 addresses should access.

	primary_dns?: string

	// If C(present), will verify IP pool is present and will create if needed.
	// If C(absent), will verify IP pool is absent and will delete if needed.

	state?: string

	// The first IPv6 address in the IPv6 addresses block.
	// This is the From field in the UCS Manager Add IPv6 Blocks menu.

	ipv6_first_addr?: string

	// The last IPv6 address in the IPv6 addresses block.
	// This is the To field in the UCS Manager Add IPv6 Blocks menu.

	ipv6_last_addr?: string

	// The secondary DNS server that this block of IPv4 addresses should access.

	secondary_dns?: string

	// The first IPv4 address in the IPv4 addresses block.
	// This is the From field in the UCS Manager Add IPv4 Blocks menu.

	first_addr?: string

	// The primary DNS server that this block of IPv6 addresses should access.

	ipv6_primary_dns?: string

	// The name of the IP address pool.
	// This name can be between 1 and 32 alphanumeric characters.
	// You cannot use spaces or any special characters other than - (hyphen), "_" (underscore), : (colon), and . (period).
	// You cannot change this name after the IP address pool is created.

	name: string

	// The Assignment Order field.
	// This can be one of the following:
	// default - Cisco UCS Manager selects a random identity from the pool.
	// sequential - Cisco UCS Manager selects the lowest available identity from the pool.

	order?: string

	// The subnet mask associated with the IPv4 addresses in the block.

	subnet_mask?: string

	// The default gateway associated with the IPv6 addresses in the block.

	ipv6_default_gw?: string

	// The secondary DNS server that this block of IPv6 addresses should access.

	ipv6_secondary_dns?: string

	// The last IPv4 address in the IPv4 addresses block.
	// This is the To field in the UCS Manager Add IPv4 Blocks menu.

	last_addr?: string

	// The default gateway associated with the IPv4 addresses in the block.

	default_gw?: string

	// The user-defined description of the IP address pool.
	// Enter up to 256 characters.
	// You can use any characters or spaces except the following:
	// ` (accent mark),  (backslash), ^ (carat), " (double quote), = (equal sign), > (greater than), < (less than), or ' (single quote).

	description?: string
}

ucs_query :: {

	// Where the module will be run

	delegate_to?: string

	// One or more UCS Manager Distinguished Names to query.
	// As a comma separated list

	distinguished_names?: string

	// One or more UCS Manager Class IDs to query.
	// As a comma separated list

	class_ids?: string
}

ucs_vlan_find :: {

	// The fabric configuration of the VLAN.  This can be one of the following:
	// common - The VLAN applies to both fabrics and uses the same configuration parameters in both cases.
	// A — The VLAN only applies to fabric A.
	// B — The VLAN only applies to fabric B.

	fabric?: string

	// Regex pattern to find within the name property of the fabricVlan class.
	// This is required if C(vlanid) parameter is not supplied.

	pattern?: string

	// The unique string identifier assigned to the VLAN.
	// A VLAN ID can be between '1' and '3967', or between '4048' and '4093'.
	// This is required if C(pattern) parameter is not supplied.

	vlanid?: string
}

ucs_vlans :: {

	// The multicast policy associated with this VLAN.
	// This option is only valid if the Sharing Type field is set to None or Primary.

	multicast_policy?: string

	// The name assigned to the VLAN.
	// The VLAN name is case sensitive.
	// This name can be between 1 and 32 alphanumeric characters.
	// You cannot use spaces or any special characters other than - (hyphen), "_" (underscore), : (colon), and . (period).
	// You cannot change this name after the VLAN is created.

	name: string

	// Designates the VLAN as a native VLAN.

	native?: string

	// The Sharing Type field.
	// Whether this VLAN is subdivided into private or secondary VLANs. This can be one of the following:
	// none - This VLAN does not have any secondary or private VLANs. This is a regular VLAN.
	// primary - This VLAN can have one or more secondary VLANs, as shown in the Secondary VLANs area. This VLAN is a primary VLAN in the private VLAN domain.
	// isolated - This is a private VLAN associated with a primary VLAN. This VLAN is an Isolated VLAN.
	// community - This VLAN can communicate with other ports on the same community VLAN as well as the promiscuous port. This VLAN is a Community VLAN.

	sharing?: string

	// If C(present), will verify VLANs are present and will create if needed.
	// If C(absent), will verify VLANs are absent and will delete if needed.

	state?: string

	// The fabric configuration of the VLAN.  This can be one of the following:
	// common - The VLAN applies to both fabrics and uses the same configuration parameters in both cases.
	// A — The VLAN only applies to fabric A.
	// B — The VLAN only applies to fabric B.
	// For upstream disjoint L2 networks, Cisco recommends that you choose common to create VLANs that apply to both fabrics.

	fabric?: string

	// The unique string identifier assigned to the VLAN.
	// A VLAN ID can be between '1' and '3967', or between '4048' and '4093'.
	// You cannot create VLANs with IDs from 4030 to 4047. This range of VLAN IDs is reserved.
	// The VLAN IDs you specify must also be supported on the switch that you are using.
	// VLANs in the LAN cloud and FCoE VLANs in the SAN cloud must have different IDs.
	// Optional if state is absent.

	id: string
}

wakeonlan :: {

	// MAC address to send Wake-on-LAN broadcast packet for.

	mac: string

	// UDP port to use for magic Wake-on-LAN packet.

	port?: string

	// Network broadcast address to use for broadcasting magic Wake-on-LAN packet.

	broadcast?: string
}

ucs_lan_connectivity :: {

	// The name of the LAN Connectivity Policy.
	// This name can be between 1 and 16 alphanumeric characters.
	// You cannot use spaces or any special characters other than - (hyphen), "_" (underscore), : (colon), and . (period).
	// You cannot change this name after the policy is created.

	name: string

	// Org dn (distinguished name)

	org_dn?: string

	// If C(present), will verify LAN Connectivity Policies are present and will create if needed.
	// If C(absent), will verify LAN Connectivity Policies are absent and will delete if needed.

	state?: string

	// List of vNICs used by the LAN Connectivity Policy.
	// vNICs used by the LAN Connectivity Policy must be created from a vNIC template.

	vnic_list?: string

	// A description of the LAN Connectivity Policy.
	// Cisco recommends including information about where and when to use the policy.
	// Enter up to 256 characters.
	// You can use any characters or spaces except the following:
	// ` (accent mark),  (backslash), ^ (carat), " (double quote), = (equal sign), > (greater than), < (less than), or ' (single quote).

	description?: string

	// List of iSCSI vNICs used by the LAN Connectivity Policy.

	iscsi_vnic_list?: string
}

ucs_org :: {

	// A user-defined description of the organization.
	// Enter up to 256 characters.
	// You can use any characters or spaces except the following:
	// ` (accent mark),  (backslash), ^ (carat), " (double quote), = (equal sign), > (greater than), < (less than), or ' (single quote).

	description?: string

	// The name of the organization.
	// Enter up to 16 characters.
	// You can use any characters or spaces except the following:
	// ` (accent mark),  (backslash), ^ (carat), " (double quote), = (equal sign), > (greater than), < (less than), or ' (single quote).

	org_name?: string

	// A forward slash / separated hierarchical path from the root organization to the parent of the organization to be added or updated.
	// UCS Manager supports a hierarchical structure of organizations up to five levels deep not including the root organization.
	// For example the parent_org_path for an organization named level5 could be root/level1/level2/level3/level4/level5

	parent_org_path?: string

	// If C(absent), will remove organization.
	// If C(present), will create or update organization.

	state?: string

	// Where the module will be run

	delegate_to?: string
}

ucs_san_connectivity :: {

	// A description of the policy.
	// Cisco recommends including information about where and when to use the policy.
	// Enter up to 256 characters.
	// You can use any characters or spaces except the following:
	// ` (accent mark),  (backslash), ^ (carat), " (double quote), = (equal sign), > (greater than), < (less than), or ' (single quote).

	description?: string

	// The name of the SAN Connectivity Policy.
	// This name can be between 1 and 16 alphanumeric characters.
	// You cannot use spaces or any special characters other than - (hyphen), "_" (underscore), : (colon), and . (period).
	// You cannot change this name after the policy is created.

	name: string

	// Org dn (distinguished name)

	org_dn?: string

	// If C(present), will verify SAN Connectivity Policies are present and will create if needed.
	// If C(absent), will verify SAN Connectivity Policies are absent and will delete if needed.

	state?: string

	// List of vHBAs used by the SAN Connectivity Policy.
	// vHBAs used by the SAN Connectivity Policy must be created from a vHBA template.
	// Each list element has the following suboptions:
	// = name
	//   The name of the virtual HBA (required).
	// = vhba_template
	//   The name of the virtual HBA template (required).
	// - adapter_policy
	//   The name of the Fibre Channel adapter policy.
	//   A user defined policy can be used, or one of the system defined policies (default, Linux, Solaris, VMware, Windows, WindowsBoot)
	//   [Default: default]
	// - order
	//   String specifying the vHBA assignment order (e.g., '1', '2').
	//   [Default: unspecified]

	vhba_list?: string

	// Name of the WWNN pool to use for WWNN assignment.

	wwnn_pool?: string
}

ucs_uuid_pool :: {

	// The user-defined description of the UUID pool.
	// Enter up to 256 characters.
	// You can use any characters or spaces except the following:
	// ` (accent mark),  (backslash), ^ (carat), " (double quote), = (equal sign), > (greater than), < (less than), or ' (single quote).

	description?: string

	// The first UUID in the block of UUIDs.
	// This is the From field in the UCS Manager UUID Blocks menu.

	first_uuid?: string

	// The last UUID in the block of UUIDs.
	// This is the To field in the UCS Manager Add UUID Blocks menu.

	last_uuid?: string

	// The name of the UUID pool.
	// This name can be between 1 and 32 alphanumeric characters.
	// You cannot use spaces or any special characters other than - (hyphen), "_" (underscore), : (colon), and . (period).
	// You cannot change this name after the UUID pool is created.

	name: string

	// The Assignment Order field.
	// This can be one of the following:
	// default - Cisco UCS Manager selects a random identity from the pool.
	// sequential - Cisco UCS Manager selects the lowest available identity from the pool.

	order?: string

	// The distinguished name (dn) of the organization where the resource is assigned.

	org_dn?: string

	// UUID prefix used for the range of server UUIDs.
	// If no value is provided, the system derived prefix will be used (equivalent to selecting 'derived' option in UI).
	// If the user provides a value, the user provided prefix will be used (equivalent to selecting 'other' option in UI).
	// A user provided value should be in the format XXXXXXXX-XXXX-XXXX.

	prefix?: string

	// If C(present), will verify UUID pool is present and will create if needed.
	// If C(absent), will verify UUID pool is absent and will delete if needed.

	state?: string
}

ucs_vsans :: {

	// The unique string identifier assigned to the VLAN used for Fibre Channel connections.
	// Note that Cisco UCS Manager uses VLAN '4048'.  See the UCS Manager configuration guide if you want to assign '4048' to a VLAN.
	// Optional if state is absent.

	vlan_id: string

	// The unique identifier assigned to the VSAN.
	// The ID can be a string between '1' and '4078', or between '4080' and '4093'. '4079' is a reserved VSAN ID.
	// In addition, if you plan to use FC end-host mode, the range between '3840' to '4079' is also a reserved VSAN ID range.
	// Optional if state is absent.

	vsan_id: string

	// The fabric configuration of the VSAN.  This can be one of the following:
	// common - The VSAN maps to the same VSAN ID in all available fabrics.
	// A - The VSAN maps to the a VSAN ID that exists only in fabric A.
	// B - The VSAN maps to the a VSAN ID that exists only in fabric B.

	fabric?: string

	// Fibre Channel zoning configuration for the Cisco UCS domain.
	// Fibre Channel zoning can be set to one of the following values:
	// disabled — The upstream switch handles Fibre Channel zoning, or Fibre Channel zoning is not implemented for the Cisco UCS domain.
	// enabled — Cisco UCS Manager configures and controls Fibre Channel zoning for the Cisco UCS domain.
	// If you enable Fibre Channel zoning, do not configure the upstream switch with any VSANs that are being used for Fibre Channel zoning.

	fc_zoning?: string

	// The name assigned to the VSAN.
	// This name can be between 1 and 32 alphanumeric characters.
	// You cannot use spaces or any special characters other than - (hyphen), "_" (underscore), : (colon), and . (period).
	// You cannot change this name after the VSAN is created.

	name: string

	// If C(present), will verify VSANs are present and will create if needed.
	// If C(absent), will verify VSANs are absent and will delete if needed.

	state?: string
}

ucs_wwn_pool :: {

	// Org dn (distinguished name)

	org_dn?: string

	// Specify whether this is a node (WWNN) or port (WWPN) pool.
	// Optional if state is absent.

	purpose: string

	// If C(present), will verify WWNNs/WWPNs are present and will create if needed.
	// If C(absent), will verify WWNNs/WWPNs are absent and will delete if needed.

	state?: string

	// A description of the WWNN or WWPN pool.
	// Enter up to 256 characters.
	// You can use any characters or spaces except the following:
	// ` (accent mark),  (backslash), ^ (carat), " (double quote), = (equal sign), > (greater than), < (less than), or ' (single quote).

	description?: string

	// The first initiator in the World Wide Name (WWN) block.
	// This is the From field in the UCS Manager Add WWN Blocks menu.

	first_addr?: string

	// The last initiator in the World Wide Name (WWN) block.
	// This is the To field in the UCS Manager Add WWN Blocks menu.
	// For WWxN pools, the pool size must be a multiple of ports-per-node + 1.
	// For example, if there are 7 ports per node, the pool size must be a multiple of 8.
	// If there are 63 ports per node, the pool size must be a multiple of 64.

	last_addr?: string

	// The name of the World Wide Node Name (WWNN) or World Wide Port Name (WWPN) pool.
	// This name can be between 1 and 32 alphanumeric characters.
	// You cannot use spaces or any special characters other than - (hyphen), "_" (underscore), : (colon), and . (period).
	// You cannot change this name after the WWNN or WWPN pool is created.

	name: string

	// The Assignment Order field.
	// This can be one of the following:
	// default - Cisco UCS Manager selects a random identity from the pool.
	// sequential - Cisco UCS Manager selects the lowest available identity from the pool.

	order?: string
}

ucs_disk_group_policy :: {

	// Configuration of virtual drive options.

	virtual_drive?: string

	// Disk group configuration mode. Choose one of the following:
	// automatic - Automatically configures the disks in the disk group.
	// manual - Enables you to manually configure the disks in the disk group.

	configuration_mode?: string

	// The user-defined description of the storage profile. Enter up to 256 characters. "You can use any characters or spaces except the following:" "` (accent mark), \ (backslash), ^ (carat), \" (double quote), = (equal sign), > (greater than), < (less than), or ' (single quote)."

	description?: string

	// The name of the disk group policy. This name can be between 1 and 16 alphanumeric characters.
	// You cannot use spaces or any special characters other than - (hyphen), "_" (underscore), : (colon), and . (period).
	// You cannot change this name after the policy is created.

	name: string

	// Specify the number of hot spares for the disk group.
	// This can be from 0 to 24.
	// Option only applies when configuration mode is automatic.

	num_ded_hot_spares?: string

	// Specify the number of drives for the disk group.
	// This can be from 0 to 24.
	// Option only applies when configuration mode is automatic.

	num_drives?: string

	// Specify the number of global hot spares for the disk group.
	// This can be from 0 to 24.
	// Option only applies when configuration mode is automatic.

	num_glob_hot_spares?: string

	// List of manually configured disks.
	// Options are only used when you choose manual configuration_mode.

	manual_disks?: string

	// Specify the minimum drive size or unspecified to allow all drive sizes.
	// This can be from 0 to 10240 GB.
	// Option only applies when configuration mode is automatic.

	min_drive_size?: string

	// The distinguished name (dn) of the organization where the resource is assigned.

	org_dn?: string

	// The RAID level for the disk group policy. This can be one of the following:
	// stripe - UCS Manager shows RAID 0 Striped
	// mirror - RAID 1 Mirrored
	// mirror-stripe - RAID 10 Mirrored and Striped
	// stripe-parity - RAID 5 Striped Parity
	// stripe-dual-parity - RAID 6 Striped Dual Parity
	// stripe-parity-stripe - RAID 50 Striped Parity and Striped
	// stripe-dual-parity-stripe - RAID 60 Striped Dual Parity and Striped

	raid_level?: string

	// Desired state of the disk group policy.
	// If C(present), will verify that the disk group policy is present and will create if needed.
	// If C(absent), will verify that the disk group policy is absent and will delete if needed.

	state?: string

	// Specify the drive type to use in the drive group.
	// This can be one of the following:
	// unspecified — Selects the first available drive type, and applies that to all drives in the group.
	// HDD — Hard disk drive
	// SSD — Solid state drive
	// Option only applies when configuration mode is automatic.

	drive_type?: string

	// Specifies whether you can use all the remaining disks in the disk group or not.
	// Option only applies when configuration mode is automatic.

	use_remaining_disks?: string
}

ucs_mac_pool :: {

	// A description of the MAC pool.
	// Enter up to 256 characters.
	// You can use any characters or spaces except the following:
	// ` (accent mark),  (backslash), ^ (carat), " (double quote), = (equal sign), > (greater than), < (less than), or ' (single quote).

	description?: string

	// The first MAC address in the block of addresses.
	// This is the From field in the UCS Manager MAC Blocks menu.

	first_addr?: string

	// The last MAC address in the block of addresses.
	// This is the To field in the UCS Manager Add MAC Blocks menu.

	last_addr?: string

	// The name of the MAC pool.
	// This name can be between 1 and 32 alphanumeric characters.
	// You cannot use spaces or any special characters other than - (hyphen), "_" (underscore), : (colon), and . (period).
	// You cannot change this name after the MAC pool is created.

	name: string

	// The Assignment Order field.
	// This can be one of the following:
	// default - Cisco UCS Manager selects a random identity from the pool.
	// sequential - Cisco UCS Manager selects the lowest available identity from the pool.

	order?: string

	// The distinguished name (dn) of the organization where the resource is assigned.

	org_dn?: string

	// If C(present), will verify MAC pool is present and will create if needed.
	// If C(absent), will verify MAC pool is absent and will delete if needed.

	state?: string
}

ucs_managed_objects :: {

	// List of managed objects to configure.  Each managed object has suboptions the specify the Python SDK module, class, and properties to configure.

	objects: string

	// If C(present), will verify that the Managed Objects are present and will create if needed.
	// If C(absent), will verify that the Managed Objects are absent and will delete if needed.

	state?: string
}

ucs_ntp_server :: {

	// NTP server IP address or hostname.
	// Enter up to 63 characters that form a valid hostname.
	// Enter a valid IPV4 Address.

	ntp_server?: string

	// If C(absent), will remove an NTP server.
	// If C(present), will add or update an NTP server.

	state?: string

	// A user-defined description of the NTP server.
	// Enter up to 256 characters.
	// You can use any characters or spaces except the following:
	// ` (accent mark),  (backslash), ^ (carat), " (double quote), = (equal sign), > (greater than), < (less than), or ' (single quote).

	description?: string
}

ucs_service_profile_template :: {

	// The name of the boot order policy you want to associate with service profiles created from this template.

	boot_policy?: string

	// If C(present), will verify Service Profile Templates are present and will create if needed.
	// If C(absent), will verify Service Profile Templates are absent and will delete if needed.

	state?: string

	// The name of the threshold policy you want to associate with service profiles created from this template.

	threshold_policy?: string

	// The name of the server pool policy qualification you want to use for this service profile template.

	server_pool_qualification?: string

	// Specifies how the UUID will be set on a server associated with a service profile created from this template.
	// The uuid_pool option can be the name of the UUID pool to use or '' (the empty string).
	// An empty string will use the UUID assigned to the server by the manufacturer, and the
	// UUID remains unassigned until a service profile created from this template is associated with a server. At that point,
	// the UUID is set to the UUID value assigned to the server by the manufacturer. If the service profile is later moved to
	// a different server, the UUID is changed to match the new server."

	uuid_pool?: string

	// The name of the KVM management policy you want to associate with service profiles created from this template.

	kvm_mgmt_policy?: string

	// The Management Interface you want to assign to service profiles created from this template.

	mgmt_interface_mode?: string

	// The name of the power sync policy you want to associate with service profiles created from this template.

	power_sync_policy?: string

	// The name of the scrub policy you want to associate with service profiles created from this template.

	scrub_policy?: string

	// The name of the server pool you want to associate with this service profile template.

	server_pool?: string

	// A user-defined description of the service profile template.
	// Enter up to 256 characters.
	// You can use any characters or spaces except the following:
	// ` (accent mark),  (backslash), ^ (carat), " (double quote), = (equal sign), > (greater than), < (less than), or ' (single quote).

	description?: string

	// The name of the IQN pool (initiator) you want to apply to all iSCSI vNICs for service profiles created from this template.

	iqn_pool?: string

	// The name of the maintenance policy you want to associate with service profiles created from this template.

	maintenance_policy?: string

	// How the inband management IPv4 address is derived for the server associated with this service profile.

	mgmt_inband_pool_name?: string

	// The User Label you want to assign to service profiles created from this template.

	user_label?: string

	// The name of the Serial over LAN (SoL) policy you want to associate with service profiles created from this template.

	sol_policy?: string

	// The name of the storage profile you want to associate with service profiles created from this template

	storage_profile?: string

	// The template type field which can be one of the following:
	// initial-template — Any service profiles created from this template are not updated if the template changes.
	// updating-template — Any service profiles created from this template are updated if the template changes.

	template_type?: string

	// The name of the BIOS policy you want to associate with service profiles created from this template.

	bios_policy?: string

	// The name of the graphics card policy you want to associate with service profiles created from this template.

	graphics_card_policy?: string

	// A VLAN selected from the associated VLAN group.

	mgmt_vnet_name?: string

	// The name of the service profile template.
	// This name can be between 2 and 32 alphanumeric characters.
	// You cannot use spaces or any special characters other than - (hyphen), "_" (underscore), : (colon), and . (period).
	// This name must be unique across all service profiles and service profile templates within the same organization.

	name: string

	// Org dn (distinguished name)

	org_dn?: string

	// The name of the host firmware package you want to associate with service profiles created from this template.

	host_firmware_package?: string

	// The name of the management IP pool you want to use with service profiles created from this template.

	mgmt_ip_pool?: string

	// The power state to be applied when a service profile created from this template is associated with a server.

	power_state?: string

	// The name of the vMedia policy you want to associate with service profiles created from this template.

	vmedia_policy?: string

	// The name of the LAN connectivity policy you want to associate with service profiles created from this template.

	lan_connectivity_policy?: string

	// The name of the power control policy you want to associate with service profiles created from this template.

	power_control_policy?: string

	// The name of the IPMI access profile you want to associate with service profiles created from this template.

	ipmi_access_profile?: string

	// The name of the local disk policy you want to associate with service profiles created from this template.

	local_disk_policy?: string

	// The name of the SAN connectivity policy you want to associate with service profiles created from this template.

	san_connectivity_policy?: string
}

ucs_vnic_template :: {

	// The Peer Redundancy Template.
	// The name of the vNIC template sharing a configuration with this template.
	// If the redundancy_type is primary, the name of the secondary template should be provided.
	// If the redundancy_type is secondary, the name of the primary template should be provided.
	// Secondary templates can only configure non-shared properties (name, description, and mac_pool).

	peer_redundancy_template?: string

	// List of VLANs used by the vNIC template.
	// Each list element has the following suboptions:
	// = name
	//   The name of the VLAN (required).
	// - native
	//   Designates the VLAN as a native VLAN.  Only one VLAN in the list can be a native VLAN.
	//   [choices: 'no', 'yes']
	//   [Default: 'no']
	// - state
	//   If present, will verify VLAN is present on template.
	//   If absent, will verify VLAN is absent on template.
	//   choices: [present, absent]
	//   default: present

	vlans_list?: string

	// CDN Name used when cdn_source is set to user-defined.

	cdn_name?: string

	// A user-defined description of the vNIC template.
	// Enter up to 256 characters.
	// You can use any characters or spaces except the following:
	// ` (accent mark),  (backslash), ^ (carat), " (double quote), = (equal sign), > (greater than), < (less than), or ' (single quote).

	description?: string

	// The Fabric ID field specifying the fabric interconnect associated with vNICs created from this template.
	// If you want fabric failover enabled on vNICs created from this template, use of of the following:"
	// A-B to use Fabric A by default with failover enabled.
	// B-A to use Fabric B by default with failover enabled.
	// Do not enable vNIC fabric failover under the following circumstances:
	// - If the Cisco UCS domain is running in Ethernet switch mode. vNIC fabric failover is not supported in that mode.
	// - If you plan to associate one or more vNICs created from this template to a server with an adapter that does not support fabric failover.

	fabric?: string

	// The network control policy that vNICs created from this vNIC template should use.

	network_control_policy?: string

	// The LAN pin group that vNICs created from this vNIC template should use.

	pin_group?: string

	// The Redundancy Type used for vNIC redundancy pairs during fabric failover.
	// This can be one of the following:
	// primary — Creates configurations that can be shared with the Secondary template.
	// secondary — All shared configurations are inherited from the Primary template.
	// none - Legacy vNIC template behavior. Select this option if you do not want to use redundancy.

	redundancy_type?: string

	// The Template Type field.
	// This can be one of the following:
	// initial-template — vNICs created from this template are not updated if the template changes.
	// updating-template - vNICs created from this template are updated if the template changes.

	template_type?: string

	// CDN Source field.
	// This can be one of the following options:
	// vnic-name - Uses the vNIC template name of the vNIC instance as the CDN name. This is the default option.
	// user-defined - Uses a user-defined CDN name for the vNIC template. If this option is chosen, cdn_name must also be provided.

	cdn_source?: string

	// The quality of service (QoS) policy that vNICs created from this vNIC template should use.

	qos_policy?: string

	// The statistics collection policy that vNICs created from this vNIC template should use.

	stats_policy?: string

	// The MAC address pool that vNICs created from this vNIC template should use.

	mac_pool?: string

	// The MTU field.
	// The maximum transmission unit, or packet size, that vNICs created from this vNIC template should use.
	// Enter a string between '1500' and '9000'.
	// If the vNIC template has an associated QoS policy, the MTU specified here must be equal to or less than the MTU specified in the QoS system class.

	mtu?: string

	// The name of the vNIC template.
	// This name can be between 1 and 16 alphanumeric characters.
	// You cannot use spaces or any special characters other than - (hyphen), "_" (underscore), : (colon), and . (period).
	// You cannot change this name after the template is created.

	name: string

	// Org dn (distinguished name)

	org_dn?: string

	// If C(present), will verify vNIC templates are present and will create if needed.
	// If C(absent), will verify vNIC templates are absent and will delete if needed.

	state?: string

	// The possible target for vNICs created from this template.
	// The target determines whether or not Cisco UCS Manager automatically creates a VM-FEX port profile with the appropriate settings for the vNIC template.
	// This can be one of the following:
	// adapter — The vNICs apply to all adapters. No VM-FEX port profile is created if you choose this option.
	// vm - The vNICs apply to all virtual machines. A VM-FEX port profile is created if you choose this option.

	target?: string
}
