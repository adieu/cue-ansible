package ansible

module: gce_net: {
	module:            "gce_net"
	version_added:     "1.5"
	short_description: "create/destroy GCE networks and firewall rules"
	description: [
		"This module can create and destroy Google Compute Engine networks and firewall rules U(https://cloud.google.com/compute/docs/networking). The I(name) parameter is reserved for referencing a network while the I(fwname) parameter is used to reference firewall rules. IPv4 Address ranges must be specified using the CIDR U(http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing) format. Full install/configuration instructions for the gce* modules can be found in the comments of ansible/test/gce_tests.py.",
	]

	options: {
		allowed: description: [
			"the protocol:ports to allow (I(tcp:80) or I(tcp:80,443) or I(tcp:80-800;udp:1-25)) this parameter is mandatory when creating or updating a firewall rule",
		]

		ipv4_range: {
			description: [
				"the IPv4 address range in CIDR notation for the network this parameter is not mandatory when you specified existing network in name parameter, but when you create new network, this parameter is mandatory",
			]

			aliases: ["cidr"]
		}
		fwname: {
			description: [
				"name of the firewall rule",
			]
			aliases: ["fwrule"]
		}
		name: description: [
			"name of the network",
		]
		src_range: {
			description: [
				"the source IPv4 address range in CIDR notation",
			]
			default: []
			aliases: ["src_cidr"]
		}
		src_tags: {
			description: [
				"the source instance tags for creating a firewall rule",
			]
			default: []
		}
		target_tags: {
			version_added: "1.9"
			description: [
				"the target instance tags for creating a firewall rule",
			]
			default: []
		}
		state: {
			description: [
				"desired state of the network or firewall",
			]
			default: "present"
			choices: ["active", "present", "absent", "deleted"]
		}
		service_account_email: {
			version_added: "1.6"
			description: [
				"service account email",
			]
		}
		pem_file: {
			version_added: "1.6"
			description: [
				"path to the pem file associated with the service account email This option is deprecated. Use C(credentials_file).",
			]
		}

		credentials_file: {
			version_added: "2.1.0"
			description: [
				"path to the JSON file associated with the service account email",
			]
		}
		project_id: {
			version_added: "1.6"
			description: [
				"your GCE project ID",
			]
		}
		mode: {
			version_added: "2.2"
			description: [
				"network mode for Google Cloud C(legacy) indicates a network with an IP address range; C(auto) automatically generates subnetworks in different regions; C(custom) uses networks to group subnets of user specified IP address ranges https://cloud.google.com/compute/docs/networking#network_types",
			]

			default: "legacy"
			choices: ["legacy", "auto", "custom"]
		}
		subnet_name: {
			version_added: "2.2"
			description: [
				"name of subnet to create",
			]
		}
		subnet_region: {
			version_added: "2.2"
			description: [
				"region of subnet to create",
			]
		}
		subnet_desc: {
			version_added: "2.2"
			description: [
				"description of subnet to create",
			]
		}
	}

	requirements: [
		"python >= 2.6",
		"apache-libcloud >= 0.13.3, >= 0.17.0 if using JSON credentials",
	]
	author: "Eric Johnson (@erjohnso) <erjohnso@google.com>, Tom Melendez (@supertom) <supertom@google.com>"
}
