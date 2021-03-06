package ansible

module: iptables: {
	module:            "iptables"
	short_description: "Modify iptables rules"
	version_added:     "2.0"
	author: [
		"Linus Unnebäck (@LinusU) <linus@folkdatorn.se>",
		"Sébastien DA ROCHA (@sebastiendarocha)",
	], description: [
		"C(iptables) is used to set up, maintain, and inspect the tables of IP packet filter rules in the Linux kernel.",
		"This module does not handle the saving and/or loading of rules, but rather only manipulates the current rules that are present in memory. This is the same as the behaviour of the C(iptables) and C(ip6tables) command which this module uses internally.",
	]

	notes: [
		"This module just deals with individual rules.If you need advanced chaining of rules the recommended way is to template the iptables restore file.",
	]

	options: {

		table: {
			description: [
				"This option specifies the packet matching table which the command should operate on.",
				"If the kernel is configured with automatic module loading, an attempt will be made to load the appropriate module for that table if it is not already there.",
			]

			type: "str"
			choices: ["filter", "nat", "mangle", "raw", "security"]
			default: "filter"
		}
		state: {
			description: ["Whether the rule should be absent or present."]
			type: "str"
			choices: ["absent", "present"]
			default: "present"
		}
		action: {
			description: [
				"Whether the rule should be appended at the bottom or inserted at the top.",
				"If the rule already exists the chain will not be modified.",
			]
			type: "str"
			choices: ["append", "insert"]
			default:       "append"
			version_added: "2.2"
		}
		rule_num: {
			description: [
				"Insert the rule as the given rule number.",
				"This works only with C(action=insert).",
			]
			type:          "str"
			version_added: "2.5"
		}
		ip_version: {
			description: ["Which version of the IP protocol this rule should apply to."]
			type: "str"
			choices: ["ipv4", "ipv6"]
			default: "ipv4"
		}
		chain: {
			description: [
				"Specify the iptables chain to modify.",
				"This could be a user-defined chain or one of the standard iptables chains, like C(INPUT), C(FORWARD), C(OUTPUT), C(PREROUTING), C(POSTROUTING), C(SECMARK) or C(CONNSECMARK).",
			]

			type: "str"
		}
		protocol: {
			description: [
				"The protocol of the rule or of the packet to check.",
				"The specified protocol can be one of C(tcp), C(udp), C(udplite), C(icmp), C(esp), C(ah), C(sctp) or the special keyword C(all), or it can be a numeric value, representing one of these protocols or a different one.",
				"A protocol name from I(/etc/protocols) is also allowed.",
				"A C(!) argument before the protocol inverts the test.",
				"The number zero is equivalent to all.",
				"C(all) will match with all protocols and is taken as default when this option is omitted.",
			]
			type: "str"
		}
		source: {
			description: [
				"Source specification.",
				"Address can be either a network name, a hostname, a network IP address (with /mask), or a plain IP address.",
				"Hostnames will be resolved once only, before the rule is submitted to the kernel. Please note that specifying any name to be resolved with a remote query such as DNS is a really bad idea.",
				"The mask can be either a network mask or a plain number, specifying the number of 1's at the left side of the network mask. Thus, a mask of 24 is equivalent to 255.255.255.0. A C(!) argument before the address specification inverts the sense of the address.",
			]

			type: "str"
		}
		destination: {
			description: [
				"Destination specification.",
				"Address can be either a network name, a hostname, a network IP address (with /mask), or a plain IP address.",
				"Hostnames will be resolved once only, before the rule is submitted to the kernel. Please note that specifying any name to be resolved with a remote query such as DNS is a really bad idea.",
				"The mask can be either a network mask or a plain number, specifying the number of 1's at the left side of the network mask. Thus, a mask of 24 is equivalent to 255.255.255.0. A C(!) argument before the address specification inverts the sense of the address.",
			]

			type: "str"
		}
		tcp_flags: {
			description: [
				"TCP flags specification.",
				"C(tcp_flags) expects a dict with the two keys C(flags) and C(flags_set).",
			]
			type: "dict"
			default: {}
			version_added: "2.4"
			suboptions: {
				flags: {
					description: ["List of flags you want to examine."]
					type: "list"
				}
				flags_set: {
					description: ["Flags to be set."]
					type: "list"
				}
			}
		}
		match: {
			description: [
				"Specifies a match to use, that is, an extension module that tests for a specific property.",
				"The set of matches make up the condition under which a target is invoked.",
				"Matches are evaluated first to last if specified as an array and work in short-circuit fashion, i.e. if one extension yields false, evaluation will stop.",
			]

			type: "list"
			default: []
		}
		jump: {
			description: [
				"This specifies the target of the rule; i.e., what to do if the packet matches it.",
				"The target can be a user-defined chain (other than the one this rule is in), one of the special builtin targets which decide the fate of the packet immediately, or an extension (see EXTENSIONS below).",
				"If this option is omitted in a rule (and the goto parameter is not used), then matching the rule will have no effect on the packet's fate, but the counters on the rule will be incremented.",
			]

			type: "str"
		}
		gateway: {
			description: [
				"This specifies the IP address of host to send the cloned packets.",
				"This option is only valid when C(jump) is set to C(TEE).",
			]
			type:          "str"
			version_added: "2.8"
		}
		log_prefix: {
			description: ["Specifies a log text for the rule. Only make sense with a LOG jump."]
			type:          "str"
			version_added: "2.5"
		}
		log_level: {
			description: [
				"Logging level according to the syslogd-defined priorities.",
				"The value can be strings or numbers from 1-8.",
				"This parameter is only applicable if C(jump) is set to C(LOG).",
			]
			type:          "str"
			version_added: "2.8"
			choices: ["0", "1", "2", "3", "4", "5", "6", "7", "emerg", "alert", "crit", "error", "warning", "notice", "info", "debug"]
		}
		goto: {
			description: [
				"This specifies that the processing should continue in a user specified chain.",
				"Unlike the jump argument return will not continue processing in this chain but instead in the chain that called us via jump.",
			]

			type: "str"
		}
		in_interface: {
			description: [
				"Name of an interface via which a packet was received (only for packets entering the C(INPUT), C(FORWARD) and C(PREROUTING) chains).",
				"When the C(!) argument is used before the interface name, the sense is inverted.",
				"If the interface name ends in a C(+), then any interface which begins with this name will match.",
				"If this option is omitted, any interface name will match.",
			]
			type: "str"
		}
		out_interface: {
			description: [
				"Name of an interface via which a packet is going to be sent (for packets entering the C(FORWARD), C(OUTPUT) and C(POSTROUTING) chains).",
				"When the C(!) argument is used before the interface name, the sense is inverted.",
				"If the interface name ends in a C(+), then any interface which begins with this name will match.",
				"If this option is omitted, any interface name will match.",
			]
			type: "str"
		}
		fragment: {
			description: [
				"This means that the rule only refers to second and further fragments of fragmented packets.",
				"Since there is no way to tell the source or destination ports of such a packet (or ICMP type), such a packet will not match any rules which specify them.",
				"When the \"!\" argument precedes fragment argument, the rule will only match head fragments, or unfragmented packets.",
			]

			type: "str"
		}
		set_counters: {
			description: [
				"This enables the administrator to initialize the packet and byte counters of a rule (during C(INSERT), C(APPEND), C(REPLACE) operations).",
			]

			type: "str"
		}
		source_port: {
			description: [
				"Source port or port range specification.",
				"This can either be a service name or a port number.",
				"An inclusive range can also be specified, using the format C(first:last).",
				"If the first port is omitted, C(0) is assumed; if the last is omitted, C(65535) is assumed.",
				"If the first port is greater than the second one they will be swapped.",
			]
			type: "str"
		}
		destination_port: {
			description: [
				"Destination port or port range specification. This can either be a service name or a port number. An inclusive range can also be specified, using the format first:last. If the first port is omitted, '0' is assumed; if the last is omitted, '65535' is assumed. If the first port is greater than the second one they will be swapped. This is only valid if the rule also specifies one of the following protocols: tcp, udp, dccp or sctp.",
			]

			type: "str"
		}
		to_ports: {
			description: [
				"This specifies a destination port or range of ports to use, without this, the destination port is never altered.",
				"This is only valid if the rule also specifies one of the protocol C(tcp), C(udp), C(dccp) or C(sctp).",
			]

			type: "str"
		}
		to_destination: {
			description: [
				"This specifies a destination address to use with C(DNAT).",
				"Without this, the destination address is never altered.",
			]
			type:          "str"
			version_added: "2.1"
		}
		to_source: {
			description: [
				"This specifies a source address to use with C(SNAT).",
				"Without this, the source address is never altered.",
			]
			type:          "str"
			version_added: "2.2"
		}
		syn: {
			description: [
				"This allows matching packets that have the SYN bit set and the ACK and RST bits unset.",
				"When negated, this matches all packets with the RST or the ACK bits set.",
			]
			type: "str"
			choices: ["ignore", "match", "negate"]
			default:       "ignore"
			version_added: "2.5"
		}
		set_dscp_mark: {
			description: [
				"This allows specifying a DSCP mark to be added to packets. It takes either an integer or hex value.",
				"Mutually exclusive with C(set_dscp_mark_class).",
			]
			type:          "str"
			version_added: "2.1"
		}
		set_dscp_mark_class: {
			description: [
				"This allows specifying a predefined DiffServ class which will be translated to the corresponding DSCP mark.",
				"Mutually exclusive with C(set_dscp_mark).",
			]
			type:          "str"
			version_added: "2.1"
		}
		comment: {
			description: ["This specifies a comment that will be added to the rule."]
			type: "str"
		}
		ctstate: {
			description: [
				"C(ctstate) is a list of the connection states to match in the conntrack module.",
				"Possible states are C(INVALID), C(NEW), C(ESTABLISHED), C(RELATED), C(UNTRACKED), C(SNAT), C(DNAT)",
			]
			type: "list"
			default: []
		}
		src_range: {
			description: ["Specifies the source IP range to match in the iprange module."]
			type:          "str"
			version_added: "2.8"
		}
		dst_range: {
			description: ["Specifies the destination IP range to match in the iprange module."]
			type:          "str"
			version_added: "2.8"
		}
		limit: {
			description: [
				"Specifies the maximum average number of matches to allow per second.",
				"The number can specify units explicitly, using `/second', `/minute', `/hour' or `/day', or parts of them (so `5/second' is the same as `5/s').",
			]

			type: "str"
		}
		limit_burst: {
			description: ["Specifies the maximum burst before the above limit kicks in."]
			type:          "str"
			version_added: "2.1"
		}
		uid_owner: {
			description: [
				"Specifies the UID or username to use in match by owner rule.",
				"From Ansible 2.6 when the C(!) argument is prepended then the it inverts the rule to apply instead to all users except that one specified.",
			]

			type:          "str"
			version_added: "2.1"
		}
		gid_owner: {
			description: ["Specifies the GID or group to use in match by owner rule."]
			type:          "str"
			version_added: "2.9"
		}
		reject_with: {
			description: [
				"Specifies the error packet type to return while rejecting. It implies \"jump: REJECT\"",
			]

			type:          "str"
			version_added: "2.1"
		}
		icmp_type: {
			description: [
				"This allows specification of the ICMP type, which can be a numeric ICMP type, type/code pair, or one of the ICMP type names shown by the command 'iptables -p icmp -h'",
			]

			type:          "str"
			version_added: "2.2"
		}
		flush: {
			description: [
				"Flushes the specified table and chain of all rules.",
				"If no chain is specified then the entire table is purged.",
				"Ignores all other parameters.",
			]
			type:          "bool"
			version_added: "2.2"
		}
		policy: {
			description: [
				"Set the policy for the chain to the given target.",
				"Only built-in chains can have policies.",
				"This parameter requires the C(chain) parameter.",
				"Ignores all other parameters.",
			]
			type: "str"
			choices: ["ACCEPT", "DROP", "QUEUE", "RETURN"]
			version_added: "2.2"
		}
		wait: {
			description: [
				"Wait N seconds for the xtables lock to prevent multiple instances of the program from running concurrently.",
			]

			type:          "str"
			version_added: "2.10"
		}
	}
}
