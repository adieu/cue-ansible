package ansible

module: ucs_service_profile_template: {
	module:            "ucs_service_profile_template"
	short_description: "Configures Service Profile Templates on Cisco UCS Manager"
	description: [
		"Configures Service Profile Templates on Cisco UCS Manager.",
		"Examples can be used with the UCS Platform Emulator U(https://communities.cisco.com/ucspe).",
	]
	extends_documentation_fragment: "ucs"
	options: {
		state: {
			description: [
				"If C(present), will verify Service Profile Templates are present and will create if needed.",
				"If C(absent), will verify Service Profile Templates are absent and will delete if needed.",
			]
			choices: ["present", "absent"]
			default: "present"
		}
		name: {
			description: [
				"The name of the service profile template.",
				"This name can be between 2 and 32 alphanumeric characters.",
				"You cannot use spaces or any special characters other than - (hyphen), \"_\" (underscore), : (colon), and . (period).",
				"This name must be unique across all service profiles and service profile templates within the same organization.",
			]
			required: true
		}
		template_type: {
			description: [
				"The template type field which can be one of the following:",
				"initial-template — Any service profiles created from this template are not updated if the template changes.",
				"updating-template — Any service profiles created from this template are updated if the template changes.",
			]
			choices: ["initial-template", "updating-template"]
			default: "initial-template"
		}, uuid_pool: {

			description: [
				"Specifies how the UUID will be set on a server associated with a service profile created from this template.",
				"The uuid_pool option can be the name of the UUID pool to use or '' (the empty string).",
				"An empty string will use the UUID assigned to the server by the manufacturer, and the",
				"UUID remains unassigned until a service profile created from this template is associated with a server. At that point,",
				"the UUID is set to the UUID value assigned to the server by the manufacturer. If the service profile is later moved to",
				"a different server, the UUID is changed to match the new server.\"",
			]
			default: "default"
		}, description: {

			description: [
				"A user-defined description of the service profile template.",
				"Enter up to 256 characters.",
				"You can use any characters or spaces except the following:",
				"` (accent mark),  (backslash), ^ (carat), \" (double quote), = (equal sign), > (greater than), < (less than), or ' (single quote).",
			]
			aliases: ["descr"]
		}, storage_profile: description: ["The name of the storage profile you want to associate with service profiles created from this template"], local_disk_policy: description: ["The name of the local disk policy you want to associate with service profiles created from this template."], lan_connectivity_policy: description: ["The name of the LAN connectivity policy you want to associate with service profiles created from this template."], iqn_pool: description: ["The name of the IQN pool (initiator) you want to apply to all iSCSI vNICs for service profiles created from this template."], san_connectivity_policy: description: ["The name of the SAN connectivity policy you want to associate with service profiles created from this template."], vmedia_policy: description: ["The name of the vMedia policy you want to associate with service profiles created from this template."], boot_policy: {

			description: ["The name of the boot order policy you want to associate with service profiles created from this template."]
			default: "default"
		}, maintenance_policy: description: ["The name of the maintenance policy you want to associate with service profiles created from this template."], server_pool: description: ["The name of the server pool you want to associate with this service profile template."], server_pool_qualification: description: ["The name of the server pool policy qualification you want to use for this service profile template."], power_state: {

			description: ["The power state to be applied when a service profile created from this template is associated with a server."]
			choices: ["up", "down"]
			default: "up"
		}, host_firmware_package: description: ["The name of the host firmware package you want to associate with service profiles created from this template."], bios_policy: description: ["The name of the BIOS policy you want to associate with service profiles created from this template."], ipmi_access_profile: description: ["The name of the IPMI access profile you want to associate with service profiles created from this template."], sol_policy: description: ["The name of the Serial over LAN (SoL) policy you want to associate with service profiles created from this template."], mgmt_ip_pool: {

			description: ["The name of the management IP pool you want to use with service profiles created from this template."]
			default: "ext-mgmt"
		}, power_control_policy: {

			description: ["The name of the power control policy you want to associate with service profiles created from this template."]
			default: "default"
		}, power_sync_policy: description: ["The name of the power sync policy you want to associate with service profiles created from this template."], scrub_policy: description: ["The name of the scrub policy you want to associate with service profiles created from this template."], kvm_mgmt_policy: description: ["The name of the KVM management policy you want to associate with service profiles created from this template."], graphics_card_policy: description: ["The name of the graphics card policy you want to associate with service profiles created from this template."], threshold_policy: {

			description: ["The name of the threshold policy you want to associate with service profiles created from this template."]
			default: "default"
		}, user_label: description: ["The User Label you want to assign to service profiles created from this template."], mgmt_interface_mode: {

			description: ["The Management Interface you want to assign to service profiles created from this template."]
			choices: ["", "in-band"]
		}, mgmt_vnet_name: description: ["A VLAN selected from the associated VLAN group."], mgmt_inband_pool_name: description: ["How the inband management IPv4 address is derived for the server associated with this service profile."], org_dn: {

			description: ["Org dn (distinguished name)"]
			default: "org-root"
		}
	}, requirements: [
		"ucsmsdk",
	]
	author: [
		"David Soper (@dsoper2)",
		"CiscoUcs (@CiscoUcs)",
	]
	version_added:
		"2.8"
}
