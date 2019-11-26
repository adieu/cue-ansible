package ansible

module: bzr: {
	module: "bzr"
	author: ["André Paramés (@andreparames)"], version_added:
		"1.1", short_description:
		"Deploy software (or files) from bzr branches", description: ["Manage I(bzr) branches to deploy files or software."], options: {

		name: {
			description: ["SSH or HTTP protocol address of the parent branch."]
			aliases: ["parent"]
			required: true
		}
		dest: {
			description: ["Absolute path of where the branch should be cloned to."]
			required: true
		}
		version: {
			description: [
				"What version of the branch to clone.  This can be the bzr revno or revid.",
			]

			default: "head"
		}
		force: {
			description: [
				"If C(yes), any modified files in the working tree will be discarded.  Before 1.9 the default value was C(yes).",
			]

			type:    "bool"
			default: "no"
		}
		executable: {
			description: [
				"Path to bzr executable to use. If not supplied, the normal mechanism for resolving binary paths will be used.",
			]

			version_added: "1.4"
		}
	}
}
