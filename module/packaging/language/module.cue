package language

maven_artifact :: {
	notify?: string | [...string]
	vars?: {...}
	when?: string
	tags?: [...string]
	maven_artifact: {

		// The maven artifactId coordinate

		artifact_id: string

		// The Maven groupId coordinate

		group_id: string

		// Add custom HTTP headers to a request in hash/dict format.

		headers?: {...}

		// If C(yes), the downloaded artifact's name is preserved, i.e the version number remains part of it.
		// This option only has effect when C(dest) is a directory and C(version) is set to C(latest) or C(version_by_spec) is defined.

		keep_name?: bool

		// If C(never), the md5 checksum will never be downloaded and verified.
		// If C(download), the md5 checksum will be downloaded and verified only after artifact download. This is the default.
		// If C(change), the md5 checksum will be downloaded and verified if the destination already exist, to verify if they are identical. This was the behaviour before 2.6. Since it downloads the md5 before (maybe) downloading the artifact, and since some repository software, when acting as a proxy/cache, return a 404 error if the artifact has not been cached yet, it may fail unexpectedly. If you still need it, you should consider using C(always) instead - if you deal with a checksum, it is better to use it to verify integrity after download.
		// C(always) combines C(download) and C(change).

		verify_checksum?: string

		// The maven classifier coordinate

		classifier?: string

		// The path where the artifact should be written to
		// If file mode or ownerships are specified and destination path already exists, they affect the downloaded file

		dest: string

		// The maven type/extension coordinate

		extension?: string

		// The URL of the Maven Repository to download from.
		// Use s3://... if the repository is hosted on Amazon S3, added in version 2.2.
		// Use file://... if the repository is local, added in version 2.6

		repository_url?: string

		// The desired state of the artifact

		state?: string

		// If C(no), SSL certificates will not be validated. This should only be set to C(no) when no other option exists.

		validate_certs?: bool

		// The maven dependency version ranges.
		// See supported version ranges on U(https://cwiki.apache.org/confluence/display/MAVENOLD/Dependency+Mediation+and+Conflict+Resolution)
		// The range type "(,1.0],[1.2,)" and "(,1.1),(1.1,)" is not supported.
		// Mutually exclusive with I(version).

		version_by_spec?: string

		// The password to authenticate with to the Maven Repository. Use AWS secret access key of the repository is hosted on S3

		password?: string

		// Specifies a timeout in seconds for the connection attempt

		timeout?: string

		// The username to authenticate as to the Maven Repository. Use AWS secret key of the repository is hosted on S3

		username?: string

		// The maven version coordinate
		// Mutually exclusive with I(version_by_spec).

		version?: string
	}
}

pear :: {
	notify?: string | [...string]
	vars?: {...}
	when?: string
	tags?: [...string]
	pear: {

		// Path to the pear executable

		executable?: string

		// Name of the package to install, upgrade, or remove.

		name: string

		// Desired state of the package.

		state?: string
	}
}

yarn :: {
	notify?: string | [...string]
	vars?: {...}
	when?: string
	tags?: [...string]
	yarn: {

		// Install the node.js library globally

		global?: bool

		// The name of a node.js library to install
		// If omitted all packages in package.json are installed.

		name?: string

		// Installation state of the named node.js library
		// If absent is selected, a name option must be provided

		state?: string

		// The version of the library to be installed.
		// Must be in semver format. If "latest" is desired, use "state" arg instead

		version?: string

		// The executable location for yarn.

		executable?: string

		// Use the --ignore-scripts flag when installing.

		ignore_scripts?: bool

		// The base path where Node.js libraries will be installed.
		// This is where the node_modules folder lives.

		path?: string

		// Install dependencies in production mode.
		// Yarn will ignore any dependencies under devDependencies in package.json

		production?: bool

		// The registry to install modules from.

		registry?: string
	}
}

easy_install :: {
	notify?: string | [...string]
	vars?: {...}
	when?: string
	tags?: [...string]
	easy_install: {

		// The explicit executable or a pathname to the executable to be used to run easy_install for a specific version of Python installed in the system. For example C(easy_install-3.3), if there are both Python 2.7 and 3.3 installations in the system and you want to run easy_install for the Python 3.3 installation.

		executable?: string

		// A Python library name

		name: string

		// The desired state of the library. C(latest) ensures that the latest version is installed.

		state?: string

		// an optional I(virtualenv) directory path to install into. If the I(virtualenv) does not exist, it is created automatically

		virtualenv?: string

		// The command to create the virtual environment with. For example C(pyvenv), C(virtualenv), C(virtualenv2).

		virtualenv_command?: string

		// Whether the virtual environment will inherit packages from the global site-packages directory.  Note that if this setting is changed on an already existing virtual environment it will not have any effect, the environment must be deleted and newly created.

		virtualenv_site_packages?: bool
	}
}

bundler :: {
	notify?: string | [...string]
	vars?: {...}
	when?: string
	tags?: [...string]
	bundler: {

		// Only applies if state is C(present). If set it will install gems in ./vendor/bundle instead of the default location. Requires a Gemfile.lock file to have been created prior

		deployment_mode?: bool

		// A list of Gemfile groups to exclude during operations. This only applies when state is C(present). Bundler considers this a 'remembered' property for the Gemfile and will automatically exclude groups in future operations even if C(exclude_groups) is not set

		exclude_groups?: string

		// The path to the bundler executable

		executable?: string

		// Only applies if state is C(present). The path to the gemfile to use to install gems.

		gemfile?: string

		// The desired state of the Gem bundle. C(latest) updates gems to the most recent, acceptable version

		state?: string

		// Only applies if state is C(present). Installs gems in the local user's cache or for all users

		user_install?: bool

		// Only applies if state is C(present). Specifies the directory to install any gem bins files to. When executed the bin files will run within the context of the Gemfile and fail if any required gem dependencies are not installed. If C(chdir) is set then this path is relative to C(chdir)

		binstub_directory?: string

		// The directory to execute the bundler commands from. This directory needs to contain a valid Gemfile or .bundle/ directory

		chdir?: string

		// Only applies if state is C(present). If set removes any gems on the target host that are not in the gemfile

		clean?: bool

		// A space separated string of additional commands that can be applied to the Bundler command. Refer to the Bundler documentation for more information

		extra_args?: string

		// Only applies if state is C(present). Specifies the directory to install the gems into. If C(chdir) is set then this path is relative to C(chdir)

		gem_path?: string

		// If set only installs gems from the cache on the target host

		local?: bool
	}
}

composer :: {
	notify?: string | [...string]
	vars?: {...}
	when?: string
	tags?: [...string]
	composer: {

		// Composer arguments like required package, version and so on.

		arguments?: string

		// Runs the specified command globally.

		global_command?: bool

		// Optimize autoloader during autoloader dump (see --optimize-autoloader).
		// Convert PSR-0/4 autoloading to classmap to get a faster autoloader.
		// Recommended especially for production, but can take a bit of time to run.

		optimize_autoloader?: bool

		// Forces installation from package dist even for dev versions (see --prefer-dist).

		prefer_dist?: bool

		// Forces installation from package sources when possible (see --prefer-source).

		prefer_source?: bool

		// Disables installation of require-dev packages (see --no-dev).

		no_dev?: bool

		// Disables all plugins ( see --no-plugins ).

		no_plugins?: bool

		// Skips the execution of all scripts defined in composer.json (see --no-scripts).

		no_scripts?: bool

		// Autoload classes from classmap only.
		// Implicitely enable optimize_autoloader.
		// Recommended especially for production, but can take a bit of time to run.

		classmap_authoritative?: bool

		// Path to PHP Executable on the remote host, if PHP is not in PATH.

		executable?: string

		// Ignore php, hhvm, lib-* and ext-* requirements and force the installation even if the local machine does not fulfill these.

		ignore_platform_reqs?: bool

		// Uses APCu to cache found/not-found classes

		apcu_autoloader?: bool

		// Composer command like "install", "update" and so on.

		command?: string

		// Directory of your project (see --working-dir). This is required when the command is not run globally.
		// Will be ignored if C(global_command=true).

		working_dir?: string
	}
}

cpanm :: {
	notify?: string | [...string]
	vars?: {...}
	when?: string
	tags?: [...string]
	cpanm: {

		// Only install dependencies

		installdeps?: bool

		// Specifies the base URL for the CPAN mirror to use

		mirror?: string

		// The name of the Perl library to install. You may use the "full distribution path", e.g.  MIYAGAWA/Plack-0.99_05.tar.gz

		name?: string

		// Do not run unit tests

		notest?: bool

		// The local directory from where to install

		from_path?: string

		// Specify the install base to install modules

		locallib?: string

		// Use the mirror's index file instead of the CPAN Meta DB

		mirror_only?: bool

		// Use this if you want to install modules to the system perl include path. You must be root or have "passwordless" sudo for this to work.
		// This uses the cpanm commandline option '--sudo', which has nothing to do with ansible privilege escalation.

		system_lib?: bool

		// minimum version of perl module to consider acceptable

		version?: string

		// Override the path to the cpanm executable

		executable?: string
	}
}

gem :: {
	notify?: string | [...string]
	vars?: {...}
	when?: string
	tags?: [...string]
	gem: {

		// Force gem to install, bypassing dependency checks.

		force?: bool

		// The path to a local gem used as installation source.

		gem_source?: string

		// The name of the gem to be managed.

		name: string

		// Install gem in user's local gems cache or for all users

		user_install?: bool

		// Override the path to the gem executable

		executable?: string

		// The desired state of the gem. C(latest) ensures that the latest version is installed.

		state?: string

		// Version of the gem to be installed/removed.

		version?: string

		// Allow adding build flags for gem compilation

		build_flags?: string

		// Install with or without docs.

		include_doc?: bool

		// Allow installation of pre-release versions of the gem.

		pre_release?: bool

		// The repository from which the gem will be installed

		repository?: string

		// Rewrite the shebang line on installed scripts to use /usr/bin/env.

		env_shebang?: bool

		// Whether to include dependencies or not.

		include_dependencies?: bool

		// Install the gems into a specific directory. These gems will be independent from the global installed ones. Specifying this requires user_install to be false.

		install_dir?: string
	}
}

npm :: {
	notify?: string | [...string]
	vars?: {...}
	when?: string
	tags?: [...string]
	npm: {

		// Use the C(--unsafe-perm) flag when installing.

		unsafe_perm?: bool

		// The version to be installed

		version?: string

		// The name of a node.js library to install

		name?: string

		// The registry to install modules from.

		registry?: string

		// Install the node.js library globally

		global?: bool

		// Use the C(--ignore-scripts) flag when installing.

		ignore_scripts?: bool

		// The base path where to install the node.js libraries

		path?: string

		// Install dependencies in production mode, excluding devDependencies

		production?: bool

		// The state of the node.js library

		state?: string

		// Install packages based on package-lock file, same as running npm ci

		ci?: bool

		// The executable location for npm.
		// This is useful if you are using a version manager, such as nvm

		executable?: string
	}
}

pip :: {
	notify?: string | [...string]
	vars?: {...}
	when?: string
	tags?: [...string]
	pip: {

		// The state of module
		// The 'forcereinstall' option is only available in Ansible 2.1 and above.

		state?: string

		// The system umask to apply before installing the pip package. This is useful, for example, when installing on systems that have a very restrictive umask by default (e.g., "0077") and you want to pip install packages which are to be used by all users. Note that this requires you to specify desired umask mode as an octal string, (e.g., "0022").

		umask?: string

		// The explicit executable or pathname for the pip executable, if different from the Ansible Python interpreter. For example C(pip3.3), if there are both Python 2.7 and 3.3 installations in the system and you want to run pip for the Python 3.3 installation.
		// Mutually exclusive with I(virtualenv) (added in 2.1).
		// Does not affect the Ansible Python interpreter.
		// The setuptools package must be installed for both the Ansible Python interpreter and for the version of Python specified by this option.

		executable?: string

		// Extra arguments passed to pip.

		extra_args?: string

		// The name of a Python library to install or the url(bzr+,hg+,git+,svn+) of the remote package.
		// This can be a list (since 2.2) and contain version specifiers (since 2.7).

		name?: [...]

		// The version number to install of the Python library specified in the I(name) parameter.

		version?: string

		// An optional path to a I(virtualenv) directory to install into. It cannot be specified together with the 'executable' parameter (added in 2.1). If the virtualenv does not exist, it will be created before installing packages. The optional virtualenv_site_packages, virtualenv_command, and virtualenv_python options affect the creation of the virtualenv.

		virtualenv?: string

		// The command or a pathname to the command to create the virtual environment with. For example C(pyvenv), C(virtualenv), C(virtualenv2), C(~/bin/virtualenv), C(/usr/local/bin/virtualenv).

		virtualenv_command?: string

		// The Python executable used for creating the virtual environment. For example C(python3.5), C(python2.7). When not specified, the Python version used to run the ansible module is used. This parameter should not be used when C(virtualenv_command) is using C(pyvenv) or the C(-m venv) module.

		virtualenv_python?: string

		// Whether the virtual environment will inherit packages from the global site-packages directory.  Note that if this setting is changed on an already existing virtual environment it will not have any effect, the environment must be deleted and newly created.

		virtualenv_site_packages?: bool

		// cd into this directory before running the command

		chdir?: string

		// Pass the editable flag.

		editable?: bool

		// The path to a pip requirements file, which should be local to the remote system. File can be specified as a relative path if using the chdir option.

		requirements?: string
	}
}

pip_package_info :: {
	notify?: string | [...string]
	vars?: {...}
	when?: string
	tags?: [...string]
	pip_package_info: {

		clients?: [...]

		// A list of the pip executables that will be used to get the packages. They can be supplied with the full path or just the executable name, i.e `pip3.7`.
	}
}

bower :: {
	notify?: string | [...string]
	vars?: {...}
	when?: string
	tags?: [...string]
	bower: {

		// The name of a bower package to install

		name?: string

		// Install packages from local cache, if the packages were installed before

		offline?: bool

		// The base path where to install the bower packages

		path: string

		// Install with --production flag

		production?: bool

		// Relative path to bower executable from install path

		relative_execpath?: string

		// The state of the bower package

		state?: string

		// The version to be installed

		version?: string
	}
}
