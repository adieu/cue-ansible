package ansible

module: fmgr_ha: {
	module:        "fmgr_ha"
	version_added: "2.8"
	notes: [
		"Full Documentation at U(https://ftnt-ansible-docs.readthedocs.io/en/latest/).",
	]
	author: [
		"Luke Weighall (@lweighall)",
		"Andrew Welsh (@Ghilli3)",
		"Jim Huber (@p4r4n0y1ng)",
	]
	short_description: "Manages the High-Availability State of FortiManager Clusters and Nodes."
	description:       "Change HA state or settings of FortiManager nodes (Standalone/Master/Slave)."

	options: {
		fmgr_ha_mode: {
			description: [
				"Sets the role of the FortiManager host for HA.",
			]
			required: false
			choices: ["standalone", "master", "slave"]
		}

		fmgr_ha_peer_ipv4: {
			description: [
				"Sets the IPv4 address of a HA peer.",
			]
			required: false
		}

		fmgr_ha_peer_ipv6: {
			description: [
				"Sets the IPv6 address of a HA peer.",
			]
			required: false
		}

		fmgr_ha_peer_sn: {
			description: [
				"Sets the HA Peer Serial Number.",
			]
			required: false
		}

		fmgr_ha_peer_status: {
			description: [
				"Sets the peer status to enable or disable.",
			]
			required: false
			choices: ["enable", "disable"]
		}

		fmgr_ha_cluster_pw: {
			description: [
				"Sets the password for the HA cluster. Only required once. System remembers between HA mode switches.",
			]
			required: false
		}

		fmgr_ha_cluster_id: {
			description: [
				"Sets the ID number of the HA cluster. Defaults to 1.",
			]
			required: false
			default:  1
		}

		fmgr_ha_hb_threshold: {
			description: [
				"Sets heartbeat lost threshold (1-255).",
			]
			required: false
			default:  3
		}

		fmgr_ha_hb_interval: {
			description: [
				"Sets the heartbeat interval (1-255).",
			]
			required: false
			default:  5
		}

		fmgr_ha_file_quota: {
			description: [
				"Sets the File quota in MB (2048-20480).",
			]
			required: false
			default:  4096
		}
	}
}
