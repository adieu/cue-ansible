package ansible

module: sefcontext: {
	module:            "sefcontext"
	short_description: "Manages SELinux file context mapping definitions"
	description: [
		"Manages SELinux file context mapping definitions.",
		"Similar to the C(semanage fcontext) command.",
	]
	version_added: "2.2"
	options: {
		target: {
			description: [
				"Target path (expression).",
			]
			type:     "str"
			required: true
			aliases: ["path"]
		}
		ftype: {
			description: [
				"The file type that should have SELinux contexts applied.",
				"The following file type options are available:",
				"C(a) for all files,",
				"C(b) for block devices,",
				"C(c) for character devices,",
				"C(d) for directories,",
				"C(f) for regular files,",
				"C(l) for symbolic links,",
				"C(p) for named pipes,",
				"C(s) for socket files.",
			]
			type: "str"
			choices: ["a", "b", "c", "d", "f", "l", "p", "s"]
			default: "a"
		}
		setype: {
			description: [
				"SELinux type for the specified target.",
			]
			type:     "str"
			required: true
		}
		seuser: {
			description: [
				"SELinux user for the specified target.",
			]
			type: "str"
		}
		selevel: {
			description: [
				"SELinux range for the specified target.",
			]
			type: "str"
			aliases: ["serange"]
		}
		state: {
			description: [
				"Whether the SELinux file context must be C(absent) or C(present).",
			]
			type: "str"
			choices: ["absent", "present"]
			default: "present"
		}
		reload: {
			description: [
				"Reload SELinux policy after commit.",
				"Note that this does not apply SELinux file contexts to existing files.",
			]
			type:    "bool"
			default: true
		}
		ignore_selinux_state: {
			description: [
				"Useful for scenarios (chrooted environment) that you can't get the real SELinux state.",
			]
			type:          "bool"
			default:       false
			version_added: "2.8"
		}
	}
	notes: [
		"The changes are persistent across reboots.",
		"The M(sefcontext) module does not modify existing files to the new SELinux context(s), so it is advisable to first create the SELinux file contexts before creating files, or run C(restorecon) manually for the existing files that require the new SELinux file contexts.",
		"Not applying SELinux fcontexts to existing files is a deliberate decision as it would be unclear what reported changes would entail to, and there's no guarantee that applying SELinux fcontext does not pick up other unrelated prior changes.",
	]

	requirements: [
		"libselinux-python",
		"policycoreutils-python",
	]
	author: ["Dag Wieers (@dagwieers)"]
}
