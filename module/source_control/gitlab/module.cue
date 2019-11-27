package gitlab

hg :: {

	// The repository address.

	repo: string

	// Equivalent C(-r) option in hg command which could be the changeset, revision number, branch name or even tag.

	revision?: string

	// If C(no), do not retrieve new revisions from the origin repository

	update?: bool

	// If C(no), do not clone the repository if it does not exist locally.

	clone?: bool

	// Absolute path of where the repository should be cloned to. This parameter is required, unless clone and update are set to no

	dest: string

	// Path to hg executable to use. If not supplied, the normal mechanism for resolving binary paths will be used.

	executable?: string

	// Discards uncommitted changes. Runs C(hg update -C).  Prior to 1.9, the default was `yes`.

	force?: bool

	// Deletes untracked files. Runs C(hg purge).

	purge?: bool
}

subversion :: {

	// C(--username) parameter passed to svn.

	username?: string

	// Absolute path where the repository should be deployed.

	dest: string

	// If C(yes), modified files will be discarded. If C(no), module will fail if it encounters modified files. Prior to 1.9 the default was C(yes).

	force?: bool

	// The subversion URL to the repository.

	repo: string

	// Specific revision to checkout.

	revision?: string

	// If C(no), do not retrieve new revisions from the origin repository.

	update?: bool

	// If C(no), do not call svn switch before update.

	switch?: bool

	// If C(no), do not check out the repository if it does not exist locally.

	checkout?: bool

	// Path to svn executable to use. If not supplied, the normal mechanism for resolving binary paths will be used.

	executable?: string

	// If C(yes), do export instead of checkout/update.

	export?: bool

	// If the directory exists, then the working copy will be checked-out over-the-top using svn checkout --force; if force is specified then existing files with different content are reverted

	in_place?: bool

	// C(--password) parameter passed to svn.

	password?: string
}

git_config :: {

	// List all settings (optionally limited to a given I(scope))

	list_all?: bool

	// The name of the setting. If no value is supplied, the value will be read from the config if it has been set.

	name?: string

	// Path to a git repository for reading and writing values from a specific repo.

	repo?: string

	// Specify which scope to read/set values from. This is required when setting config values. If this is set to local, you must also specify the repo parameter. It defaults to system only when not using I(list_all)=yes.

	scope?: string

	// Indicates the setting should be set/unset. This parameter has higher precedence than I(value) parameter: when I(state)=absent and I(value) is defined, I(value) is discarded.

	state?: string

	// When specifying the name of a single setting, supply a value to set that setting to the given value.

	value?: string
}

gitlab_deploy_key :: {

	// Whether this key can push to the project.

	can_push?: bool

	// Deploy key

	key: string

	// Id or Full path of project in the form of group/name.

	project: string

	// When C(present) the deploy key added to the project if it doesn't exist.
	// When C(absent) it will be removed from the project if it exists.

	state: string

	// Deploy key's title.

	title: string

	// GitLab token for logging in.

	api_token?: string
}

gitlab_group :: {

	// GitLab token for logging in.

	api_token?: string

	// A description for the group.

	description?: string

	// Name of the group you want to create.

	name: string

	// Allow to create subgroups
	// Id or Full path of parent group in the form of group/name

	parent?: string

	// The path of the group you want to create, this will be api_url/group_path
	// If not supplied, the group_name will be used.

	path?: string

	// create or delete group.
	// Possible values are present and absent.

	state?: string

	// Default visibility of the group

	visibility?: string
}

gitlab_hook :: {

	// Trigger hook on job events.

	job_events?: bool

	// Trigger hook on merge requests events.

	merge_requests_events?: bool

	// Secret token to validate hook messages at the receiver.
	// If this is present it will always result in a change as it cannot be retrieved from GitLab.
	// Will show up in the X-GitLab-Token HTTP request header.

	token?: string

	// Trigger hook on issues events.

	issues_events?: bool

	// When C(present) the hook will be updated to match the input or created if it doesn't exist.
	// When C(absent) hook will be deleted if it exists.

	state: string

	// Trigger hook on wiki events.

	wiki_page_events?: bool

	// Whether GitLab will do SSL verification when triggering the hook.

	hook_validate_certs?: bool

	// Trigger hook on note events or when someone adds a comment.

	note_events?: bool

	// Trigger hook on pipeline events.

	pipeline_events?: bool

	// Trigger hook on push events.

	push_events?: bool

	// GitLab token for logging in.

	api_token?: string

	// Id or Full path of the project in the form of group/name.

	project: string

	// Trigger hook on tag push events.

	tag_push_events?: bool

	// The url that you want GitLab to post to, this is used as the primary key for updates and deletion.

	hook_url: string
}

gitlab_user :: {

	// Require confirmation.

	confirm?: bool

	// Define external parameter for this user.

	external?: bool

	// Id or Full path of parent group in the form of group/name.
	// Add user as an member to this group.

	group?: string

	// Grant admin privileges to the user.

	isadmin?: bool

	// The password of the user.
	// GitLab server enforces minimum password length to 8, set this value with 8 or more characters.
	// Required only if C(state) is set to C(present).

	password?: string

	// The name of the sshkey

	sshkey_name?: string

	// create or delete group.
	// Possible values are present and absent.

	state?: string

	// GitLab token for logging in.

	api_token?: string

	// The email that belongs to the user.
	// Required only if C(state) is set to C(present).

	email?: string

	// Name of the user you want to create.
	// Required only if C(state) is set to C(present).

	name?: string

	// The ssh key itself.

	sshkey_file?: string

	// The username of the user.

	username: string

	// The access level to the group. One of the following can be used.
	// guest
	// reporter
	// developer
	// master (alias for maintainer)
	// maintainer
	// owner

	access_level?: string
}

bzr :: {

	// What version of the branch to clone.  This can be the bzr revno or revid.

	version?: string

	// Absolute path of where the branch should be cloned to.

	dest: string

	// Path to bzr executable to use. If not supplied, the normal mechanism for resolving binary paths will be used.

	executable?: string

	// If C(yes), any modified files in the working tree will be discarded.  Before 1.9 the default value was C(yes).

	force?: bool

	// SSH or HTTP protocol address of the parent branch.

	name: string
}

git :: {

	// A list of trusted GPG fingerprints to compare to the fingerprint of the GPG-signed commit.
	// Only used when I(verify_commit=yes).

	gpg_whitelist?: [..._]

	// Specify an optional private key file path, on the target host, to use for the checkout.

	key_file?: string

	// Reference repository (see "git clone --reference ...")

	reference?: string

	// Name of the remote.

	remote?: string

	// Creates a wrapper script and exports the path as GIT_SSH which git then automatically uses to override ssh arguments. An example value could be "-o StrictHostKeyChecking=no" (although this particular option is better set via C(accept_hostkey)).

	ssh_opts?: string

	// if C(yes), when cloning or checking out a C(version) verify the signature of a GPG signed commit. This requires C(git) version>=2.1.0 to be installed. The commit MUST be signed and the public key MUST be present in the GPG keyring.

	verify_commit?: bool

	// Specify archive file path with extension. If specified, creates an archive file of the specified format containing the tree structure for the source tree. Allowed archive formats ["zip", "tar.gz", "tar", "tgz"]
	// This will clone and perform git archive from local directory as not all git servers support git archive.

	archive?: string

	// If C(yes), any modified files in the working repository will be discarded.  Prior to 0.7, this was always 'yes' and could not be disabled.  Prior to 1.9, the default was `yes`

	force?: bool

	// if C(no), repository will be cloned without the --recursive option, skipping sub-modules.

	recursive?: bool

	// The umask to set before doing any checkouts, or any other repository maintenance.

	umask?: string

	// If C(no), do not clone the repository even if it does not exist locally

	clone?: bool

	// The path of where the repository should be checked out. This parameter is required, unless C(clone) is set to C(no).

	dest: string

	// Create a shallow clone with a history truncated to the specified number or revisions. The minimum possible value is C(1), otherwise ignored. Needs I(git>=1.9.1) to work correctly.

	depth?: string

	// Path to git executable to use. If not supplied, the normal mechanism for resolving binary paths will be used.

	executable?: string

	// git, SSH, or HTTP(S) protocol address of the git repository.

	repo: string

	// The path to place the cloned repository. If specified, Git repository can be separated from working tree.

	separate_git_dir?: string

	// If C(no), do not retrieve new revisions from the origin repository
	// Operations like archive will work on the existing (old) repository and might not respond to changes to the options version or remote.

	update?: bool

	// What version of the repository to check out.  This can be the literal string C(HEAD), a branch name, a tag name. It can also be a I(SHA-1) hash, in which case C(refspec) needs to be specified if the given revision is not already available.

	version?: string

	// if C(yes), ensure that "-o StrictHostKeyChecking=no" is present as an ssh option.

	accept_hostkey?: bool

	// if C(yes), repository will be created as a bare repo, otherwise it will be a standard repo with a workspace.

	bare?: bool

	// Add an additional refspec to be fetched. If version is set to a I(SHA-1) not reachable from any branch or tag, this option may be necessary to specify the ref containing the I(SHA-1). Uses the same syntax as the 'git fetch' command. An example value could be "refs/meta/config".

	refspec?: string

	// if C(yes), submodules will track the latest commit on their master branch (or other branch specified in .gitmodules).  If C(no), submodules will be kept at the revision specified by the main project. This is equivalent to specifying the --remote flag to git submodule update.

	track_submodules?: bool
}

gitlab_project :: {

	// The name of the project

	name: string

	// The path of the project you want to create, this will be server_url/<group>/path.
	// If not supplied, name will be used.

	path?: string

	// If creating snippets should be available or not.
	// Possible values are true and false.

	snippets_enabled?: bool

	// Private. Project access must be granted explicitly for each user.
	// Internal. The project can be cloned by any logged in user.
	// Public. The project can be cloned without any authentication.

	visibility?: string

	// Id or The full path of the group of which this projects belongs to.

	group?: string

	// Git repository which will be imported into gitlab.
	// GitLab server needs read access to this git repository.

	import_url?: string

	// Whether you want to create issues or not.
	// Possible values are true and false.

	issues_enabled?: bool

	// If merge requests can be made or not.
	// Possible values are true and false.

	merge_requests_enabled?: bool

	// GitLab token for logging in.

	api_token?: string

	// An description for the project.

	description?: string

	// create or delete project.
	// Possible values are present and absent.

	state?: string

	// If an wiki for this project should be available or not.
	// Possible values are true and false.

	wiki_enabled?: bool
}

gitlab_project_variable :: {

	// The path and name of the project.

	project: string

	// When set to true, all variables which are not untouched in the task will be deleted.

	purge?: bool

	// Create or delete project variable.
	// Possible values are present and absent.

	state?: string

	// A list of key value pairs.

	vars?: {...}

	// GitLab access token with API permissions.

	api_token: string
}

gitlab_runner :: {

	// Make sure that the runner with the same name exists with the same configuration or delete the runner with the same name.

	state?: string

	// Determines if a runner can pick up jobs from protected branches.

	access_level?: string

	// Define if the runners is immediately active after creation.

	active?: bool

	// The unique name of the runner.

	description: string

	// The registration token is used to register new runners.

	registration_token: string

	// Run untagged jobs or not.

	run_untagged?: bool

	// Your private token to interact with the GitLab API.

	api_token: string

	// Determines if the runner is locked or not.

	locked?: bool

	// The maximum timeout that a runner has to pick up a specific job.

	maximum_timeout?: int

	// The tags that apply to the runner.

	tag_list?: [..._]
}
