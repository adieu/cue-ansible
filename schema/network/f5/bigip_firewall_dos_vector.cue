package ansible

module: bigip_firewall_dos_vector: {
	module:            "bigip_firewall_dos_vector"
	short_description: "Manage attack vector configuration in an AFM DoS profile"
	description: [
		"Manage attack vector configuration in an AFM DoS profile. In addition to the normal AFM DoS profile vectors, this module can manage the device-configuration vectors. See the module documentation for details about this method.",
	]

	version_added: 2.8
	options: {
		name: {
			description: [
				"Specifies the name of the vector to modify.",
				"Vectors that ship with the device are \"hard-coded\" so-to-speak in that the list of vectors is known to the system and users cannot add new vectors. Users only manipulate the existing vectors; all of which are disabled by default.",
				"When C(ext-hdr-too-large), configures the \"IPv6 extension header too large\" Network Security vector.",
				"When C(hop-cnt-low), configures the \"IPv6 hop count <= <tunable>\" Network Security vector.",
				"When C(host-unreachable), configures the \"Host Unreachable\" Network Security vector.",
				"When C(icmp-frag), configures the \"ICMP Fragment\" Network Security vector.",
				"When C(icmpv4-flood), configures the \"ICMPv4 flood\" Network Security vector.",
				"When C(icmpv6-flood), configures the \"ICMPv6 flood\" Network Security vector.",
				"When C(ip-frag-flood), configures the \"IP Fragment Flood\" Network Security vector.",
				"When C(ip-low-ttl), configures the \"TTL <= <tunable>\" Network Security vector.",
				"When C(ip-opt-frames), configures the \"IP Option Frames\" Network Security vector.",
				"When C(ipv6-ext-hdr-frames), configures the \"IPv6 Extended Header Frames\" Network Security vector.",
				"When C(ipv6-frag-flood), configures the \"IPv6 Fragment Flood\" Network Security vector.",
				"When C(opt-present-with-illegal-len), configures the \"Option Present With Illegal Length\" Network Security vector.",
				"When C(sweep), configures the \"Sweep\" Network Security vector.",
				"When C(tcp-bad-urg), configures the \"TCP Flags-Bad URG\" Network Security vector.",
				"When C(tcp-half-open), configures the \"TCP Half Open\" Network Security vector.",
				"When C(tcp-opt-overruns-tcp-hdr), configures the \"TCP Option Overruns TCP Header\" Network Security vector.",
				"When C(tcp-psh-flood), configures the \"TCP PUSH Flood\" Network Security vector.",
				"When C(tcp-rst-flood), configures the \"TCP RST Flood\" Network Security vector.",
				"When C(tcp-syn-flood), configures the \"TCP SYN Flood\" Network Security vector.",
				"When C(tcp-syn-oversize), configures the \"TCP SYN Oversize\" Network Security vector.",
				"When C(tcp-synack-flood), configures the \"TCP SYN ACK Flood\" Network Security vector.",
				"When C(tcp-window-size), configures the \"TCP Window Size\" Network Security vector.",
				"When C(tidcmp), configures the \"TIDCMP\" Network Security vector.",
				"When C(too-many-ext-hdrs), configures the \"Too Many Extension Headers\" Network Security vector.",
				"When C(udp-flood), configures the \"UDP Flood\" Network Security vector.",
				"When C(unk-tcp-opt-type), configures the \"Unknown TCP Option Type\" Network Security vector.",
				"When C(a), configures the \"DNS A Query\" DNS Protocol Security vector.",
				"When C(aaaa), configures the \"DNS AAAA Query\" DNS Protocol Security vector.",
				"When C(any), configures the \"DNS ANY Query\" DNS Protocol Security vector.",
				"When C(axfr), configures the \"DNS AXFR Query\" DNS Protocol Security vector.",
				"When C(cname), configures the \"DNS CNAME Query\" DNS Protocol Security vector.",
				"When C(dns-malformed), configures the \"dns-malformed\" DNS Protocol Security vector.",
				"When C(ixfr), configures the \"DNS IXFR Query\" DNS Protocol Security vector.",
				"When C(mx), configures the \"DNS MX Query\" DNS Protocol Security vector.",
				"When C(ns), configures the \"DNS NS Query\" DNS Protocol Security vector.",
				"When C(other), configures the \"DNS OTHER Query\" DNS Protocol Security vector.",
				"When C(ptr), configures the \"DNS PTR Query\" DNS Protocol Security vector.",
				"When C(qdcount), configures the \"DNS QDCOUNT Query\" DNS Protocol Security vector.",
				"When C(soa), configures the \"DNS SOA Query\" DNS Protocol Security vector.",
				"When C(srv), configures the \"DNS SRV Query\" DNS Protocol Security vector.",
				"When C(txt), configures the \"DNS TXT Query\" DNS Protocol Security vector.",
				"When C(ack), configures the \"SIP ACK Method\" SIP Protocol Security vector.",
				"When C(bye), configures the \"SIP BYE Method\" SIP Protocol Security vector.",
				"When C(cancel), configures the \"SIP CANCEL Method\" SIP Protocol Security vector.",
				"When C(invite), configures the \"SIP INVITE Method\" SIP Protocol Security vector.",
				"When C(message), configures the \"SIP MESSAGE Method\" SIP Protocol Security vector.",
				"When C(notify), configures the \"SIP NOTIFY Method\" SIP Protocol Security vector.",
				"When C(options), configures the \"SIP OPTIONS Method\" SIP Protocol Security vector.",
				"When C(other), configures the \"SIP OTHER Method\" SIP Protocol Security vector.",
				"When C(prack), configures the \"SIP PRACK Method\" SIP Protocol Security vector.",
				"When C(publish), configures the \"SIP PUBLISH Method\" SIP Protocol Security vector.",
				"When C(register), configures the \"SIP REGISTER Method\" SIP Protocol Security vector.",
				"When C(sip-malformed), configures the \"sip-malformed\" SIP Protocol Security vector.",
				"When C(subscribe), configures the \"SIP SUBSCRIBE Method\" SIP Protocol Security vector.",
				"When C(uri-limit), configures the \"uri-limit\" SIP Protocol Security vector.",
			]
			type: "str"
			choices: [
				"ext-hdr-too-large",
				"hop-cnt-low",
				"host-unreachable",
				"icmp-frag",
				"icmpv4-flood",
				"icmpv6-flood",
				"ip-frag-flood",
				"ip-low-ttl",
				"ip-opt-frames",
				"ipv6-frag-flood",
				"opt-present-with-illegal-len",
				"sweep",
				"tcp-bad-urg",
				"tcp-half-open",
				"tcp-opt-overruns-tcp-hdr",
				"tcp-psh-flood",
				"tcp-rst-flood",
				"tcp-syn-flood",
				"tcp-syn-oversize",
				"tcp-synack-flood",
				"tcp-window-size",
				"tidcmp",
				"too-many-ext-hdrs",
				"udp-flood",
				"unk-tcp-opt-type",
				"a",
				"aaaa",
				"any",
				"axfr",
				"cname",
				"dns-malformed",
				"ixfr",
				"mx",
				"ns",
				"other",
				"ptr",
				"qdcount",
				"soa",
				"srv",
				"txt",
				"ack",
				"bye",
				"cancel",
				"invite",
				"message",
				"notify",
				"options",
				"other",
				"prack",
				"publish",
				"register",
				"sip-malformed",
				"subscribe",
				"uri-limit",
			]
		}
		profile: {
			description: [
				"Specifies the name of the profile to manage vectors in.",
				"The name C(device-config) is reserved for use by this module.",
				"Vectors can be managed in either DoS Profiles, or Device Configuration. By specifying a profile of 'device-config', this module will specifically tailor configuration of the provided vectors to the Device Configuration.",
			]

			type:     "str"
			required: true
		}
		auto_blacklist: {
			description: [
				"Automatically blacklists detected bad actors.",
				"To enable this parameter, the C(bad_actor_detection) must also be enabled.",
				"This parameter is not supported by the C(dns-malformed) vector.",
				"This parameter is not supported by the C(qdcount) vector.",
			]
			type: "bool"
		}
		bad_actor_detection: {
			description: [
				"Whether Bad Actor detection is enabled or disabled for a vector, if available.",
				"This parameter must be enabled to enable the C(auto_blacklist) parameter.",
				"This parameter is not supported by the C(dns-malformed) vector.",
				"This parameter is not supported by the C(qdcount) vector.",
			]
			type: "bool"
		}
		attack_ceiling: {
			description: [
				"Specifies the absolute maximum allowable for packets of this type.",
				"This setting rate limits packets to the packets per second setting, when specified.",
				"To set no hard limit and allow automatic thresholds to manage all rate limiting, set this to C(infinite).",
			]

			type: "str"
		}
		attack_floor: {
			description: [
				"Specifies packets per second to identify an attack.",
				"These settings provide an absolute minimum of packets to allow before the attack is identified.",
				"As the automatic detection thresholds adjust to traffic and CPU usage on the system over time, this attack floor becomes less relevant.",
				"This value may not exceed the value in C(attack_floor).",
			]
			type: "str"
		}
		allow_advertisement: {
			description: [
				"Specifies that addresses that are identified for blacklisting are advertised to BGP routers",
			]

			type: "bool"
		}
		simulate_auto_threshold: {
			description: [
				"Specifies that results of the current automatic thresholds are logged, though manual thresholds are enforced, and no action is taken on automatic thresholds.",
				"The C(sweep) vector does not support this parameter.",
			]
			type: "bool"
		}
		blacklist_detection_seconds: {
			description: [
				"Detection, in seconds, before blacklisting occurs.",
			]
			type: "int"
		}
		blacklist_duration: {
			description: [
				"Duration, in seconds, that the blacklist will last.",
			]
			type: "int"
		}
		per_source_ip_detection_threshold: {
			description: [
				"Specifies the number of packets per second to identify an IP address as a bad actor.",
			]

			type: "str"
		}
		per_source_ip_mitigation_threshold: {
			description: [
				"Specifies the rate limit applied to a source IP that is identified as a bad actor.",
			]

			type: "str"
		}
		detection_threshold_percent: {
			description: [
				"Lists the threshold percent increase over time that the system must detect in traffic in order to detect this attack.",
				"The C(tcp-half-open) vector does not support this parameter.",
			]
			type: "str"
			aliases: [
				"rate_increase",
			]
		}
		detection_threshold_eps: {
			description: [
				"Lists how many packets per second the system must discover in traffic in order to detect this attack.",
			]

			type: "str"
			aliases: [
				"rate_threshold",
			]
		}
		mitigation_threshold_eps: {
			description: [
				"Specify the maximum number of this type of packet per second the system allows for a vector.",
				"The system drops packets once the traffic level exceeds the rate limit.",
			]
			type: "str"
			aliases: [
				"rate_limit",
			]
		}
		threshold_mode: {
			description: [
				"The C(dns-malformed) vector does not support C(fully-automatic), or C(stress-based-mitigation) for this parameter.",
				"The C(qdcount) vector does not support C(fully-automatic), or C(stress-based-mitigation) for this parameter.",
				"The C(sip-malformed) vector does not support C(fully-automatic), or C(stress-based-mitigation) for this parameter.",
			]

			type: "str"
			choices: [
				"manual",
				"stress-based-mitigation",
				"fully-automatic",
			]
		}
		state: {
			description: [
				"When C(state) is C(mitigate), ensures that the vector enforces limits and thresholds.",
				"When C(state) is C(detect-only), ensures that the vector does not enforce limits and thresholds (rate limiting, dopping, etc), but is still tracked in logs and statistics.",
				"When C(state) is C(disabled), ensures that the vector does not enforce limits and thresholds, but is still tracked in logs and statistics.",
				"When C(state) is C(learn-only), ensures that the vector does not \"detect\" any attacks. Only learning and stat collecting is performed.",
			]

			type: "str"
			choices: [
				"mitigate",
				"detect-only",
				"learn-only",
				"disabled",
			]
			required: true
		}
		partition: {
			description: [
				"Device partition to manage resources on.",
			]
			type:    "str"
			default: "Common"
		}
	}
	extends_documentation_fragment: "f5"
	requirements: [
		"BIG-IP >= v13.0.0",
	]
	author: ["Tim Rupp (@caphrim007)"]
}
