package ansible

module: fmgr_secprof_appctrl: {
	module:        "fmgr_secprof_appctrl"
	version_added: "2.8"
	notes: [
		"Full Documentation at U(https://ftnt-ansible-docs.readthedocs.io/en/latest/).",
	]
	author: [
		"Luke Weighall (@lweighall)",
		"Andrew Welsh (@Ghilli3)",
		"Jim Huber (@p4r4n0y1ng)",
	]
	short_description: "Manage application control security profiles"
	description: [
		"Manage application control security profiles within FortiManager",
	]

	options: {
		adom: {
			description: [
				"The ADOM the configuration should belong to.",
			]
			required: false
			default:  "root"
		}

		mode: {
			description: [
				"Sets one of three modes for managing the object.",
				"Allows use of soft-adds instead of overwriting existing values",
			]
			choices: ["add", "set", "delete", "update"]
			required: false
			default:  "add"
		}

		unknown_application_log: {
			description: [
				"Enable/disable logging for unknown applications.",
				"choice | disable | Disable logging for unknown applications.",
				"choice | enable | Enable logging for unknown applications.",
			]
			required: false
			choices: ["disable", "enable"]
		}

		unknown_application_action: {
			description: [
				"Pass or block traffic from unknown applications.",
				"choice | pass | Pass or allow unknown applications.",
				"choice | block | Drop or block unknown applications.",
			]
			required: false
			choices: ["pass", "block"]
		}

		replacemsg_group: {
			description: [
				"Replacement message group.",
			]
			required: false
		}

		p2p_black_list: {
			description: [
				"NO DESCRIPTION PARSED ENTER MANUALLY",
				"FLAG Based Options. Specify multiple in list form.",
				"flag | skype | Skype.",
				"flag | edonkey | Edonkey.",
				"flag | bittorrent | Bit torrent.",
			]
			required: false
			choices: ["skype", "edonkey", "bittorrent"]
		}

		other_application_log: {
			description: [
				"Enable/disable logging for other applications.",
				"choice | disable | Disable logging for other applications.",
				"choice | enable | Enable logging for other applications.",
			]
			required: false
			choices: ["disable", "enable"]
		}

		other_application_action: {
			description: [
				"Action for other applications.",
				"choice | pass | Allow sessions matching an application in this application list.",
				"choice | block | Block sessions matching an application in this application list.",
			]
			required: false
			choices: ["pass", "block"]
		}

		options: {
			description: [
				"NO DESCRIPTION PARSED ENTER MANUALLY",
				"FLAG Based Options. Specify multiple in list form.",
				"flag | allow-dns | Allow DNS.",
				"flag | allow-icmp | Allow ICMP.",
				"flag | allow-http | Allow generic HTTP web browsing.",
				"flag | allow-ssl | Allow generic SSL communication.",
				"flag | allow-quic | Allow QUIC.",
			]
			required: false
			choices: ["allow-dns", "allow-icmp", "allow-http", "allow-ssl", "allow-quic"]
		}

		name: {
			description: [
				"List name.",
			]
			required: false
		}

		extended_log: {
			description: [
				"Enable/disable extended logging.",
				"choice | disable | Disable setting.",
				"choice | enable | Enable setting.",
			]
			required: false
			choices: ["disable", "enable"]
		}

		deep_app_inspection: {
			description: [
				"Enable/disable deep application inspection.",
				"choice | disable | Disable deep application inspection.",
				"choice | enable | Enable deep application inspection.",
			]
			required: false
			choices: ["disable", "enable"]
		}

		comment: {
			description: [
				"comments",
			]
			required: false
		}

		app_replacemsg: {
			description: [
				"Enable/disable replacement messages for blocked applications.",
				"choice | disable | Disable replacement messages for blocked applications.",
				"choice | enable | Enable replacement messages for blocked applications.",
			]
			required: false
			choices: ["disable", "enable"]
		}

		entries: {
			description: [
				"EXPERTS ONLY! KNOWLEDGE OF FMGR JSON API IS REQUIRED!",
				"List of multiple child objects to be added. Expects a list of dictionaries.",
				"Dictionaries must use FortiManager API parameters, not the ansible ones listed below.",
				"If submitted, all other prefixed sub-parameters ARE IGNORED. This object is MUTUALLY EXCLUSIVE with its options.",
				"We expect that you know what you are doing with these list parameters, and are leveraging the JSON API Guide.",
				"WHEN IN DOUBT, OMIT THE USE OF THIS PARAMETER",
				"AND USE THE SUB OPTIONS BELOW INSTEAD TO CREATE OBJECTS WITH MULTIPLE TASKS",
			]
			required: false
		}

		entries_action: {
			description: [
				"Pass or block traffic, or reset connection for traffic from this application.",
				"choice | pass | Pass or allow matching traffic.",
				"choice | block | Block or drop matching traffic.",
				"choice | reset | Reset sessions for matching traffic.",
			]
			required: false
			choices: ["pass", "block", "reset"]
		}

		entries_application: {
			description: [
				"ID of allowed applications.",
			]
			required: false
		}

		entries_behavior: {
			description: [
				"Application behavior filter.",
			]
			required: false
		}

		entries_category: {
			description: [
				"Category ID list.",
			]
			required: false
		}

		entries_log: {
			description: [
				"Enable/disable logging for this application list.",
				"choice | disable | Disable logging.",
				"choice | enable | Enable logging.",
			]
			required: false
			choices: ["disable", "enable"]
		}

		entries_log_packet: {
			description: [
				"Enable/disable packet logging.",
				"choice | disable | Disable packet logging.",
				"choice | enable | Enable packet logging.",
			]
			required: false
			choices: ["disable", "enable"]
		}

		entries_per_ip_shaper: {
			description: [
				"Per-IP traffic shaper.",
			]
			required: false
		}

		entries_popularity: {
			description: [
				"Application popularity filter (1 - 5, from least to most popular).",
				"FLAG Based Options. Specify multiple in list form.",
				"flag | 1 | Popularity level 1.",
				"flag | 2 | Popularity level 2.",
				"flag | 3 | Popularity level 3.",
				"flag | 4 | Popularity level 4.",
				"flag | 5 | Popularity level 5.",
			]
			required: false
			choices: ["1", "2", "3", "4", "5"]
		}

		entries_protocols: {
			description: [
				"Application protocol filter.",
			]
			required: false
		}

		entries_quarantine: {
			description: [
				"Quarantine method.",
				"choice | none | Quarantine is disabled.",
				"choice | attacker | Block all traffic sent from attacker's IP address.",
				"The attacker's IP address is also added to the banned user list. The target's address is not affected.",
			]
			required: false
			choices: ["none", "attacker"]
		}

		entries_quarantine_expiry: {
			description: [
				"Duration of quarantine. (Format",
				"Requires quarantine set to attacker.",
			]
			//##d##h##m, minimum 1m, maximum 364d23h59m, default = 5m).
			required: false
		}

		entries_quarantine_log: {
			description: [
				"Enable/disable quarantine logging.",
				"choice | disable | Disable quarantine logging.",
				"choice | enable | Enable quarantine logging.",
			]
			required: false
			choices: ["disable", "enable"]
		}

		entries_rate_count: {
			description: [
				"Count of the rate.",
			]
			required: false
		}

		entries_rate_duration: {
			description: [
				"Duration (sec) of the rate.",
			]
			required: false
		}

		entries_rate_mode: {
			description: [
				"Rate limit mode.",
				"choice | periodical | Allow configured number of packets every rate-duration.",
				"choice | continuous | Block packets once the rate is reached.",
			]
			required: false
			choices: ["periodical", "continuous"]
		}

		entries_rate_track: {
			description: [
				"Track the packet protocol field.",
				"choice | none |",
				"choice | src-ip | Source IP.",
				"choice | dest-ip | Destination IP.",
				"choice | dhcp-client-mac | DHCP client.",
				"choice | dns-domain | DNS domain.",
			]
			required: false
			choices: ["none", "src-ip", "dest-ip", "dhcp-client-mac", "dns-domain"]
		}

		entries_risk: {
			description: [
				"Risk, or impact, of allowing traffic from this application to occur 1 - 5;",
				"(Low, Elevated, Medium, High, and Critical).",
			]
			required: false
		}

		entries_session_ttl: {
			description: [
				"Session TTL (0 = default).",
			]
			required: false
		}

		entries_shaper: {
			description: [
				"Traffic shaper.",
			]
			required: false
		}

		entries_shaper_reverse: {
			description: [
				"Reverse traffic shaper.",
			]
			required: false
		}

		entries_sub_category: {
			description: [
				"Application Sub-category ID list.",
			]
			required: false
		}

		entries_technology: {
			description: [
				"Application technology filter.",
			]
			required: false
		}

		entries_vendor: {
			description: [
				"Application vendor filter.",
			]
			required: false
		}

		entries_parameters_value: {
			description: [
				"Parameter value.",
			]
			required: false
		}
	}
}
