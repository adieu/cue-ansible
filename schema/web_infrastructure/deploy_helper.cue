package ansible

module: deploy_helper: {
	module:            "deploy_helper"
	version_added:     "2.0"
	author:            "Ramon de la Fuente (@ramondelafuente)"
	short_description: "Manages some of the steps common in deploying projects."
	description: [
		"The Deploy Helper manages some of the steps common in deploying software. It creates a folder structure, manages a symlink for the current release and cleans up old releases.",
		"Running it with the C(state=query) or C(state=present) will return the C(deploy_helper) fact. C(project_path), whatever you set in the path parameter, C(current_path), the path to the symlink that points to the active release, C(releases_path), the path to the folder to keep releases in, C(shared_path), the path to the folder to keep shared resources in, C(unfinished_filename), the file to check for to recognize unfinished builds, C(previous_release), the release the 'current' symlink is pointing to, C(previous_release_path), the full path to the 'current' symlink target, C(new_release), either the 'release' parameter or a generated timestamp, C(new_release_path), the path to the new release folder (not created by the module).",
	]

	options: {
		path: {
			required: true
			aliases: ["dest"]
			description: [
				"the root path of the project. Alias I(dest). Returned in the C(deploy_helper.project_path) fact.",
			]
		}

		state: {
			description: [
				"the state of the project. C(query) will only gather facts, C(present) will create the project I(root) folder, and in it the I(releases) and I(shared) folders, C(finalize) will remove the unfinished_filename file, create a symlink to the newly deployed release and optionally clean old releases, C(clean) will remove failed & old releases, C(absent) will remove the project folder (synonymous to the M(file) module with C(state=absent))",
			]

			choices: ["present", "finalize", "absent", "clean", "query"]
			default: "present"
		}

		release: description: [
			"the release version that is being deployed. Defaults to a timestamp format %Y%m%d%H%M%S (i.e. '20141119223359'). This parameter is optional during C(state=present), but needs to be set explicitly for C(state=finalize). You can use the generated fact C(release={{ deploy_helper.new_release }}).",
		]

		releases_path: {
			description: [
				"the name of the folder that will hold the releases. This can be relative to C(path) or absolute. Returned in the C(deploy_helper.releases_path) fact.",
			]

			default: "releases"
		}

		shared_path: {
			description: [
				"the name of the folder that will hold the shared resources. This can be relative to C(path) or absolute. If this is set to an empty string, no shared folder will be created. Returned in the C(deploy_helper.shared_path) fact.",
			]

			default: "shared"
		}

		current_path: {
			description: [
				"the name of the symlink that is created when the deploy is finalized. Used in C(finalize) and C(clean). Returned in the C(deploy_helper.current_path) fact.",
			]

			default: "current"
		}

		unfinished_filename: {
			description: [
				"the name of the file that indicates a deploy has not finished. All folders in the releases_path that contain this file will be deleted on C(state=finalize) with clean=True, or C(state=clean). This file is automatically deleted from the I(new_release_path) during C(state=finalize).",
			]

			default: "DEPLOY_UNFINISHED"
		}

		clean: {
			description: [
				"Whether to run the clean procedure in case of C(state=finalize).",
			]
			type:    "bool"
			default: "yes"
		}

		keep_releases: {
			description: [
				"the number of old releases to keep when cleaning. Used in C(finalize) and C(clean). Any unfinished builds will be deleted first, so only correct releases will count. The current version will not count.",
			]

			default: 5
		}
	}

	notes: [
		"Facts are only returned for C(state=query) and C(state=present). If you use both, you should pass any overridden parameters to both calls, otherwise the second call will overwrite the facts of the first one.",
		"When using C(state=clean), the releases are ordered by I(creation date). You should be able to switch to a new naming strategy without problems.",
		"Because of the default behaviour of generating the I(new_release) fact, this module will not be idempotent unless you pass your own release name with C(release). Due to the nature of deploying software, this should not be much of a problem.",
	]
}
