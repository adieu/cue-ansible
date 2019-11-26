package ansible

module: vmware_host: {
	module:            "vmware_host"
	short_description: "Add, remove, or move an ESXi host to, from, or within vCenter"
	description: [
		"This module can be used to add, reconnect, or remove an ESXi host to or from vCenter.",
		"This module can also be used to move an ESXi host to a cluster or folder, or vice versa, within the same datacenter.",
	]
	version_added: "2.0"
	author: [
		"Joseph Callen (@jcpowermac)",
		"Russell Teague (@mtnbikenc)",
		"Maxime de Roucy (@tchernomax)",
		"Christian Kotte (@ckotte)",
	]
	notes: [
		"Tested on vSphere 5.5, 6.0, 6.5 and 6.7",
	]
	requirements: [
		"python >= 2.6",
		"PyVmomi",
		"ssl",
		"socket",
		"hashlib",
	]
	options: {
		datacenter_name: {
			description: [
				"Name of the datacenter to add the host.",
				"Aliases added in version 2.6.",
			]
			required: true
			aliases: ["datacenter"]
			type: "str"
		}
		cluster_name: {
			description: [
				"Name of the cluster to add the host.",
				"If C(folder) is not set, then this parameter is required.",
				"Aliases added in version 2.6.",
			]
			aliases: ["cluster"]
			type: "str"
		}
		folder: {
			description: [
				"Name of the folder under which host to add.",
				"If C(cluster_name) is not set, then this parameter is required.",
				"For example, if there is a datacenter 'dc1' under folder called 'Site1' then, this value will be '/Site1/dc1/host'.",
				"Here 'host' is an invisible folder under VMware Web Client.",
				"Another example, if there is a nested folder structure like '/myhosts/india/pune' under datacenter 'dc2', then C(folder) value will be '/dc2/host/myhosts/india/pune'.",
				"Other Examples: ",
				"  - '/Site2/dc2/Asia-Cluster/host'",
				"  - '/dc3/Asia-Cluster/host'",
			]
			version_added: "2.6"
			aliases: ["folder_name"]
			type: "str"
		}
		add_connected: {
			description: [
				"If set to C(True), then the host should be connected as soon as it is added.",
				"This parameter is ignored if state is set to a value other than C(present).",
			]
			default:       true
			type:          "bool"
			version_added: "2.6"
		}
		esxi_hostname: {
			description: [
				"ESXi hostname to manage.",
			]
			required: true
			type:     "str"
		}
		esxi_username: {
			description: [
				"ESXi username.",
				"Required for adding a host.",
				"Optional for reconnect. If both C(esxi_username) and C(esxi_password) are used",
				"Unused for removing.",
				"No longer a required parameter from version 2.5.",
			]
			type: "str"
		}
		esxi_password: {
			description: [
				"ESXi password.",
				"Required for adding a host.",
				"Optional for reconnect.",
				"Unused for removing.",
				"No longer a required parameter from version 2.5.",
			]
			type: "str"
		}
		state: {
			description: [
				"If set to C(present), add the host if host is absent.",
				"If set to C(present), update the location of the host if host already exists.",
				"If set to C(absent), remove the host if host is present.",
				"If set to C(absent), do nothing if host already does not exists.",
				"If set to C(add_or_reconnect), add the host if it's absent else reconnect it and update the location.",
				"If set to C(reconnect), then reconnect the host if it's present and update the location.",
			]
			default: "present"
			choices: ["present", "absent", "add_or_reconnect", "reconnect"]
			type: "str"
		}
		esxi_ssl_thumbprint: {
			description: [
				"Specifying the hostsystem certificate's thumbprint.",
				"Use following command to get hostsystem certificate's thumbprint - ",
				"# openssl x509 -in /etc/vmware/ssl/rui.crt -fingerprint -sha1 -noout",
				"Only used if C(fetch_thumbprint) isn't set to C(true).",
			]
			version_added: 2.5
			default:       ""
			type:          "str"
			aliases: ["ssl_thumbprint"]
		}
		fetch_ssl_thumbprint: {
			description: [
				"Fetch the thumbprint of the host's SSL certificate.",
				"This basically disables the host certificate verification (check if it was signed by a recognized CA).",
				"Disable this option if you want to allow only hosts with valid certificates to be added to vCenter.",
				"If this option is set to C(false) and the certificate can't be verified, an add or reconnect will fail.",
				"Unused when C(esxi_ssl_thumbprint) is set.",
				"Optional for reconnect, but only used if C(esxi_username) and C(esxi_password) are used.",
				"Unused for removing.",
			]
			type:          "bool"
			version_added: 2.8
			default:       true
		}
		force_connection: {
			description: [
				"Force the connection if the host is already being managed by another vCenter server.",
			]
			type:          "bool"
			version_added: 2.8
			default:       true
		}
		reconnect_disconnected: {
			description: [
				"Reconnect disconnected hosts.",
				"This is only used if C(state) is set to C(present) and if the host already exists.",
			]
			type:          "bool"
			version_added: 2.8
			default:       true
		}
	}
	extends_documentation_fragment: "vmware.documentation"
}
