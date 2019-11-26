package ansible

module: setup: {
	module:            "setup"
	version_added:     "historical"
	short_description: "Gathers facts about remote hosts"
	options: {
		gather_subset: {
			version_added: "2.1"
			description: [
				"If supplied, restrict the additional facts collected to the given subset. Possible values: C(all), C(min), C(hardware), C(network), C(virtual), C(ohai), and C(facter). Can specify a list of values to specify a larger subset. Values can also be used with an initial C(!) to specify that that specific subset should not be collected.  For instance: C(!hardware,!network,!virtual,!ohai,!facter). If C(!all) is specified then only the min subset is collected. To avoid collecting even the min subset, specify C(!all,!min). To collect only specific facts, use C(!all,!min), and specify the particular fact subsets. Use the filter parameter if you do not want to display some collected facts.",
			]

			required: false
			default:  "all"
		}
		gather_timeout: {
			version_added: "2.2"
			description: [
				"Set the default timeout in seconds for individual fact gathering.",
			]
			required: false
			default:  10
		}
		filter: {
			version_added: "1.1"
			description: [
				"If supplied, only return facts that match this shell-style (fnmatch) wildcard.",
			]
			required: false
			default:  "*"
		}
		fact_path: {
			version_added: "1.3"
			description: [
				"Path used for local ansible facts (C(*.fact)) - files in this dir will be run (if executable) and their results be added to C(ansible_local) facts if a file is not executable it is read. Check notes for Windows options. (from 2.1 on) File/results format can be JSON or INI-format. The default C(fact_path) can be specified in C(ansible.cfg) for when setup is automatically called as part of C(gather_facts).",
			]

			required: false
			default:  "/etc/ansible/facts.d"
		}
	}
	description: [
		"This module is automatically called by playbooks to gather useful variables about remote hosts that can be used in playbooks. It can also be executed directly by C(/usr/bin/ansible) to check what variables are available to a host. Ansible provides many I(facts) about the system, automatically.",
		"This module is also supported for Windows targets.",
	]
	notes: [
		"More ansible facts will be added with successive releases. If I(facter) or I(ohai) are installed, variables from these programs will also be snapshotted into the JSON file for usage in templating. These variables are prefixed with C(facter_) and C(ohai_) so it's easy to tell their source. All variables are bubbled up to the caller. Using the ansible facts and choosing to not install I(facter) and I(ohai) means you can avoid Ruby-dependencies on your remote systems. (See also M(facter) and M(ohai).)",
		"The filter option filters only the first level subkey below ansible_facts.",
		"If the target host is Windows, you will not currently have the ability to use C(filter) as this is provided by a simpler implementation of the module.",
		"If the target host is Windows you can now use C(fact_path). Make sure that this path exists on the target host. Files in this path MUST be PowerShell scripts (``*.ps1``) and their output must be formattable in JSON (Ansible will take care of this). Test the output of your scripts. This option was added in Ansible 2.1.",
		"This module is also supported for Windows targets.",
		"This module should be run with elevated privileges on BSD systems to gather facts like ansible_product_version.",
	]
	author: [
		"Ansible Core Team",
		"Michael DeHaan",
	]
}
