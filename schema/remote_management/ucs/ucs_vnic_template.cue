package ansible

module: ucs_vnic_template: {
	module:            "ucs_vnic_template"
	short_description: "Configures vNIC templates on Cisco UCS Manager"
	description: [
		"Configures vNIC templates on Cisco UCS Manager.",
		"Examples can be used with the UCS Platform Emulator U(https://communities.cisco.com/ucspe).",
	]
	extends_documentation_fragment: "ucs"
	options: {
		state: {
			description: [
				"If C(present), will verify vNIC templates are present and will create if needed.",
				"If C(absent), will verify vNIC templates are absent and will delete if needed.",
			]
			choices: ["present", "absent"]
			default: "present"
		}
		name: {
			description: [
				"The name of the vNIC template.",
				"This name can be between 1 and 16 alphanumeric characters.",
				"You cannot use spaces or any special characters other than - (hyphen), \"_\" (underscore), : (colon), and . (period).",
				"You cannot change this name after the template is created.",
			]
			required: true
		}
		description: {
			description: [
				"A user-defined description of the vNIC template.",
				"Enter up to 256 characters.",
				"You can use any characters or spaces except the following:",
				"` (accent mark),  (backslash), ^ (carat), \" (double quote), = (equal sign), > (greater than), < (less than), or ' (single quote).",
			]
			aliases: ["descr"]
		}
		fabric: {
			description: [
				"The Fabric ID field specifying the fabric interconnect associated with vNICs created from this template.",
				"If you want fabric failover enabled on vNICs created from this template, use of of the following:\"",
				"A-B to use Fabric A by default with failover enabled.",
				"B-A to use Fabric B by default with failover enabled.",
				"Do not enable vNIC fabric failover under the following circumstances:",
				"- If the Cisco UCS domain is running in Ethernet switch mode. vNIC fabric failover is not supported in that mode.",
				"- If you plan to associate one or more vNICs created from this template to a server with an adapter that does not support fabric failover.",
			]
			choices: ["A", "B", "A-B", "B-A"]
			default: "A"
		}
		redundancy_type: {
			description: [
				"The Redundancy Type used for vNIC redundancy pairs during fabric failover.",
				"This can be one of the following:",
				"primary — Creates configurations that can be shared with the Secondary template.",
				"secondary — All shared configurations are inherited from the Primary template.",
				"none - Legacy vNIC template behavior. Select this option if you do not want to use redundancy.",
			]
			choices: ["none", "primary", "secondary"]
			default: "none"
		}, peer_redundancy_template: {

			description: [
				"The Peer Redundancy Template.",
				"The name of the vNIC template sharing a configuration with this template.",
				"If the redundancy_type is primary, the name of the secondary template should be provided.",
				"If the redundancy_type is secondary, the name of the primary template should be provided.",
				"Secondary templates can only configure non-shared properties (name, description, and mac_pool).",
			]
			aliases: ["peer_redundancy_templ"]
		}, target: {

			description: [
				"The possible target for vNICs created from this template.",
				"The target determines whether or not Cisco UCS Manager automatically creates a VM-FEX port profile with the appropriate settings for the vNIC template.",
				"This can be one of the following:",
				"adapter — The vNICs apply to all adapters. No VM-FEX port profile is created if you choose this option.",
				"vm - The vNICs apply to all virtual machines. A VM-FEX port profile is created if you choose this option.",
			], default:
				"adapter"
		}, template_type: {
			description: [
				"The Template Type field.",
				"This can be one of the following:",
				"initial-template — vNICs created from this template are not updated if the template changes.",
				"updating-template - vNICs created from this template are updated if the template changes.",
			]
			choices: ["initial-template", "updating-template"], default:
				"initial-template"
		}, vlans_list: description: [
			"List of VLANs used by the vNIC template.",
			"Each list element has the following suboptions:",
			"= name",
			"  The name of the VLAN (required).",
			"- native",
			"  Designates the VLAN as a native VLAN.  Only one VLAN in the list can be a native VLAN.",
			"  [choices: 'no', 'yes']",
			"  [Default: 'no']",
			"- state",
			"  If present, will verify VLAN is present on template.",
			"  If absent, will verify VLAN is absent on template.",
			"  choices: [present, absent]",
			"  default: present",
		]
		cdn_source: {
			description: [
				"CDN Source field.",
				"This can be one of the following options:",
				"vnic-name - Uses the vNIC template name of the vNIC instance as the CDN name. This is the default option.",
				"user-defined - Uses a user-defined CDN name for the vNIC template. If this option is chosen, cdn_name must also be provided.",
			]
			choices: ["vnic-name", "user-defined"], default:
				"vnic-name"
		}, cdn_name: description: [
			"CDN Name used when cdn_source is set to user-defined.",
		]
		mtu: {
			description: [
				"The MTU field.",
				"The maximum transmission unit, or packet size, that vNICs created from this vNIC template should use.",
				"Enter a string between '1500' and '9000'.",
				"If the vNIC template has an associated QoS policy, the MTU specified here must be equal to or less than the MTU specified in the QoS system class.",
			]
			default:
				"1500"
		}, mac_pool: description: [
			"The MAC address pool that vNICs created from this vNIC template should use.",
		]
		qos_policy: description: [
			"The quality of service (QoS) policy that vNICs created from this vNIC template should use.",
		]
		network_control_policy: description: [
			"The network control policy that vNICs created from this vNIC template should use.",
		]
		pin_group: description: [
			"The LAN pin group that vNICs created from this vNIC template should use.",
		]
		stats_policy: {
			description: [
				"The statistics collection policy that vNICs created from this vNIC template should use.",
			]
			default:
				"default"
		}, org_dn: {
			description: [
				"Org dn (distinguished name)",
			]
			default:
				"org-root"
		}
	}, requirements: [
		"ucsmsdk",
	]
	author: [
		"David Soper (@dsoper2)",
		"CiscoUcs (@CiscoUcs)",
	]
	version_added:
		"2.5"
}
