package ansible

module: ce_evpn_bd_vni: {
	module:            "ce_evpn_bd_vni"
	version_added:     "2.4"
	short_description: "Manages EVPN VXLAN Network Identifier (VNI) on HUAWEI CloudEngine switches."
	description: [
		"Manages Ethernet Virtual Private Network (EVPN) VXLAN Network Identifier (VNI) configurations on HUAWEI CloudEngine switches.",
	]

	author: "Zhijin Zhou (@QijunPan)"
	notes: [
		"Ensure that EVPN has been configured to serve as the VXLAN control plane when state is present.",
		"Ensure that a bridge domain (BD) has existed when state is present.",
		"Ensure that a VNI has been created and associated with a broadcast domain (BD) when state is present.",
		"If you configure evpn:false to delete an EVPN instance, all configurations in the EVPN instance are deleted.",
		"After an EVPN instance has been created in the BD view, you can configure an RD using route_distinguisher parameter in BD-EVPN instance view.",
		"Before configuring VPN targets for a BD EVPN instance, ensure that an RD has been configured for the BD EVPN instance",
		"If you unconfigure route_distinguisher, all VPN target attributes for the BD EVPN instance will be removed at the same time.",
		"When using state:absent, evpn is not supported and it will be ignored.",
		"When using state:absent to delete VPN target attributes, ensure the configuration of VPN target attributes has existed and otherwise it will report an error.",
		"This module requires the netconf system service be enabled on the remote device being managed.",
		"Recommended connection is C(netconf).",
		"This module also works with C(local) connections for legacy playbooks.",
	]
	options: {
		bridge_domain_id: {
			description: [
				"Specify an existed bridge domain (BD).The value is an integer ranging from 1 to 16777215.",
			]
			required: true
		}
		evpn: {
			description: [
				"Create or delete an EVPN instance for a VXLAN in BD view.",
			]
			choices: ["enable", "disable"]
			default: "enable"
		}
		route_distinguisher: description: [
			"Configures a route distinguisher (RD) for a BD EVPN instance. The format of an RD can be as follows",
			"1) 2-byte AS number:4-byte user-defined number, for example, 1:3. An AS number is an integer ranging from 0 to 65535, and a user-defined number is an integer ranging from 0 to 4294967295. The AS and user-defined numbers cannot be both 0s. This means that an RD cannot be 0:0.",
			"2) Integral 4-byte AS number:2-byte user-defined number, for example, 65537:3. An AS number is an integer ranging from 65536 to 4294967295, and a user-defined number is an integer ranging from 0 to 65535.",
			"3) 4-byte AS number in dotted notation:2-byte user-defined number, for example, 0.0:3 or 0.1:0. A 4-byte AS number in dotted notation is in the format of x.y, where x and y are integers ranging from 0 to 65535.",
			"4) A user-defined number is an integer ranging from 0 to 65535. The AS and user-defined numbers cannot be both 0s. This means that an RD cannot be 0.0:0.",
			"5) 32-bit IP address:2-byte user-defined number. For example, 192.168.122.15:1. An IP address ranges from 0.0.0.0 to 255.255.255.255, and a user-defined number is an integer ranging from 0 to 65535.",
			"6) 'auto' specifies the RD that is automatically generated.",
		]
		vpn_target_both: description: [
			"Add VPN targets to both the import and export VPN target lists of a BD EVPN instance. The format is the same as route_distinguisher.",
		]

		vpn_target_import: {
			description: [
				"Add VPN targets to the import VPN target list of a BD EVPN instance. The format is the same as route_distinguisher.",
			]

			required: true
		}
		vpn_target_export: description: [
			"Add VPN targets to the export VPN target list of a BD EVPN instance. The format is the same as route_distinguisher.",
		]

		state: {
			description: [
				"Manage the state of the resource.",
			]
			choices: ["present", "absent"]
			default: "present"
		}
	}
}
