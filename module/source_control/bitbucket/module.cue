package bitbucket

bitbucket_pipeline_key_pair :: {

	// OAuth consumer secret.
	// If not set the environment variable C(BITBUCKET_CLIENT_SECRET) will be used.

	client_secret?: string

	// The private key.

	private_key?: string

	// The public key.

	public_key?: string

	// The repository name.

	repository: string

	// Indicates desired state of the key pair.

	state: string

	// The repository owner.

	username: string

	// OAuth consumer key.
	// If not set the environment variable C(BITBUCKET_CLIENT_ID) will be used.

	client_id?: string
}

bitbucket_pipeline_known_host :: {

	// The repository name.

	repository: string

	// Indicates desired state of the record.

	state: string

	// The repository owner.

	username: string

	// The OAuth consumer key.
	// If not set the environment variable C(BITBUCKET_CLIENT_ID) will be used.

	client_id?: string

	// The OAuth consumer secret.
	// If not set the environment variable C(BITBUCKET_CLIENT_SECRET) will be used.

	client_secret?: string

	// The public key.

	key?: string

	// The FQDN of the known host.

	name: string
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

subversion :: {

	// If C(no), do not check out the repository if it does not exist locally.

	checkout?: bool

	// Path to svn executable to use. If not supplied, the normal mechanism for resolving binary paths will be used.

	executable?: string

	// If the directory exists, then the working copy will be checked-out over-the-top using svn checkout --force; if force is specified then existing files with different content are reverted

	in_place?: bool

	// If C(no), do not call svn switch before update.

	switch?: bool

	// If C(no), do not retrieve new revisions from the origin repository.

	update?: bool

	// C(--username) parameter passed to svn.

	username?: string

	// Absolute path where the repository should be deployed.

	dest: string

	// If C(yes), do export instead of checkout/update.

	export?: bool

	// If C(yes), modified files will be discarded. If C(no), module will fail if it encounters modified files. Prior to 1.9 the default was C(yes).

	force?: bool

	// C(--password) parameter passed to svn.

	password?: string

	// The subversion URL to the repository.

	repo: string

	// Specific revision to checkout.

	revision?: string
}

bitbucket_access_key :: {

	// The repository name.

	repository: string

	// Indicates desired state of the access key.

	state: string

	// The repository owner.

	username: string

	// The OAuth consumer key.
	// If not set the environment variable C(BITBUCKET_CLIENT_ID) will be used.

	client_id?: string

	// The OAuth consumer secret.
	// If not set the environment variable C(BITBUCKET_CLIENT_SECRET) will be used.

	client_secret?: string

	// The SSH public key.

	key?: string

	// The key label.

	label: string
}

bitbucket_pipeline_variable :: {

	// The repository owner.

	username: string

	// The pipeline variable value.

	value?: string

	// The OAuth consumer key.
	// If not set the environment variable C(BITBUCKET_CLIENT_ID) will be used.

	client_id?: string

	// The OAuth consumer secret.
	// If not set the environment variable C(BITBUCKET_CLIENT_SECRET) will be used.

	client_secret?: string

	// The pipeline variable name.

	name: string

	// The repository name.

	repository: string

	// Whether to encrypt the variable value.

	secured?: bool

	// Indicates desired state of the variable.

	state: string
}

bzr :: {

	// If C(yes), any modified files in the working tree will be discarded.  Before 1.9 the default value was C(yes).

	force?: bool

	// SSH or HTTP protocol address of the parent branch.

	name: string

	// What version of the branch to clone.  This can be the bzr revno or revid.

	version?: string

	// Absolute path of where the branch should be cloned to.

	dest: string

	// Path to bzr executable to use. If not supplied, the normal mechanism for resolving binary paths will be used.

	executable?: string
}

git :: {

	// If C(no), do not retrieve new revisions from the origin repository
	// Operations like archive will work on the existing (old) repository and might not respond to changes to the options version or remote.

	update?: bool

	// What version of the repository to check out.  This can be the literal string C(HEAD), a branch name, a tag name. It can also be a I(SHA-1) hash, in which case C(refspec) needs to be specified if the given revision is not already available.

	version?: string

	// If C(no), do not clone the repository even if it does not exist locally

	clone?: bool

	// Path to git executable to use. If not supplied, the normal mechanism for resolving binary paths will be used.

	executable?: string

	// If C(yes), any modified files in the working repository will be discarded.  Prior to 0.7, this was always 'yes' and could not be disabled.  Prior to 1.9, the default was `yes`

	force?: bool

	// Name of the remote.

	remote?: string

	// The path to place the cloned repository. If specified, Git repository can be separated from working tree.

	separate_git_dir?: string

	// if C(yes), ensure that "-o StrictHostKeyChecking=no" is present as an ssh option.

	accept_hostkey?: bool

	// A list of trusted GPG fingerprints to compare to the fingerprint of the GPG-signed commit.
	// Only used when I(verify_commit=yes).

	gpg_whitelist?: [..._]

	// if C(no), repository will be cloned without the --recursive option, skipping sub-modules.

	recursive?: bool

	// Add an additional refspec to be fetched. If version is set to a I(SHA-1) not reachable from any branch or tag, this option may be necessary to specify the ref containing the I(SHA-1). Uses the same syntax as the 'git fetch' command. An example value could be "refs/meta/config".

	refspec?: string

	// Creates a wrapper script and exports the path as GIT_SSH which git then automatically uses to override ssh arguments. An example value could be "-o StrictHostKeyChecking=no" (although this particular option is better set via C(accept_hostkey)).

	ssh_opts?: string

	// if C(yes), submodules will track the latest commit on their master branch (or other branch specified in .gitmodules).  If C(no), submodules will be kept at the revision specified by the main project. This is equivalent to specifying the --remote flag to git submodule update.

	track_submodules?: bool

	// Specify archive file path with extension. If specified, creates an archive file of the specified format containing the tree structure for the source tree. Allowed archive formats ["zip", "tar.gz", "tar", "tgz"]
	// This will clone and perform git archive from local directory as not all git servers support git archive.

	archive?: string

	// if C(yes), repository will be created as a bare repo, otherwise it will be a standard repo with a workspace.

	bare?: bool

	// Create a shallow clone with a history truncated to the specified number or revisions. The minimum possible value is C(1), otherwise ignored. Needs I(git>=1.9.1) to work correctly.

	depth?: string

	// The path of where the repository should be checked out. This parameter is required, unless C(clone) is set to C(no).

	dest: string

	// Specify an optional private key file path, on the target host, to use for the checkout.

	key_file?: string

	// Reference repository (see "git clone --reference ...")

	reference?: string

	// git, SSH, or HTTP(S) protocol address of the git repository.

	repo: string

	// The umask to set before doing any checkouts, or any other repository maintenance.

	umask?: string

	// if C(yes), when cloning or checking out a C(version) verify the signature of a GPG signed commit. This requires C(git) version>=2.1.0 to be installed. The commit MUST be signed and the public key MUST be present in the GPG keyring.

	verify_commit?: bool
}

hg :: {

	// Path to hg executable to use. If not supplied, the normal mechanism for resolving binary paths will be used.

	executable?: string

	// Discards uncommitted changes. Runs C(hg update -C).  Prior to 1.9, the default was `yes`.

	force?: bool

	// Deletes untracked files. Runs C(hg purge).

	purge?: bool

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
}
