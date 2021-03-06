package ansible

module: firewalld: {
	module:            "firewalld"
	short_description: "Manage arbitrary ports/services with firewalld"
	description: [
		"This module allows for addition or deletion of services and ports (either TCP or UDP) in either running or permanent firewalld rules.",
	]
	version_added: "1.4"
	options: {
		service: {
			description: [
				"Name of a service to add/remove to/from firewalld.",
				"The service must be listed in output of firewall-cmd --get-services.",
			]
			type: "str"
		}
		port: {
			description: [
				"Name of a port or port range to add/remove to/from firewalld.",
				"Must be in the form PORT/PROTOCOL or PORT-PORT/PROTOCOL for port ranges.",
			]
			type: "str"
		}
		rich_rule: {
			description: [
				"Rich rule to add/remove to/from firewalld.",
			]
			type: "str"
		}
		source: {
			description: [
				"The source/network you would like to add/remove to/from firewalld.",
			]
			type:          "str"
			version_added: "2.0"
		}
		interface: {
			description: [
				"The interface you would like to add/remove to/from a zone in firewalld.",
			]
			type:          "str"
			version_added: "2.1"
		}
		icmp_block: {
			description: [
				"The ICMP block you would like to add/remove to/from a zone in firewalld.",
			]
			type:          "str"
			version_added: "2.8"
		}
		icmp_block_inversion: {
			description: [
				"Enable/Disable inversion of ICMP blocks for a zone in firewalld.",
			]
			type:          "str"
			version_added: "2.8"
		}
		zone: {
			description: [
				"The firewalld zone to add/remove to/from.",
				"Note that the default zone can be configured per system but C(public) is default from upstream.",
				"Available choices can be extended based on per-system configs, listed here are \"out of the box\" defaults.",
				"Possible values include C(block), C(dmz), C(drop), C(external), C(home), C(internal), C(public), C(trusted), C(work).",
			]
			type: "str"
		}
		permanent: {
			description: [
				"Should this configuration be in the running firewalld configuration or persist across reboots.",
				"As of Ansible 2.3, permanent operations can operate on firewalld configs when it is not running (requires firewalld >= 3.0.9).",
				"Note that if this is C(no), immediate is assumed C(yes).",
			]
			type: "bool"
		}
		immediate: {
			description: [
				"Should this configuration be applied immediately, if set as permanent.",
			]
			type:          "bool"
			default:       false
			version_added: "1.9"
		}
		state: {
			description: [
				"Enable or disable a setting.",
				"For ports: Should this port accept (enabled) or reject (disabled) connections.",
				"The states C(present) and C(absent) can only be used in zone level operations (i.e. when no other parameters but zone and state are set).",
			]
			type:     "str"
			required: true
			choices: ["absent", "disabled", "enabled", "present"]
		}
		timeout: {
			description: [
				"The amount of time the rule should be in effect for when non-permanent.",
			]
			type:    "int"
			default: 0
		}
		masquerade: {
			description: [
				"The masquerade setting you would like to enable/disable to/from zones within firewalld.",
			]
			type:          "str"
			version_added: "2.1"
		}
		offline: {
			description: [
				"Whether to run this module even when firewalld is offline.",
			]
			type:          "bool"
			version_added: "2.3"
		}
	}
	notes: [
		"Not tested on any Debian based system.",
		"Requires the python2 bindings of firewalld, which may not be installed by default.",
		"For distributions where the python2 firewalld bindings are unavailable (e.g Fedora 28 and later) you will have to set the ansible_python_interpreter for these hosts to the python3 interpreter path and install the python3 bindings.",
		"Zone transactions (creating, deleting) can be performed by using only the zone and state parameters \"present\" or \"absent\". Note that zone transactions must explicitly be permanent. This is a limitation in firewalld. This also means that you will have to reload firewalld after adding a zone that you wish to perform immediate actions on. The module will not take care of this for you implicitly because that would undo any previously performed immediate actions which were not permanent. Therefore, if you require immediate access to a newly created zone it is recommended you reload firewalld immediately after the zone creation returns with a changed state and before you perform any other immediate, non-permanent actions on that zone.",
	]

	requirements: [
		"firewalld >= 0.2.11",
	]
	author: ["Adam Miller (@maxamillion)"]
}
