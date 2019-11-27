package os

apt_rpm :: {

	// name of package to install, upgrade or remove.

	pkg: string

	// Indicates the desired package state.

	state?: string

	// update the package database first C(apt-get update).

	update_cache?: bool
}

macports :: {

	// Upgrade all outdated ports, either prior to installing ports or as a separate step.
	// Equivalent to running C(port upgrade outdated).

	upgrade?: bool

	// A port variant specification.
	// C(variant) is only supported with state: I(installed)/I(present).

	variant?: string

	// A list of port names.

	name?: [...string]

	// Update Macports and the ports tree, either prior to installing ports or as a separate step.
	// Equivalent to running C(port selfupdate).

	selfupdate?: bool

	// Indicates the desired state of the port.

	state?: string
}

openbsd_pkg :: {

	// A name or a list of names of the packages.

	name: string

	// When used in combination with the C(build) option, allows overriding the default ports source directory.

	ports_dir?: string

	// Replace or delete packages quickly; do not bother with checksums before removing normal files.

	quick?: bool

	// C(present) will make sure the package is installed. C(latest) will make sure the latest version of the package is installed. C(absent) will make sure the specified package is not installed.

	state?: string

	// Build the package from source instead of downloading and installing a binary. Requires that the port source tree is already installed. Automatically builds and installs the 'sqlports' package, if it is not already installed.

	build?: bool

	// When updating or removing packages, delete the extra configuration file(s) in the old packages which are annotated with @extra in the packaging-list.

	clean?: bool
}

rhn_channel :: {

	// Name of the system as it is known in RHN/Satellite.

	sysname: string

	// The full URL to the RHN/Satellite API.

	url: string

	// RHN/Satellite login.

	user: string

	// Name of the software channel.

	name: string

	// RHN/Satellite password.

	password: string

	// Whether the channel should be present or not, taking action if the state is different from what is stated.

	state?: string
}

urpmi :: {

	// Assume "yes" is the answer to any question urpmi has to ask. Corresponds to the C(--force) option for I(urpmi).

	force?: bool

	// A list of package names to install, upgrade or remove.

	name: string

	// Corresponds to the C(--no-recommends) option for I(urpmi).

	`no-recommends`?: bool

	// Specifies an alternative install root, relative to which all packages will be installed. Corresponds to the C(--root) option for I(urpmi).

	root?: string

	// Indicates the desired package state.

	state?: string

	// Update the package database first C(urpmi.update -a).

	update_cache?: bool
}

zypper_repository :: {

	// Automatically import the gpg signing key of the new or changed repository.
	// Has an effect only if state is I(present). Has no effect on existing (unchanged) repositories or in combination with I(absent).
	// Implies runrefresh.
	// Only works with C(.repo) files if `name` is given explicitly.

	auto_import_keys?: bool

	// A description of the repository

	description?: string

	// A name for the repository. Not required when adding repofiles.

	name?: string

	// Overwrite multiple repository entries, if repositories with both name and URL already exist.

	overwrite_multiple?: bool

	// Set priority of repository. Packages will always be installed from the repository with the smallest priority number.
	// Needs zypper version >= 1.12.25.

	priority?: string

	// Enable autorefresh of the repository.

	autorefresh?: bool

	// Whether to disable GPG signature checking of all packages. Has an effect only if state is I(present).
	// Needs zypper version >= 1.6.2.

	disable_gpg_check?: bool

	// Set repository to enabled (or disabled).

	enabled?: bool

	// URI of the repository or .repo file. Required when state=present.

	repo?: string

	// Refresh the package list of the given repository.
	// Can be used with repo=* to refresh all repositories.

	runrefresh?: bool

	// A source string state.

	state?: string
}

apt_key :: {

	// The URL to retrieve key from.

	url?: string

	// If C(no), SSL certificates for the target url will not be validated. This should only be used on personally controlled sites using self-signed certificates.

	validate_certs?: bool

	// The keyfile contents to add to the keyring.

	data?: string

	// The path to a keyfile on the remote server to add to the keyring.

	file?: string

	// The identifier of the key.
	// Including this allows check mode to correctly report the changed state.
	// If specifying a subkey's id be aware that apt-key does not understand how to remove keys via a subkey id.  Specify the primary key's id instead.
	// This parameter is required when C(state) is set to C(absent).

	id?: string

	// The full path to specific keyring file in /etc/apt/trusted.gpg.d/

	keyring?: string

	// The keyserver to retrieve key from.

	keyserver?: string

	// Ensures that the key is present (added) or absent (revoked).

	state?: string
}

flatpak_remote :: {

	// The path to the C(flatpak) executable to use.
	// By default, this module looks for the C(flatpak) executable on the path.

	executable?: string

	// The URL to the I(flatpakrepo) file representing the repository remote to add.
	// When used with I(state=present), the flatpak remote specified under the I(flatpakrepo_url) is added using the specified installation C(method).
	// When used with I(state=absent), this is not required.
	// Required when I(state=present).

	flatpakrepo_url?: string

	// The installation method to use.
	// Defines if the I(flatpak) is supposed to be installed globally for the whole C(system) or only for the current C(user).

	method?: string

	// The desired name for the flatpak remote to be registered under on the managed host.
	// When used with I(state=present), the remote will be added to the managed host under the specified I(name).
	// When used with I(state=absent) the remote with that name will be removed.

	name: string

	// Indicates the desired package state.

	state?: string
}

homebrew_cask :: {

	// The sudo password to be passed to SUDO_ASKPASS.

	sudo_password?: string

	// upgrade all casks (mutually exclusive with `upgrade_all`)

	upgrade?: bool

	// upgrade casks that auto update; passes --greedy to brew cask outdated when checking if an installed cask has a newer version available

	greedy?: bool

	// name of cask to install/remove

	name: string

	// ':' separated list of paths to search for 'brew' executable.

	path?: string

	// state of the cask

	state?: string

	// update homebrew itself first. Note that C(brew cask update) is a synonym for C(brew update).

	update_homebrew?: bool

	// upgrade all casks (mutually exclusive with `upgrade`)

	upgrade_all?: bool

	// allow external apps

	accept_external_apps?: bool

	// options flags to install a package

	install_options?: string
}

pkgin :: {

	// Name of package to install/remove;
	// multiple names may be given, separated by commas

	name?: string

	// Intended state of the package

	state?: string

	// Update repository database. Can be run with other steps or on it's own.

	update_cache?: bool

	// Upgrade main packages to their newer versions

	upgrade?: bool

	// Clean packages cache

	clean?: bool

	// Force package reinstall

	force?: bool

	// Upgrade all packages to their newer versions

	full_upgrade?: bool
}

pkgng :: {

	// Use local package base instead of fetching an updated one.

	cached?: bool

	// Pkg will chroot in the specified environment.
	// Can not be used together with I(rootdir) or I(jail) options.

	chroot?: string

	// Pkg will execute in the given jail name or id.
	// Can not be used together with I(chroot) or I(rootdir) options.

	jail?: string

	// Name or list of names of packages to install/remove.

	name: string

	// A comma-separated list of keyvalue-pairs of the form C(<+/-/:><key>[=<value>]). A C(+) denotes adding an annotation, a C(-) denotes removing an annotation, and C(:) denotes modifying an annotation. If setting or modifying annotations, a value must be provided.

	annotation?: string

	// Remove automatically installed packages which are no longer needed.

	autoremove?: bool

	// For pkgng versions before 1.1.4, specify packagesite to use for downloading packages. If not specified, use settings from C(/usr/local/etc/pkg.conf).
	// For newer pkgng versions, specify a the name of a repository configured in C(/usr/local/etc/pkg/repos).

	pkgsite?: string

	// For pkgng versions 1.5 and later, pkg will install all packages within the specified root directory.
	// Can not be used together with I(chroot) or I(jail) options.

	rootdir?: string

	// State of the package.
	// Note: "latest" added in 2.7

	state?: string
}

portage :: {

	// Include installed packages where USE flags have changed, except when
	// flags that the user has not enabled are added or removed
	// (--changed-use)

	changed_use?: bool

	// Do not add the packages to the world file (--oneshot)

	oneshot?: bool

	// Sync package repositories first
	// If yes, perform "emerge --sync"
	// If web, perform "emerge-webrsync"

	sync?: string

	// Consider the entire dependency tree of packages (--deep)

	deep?: bool

	// Include installed packages where USE flags have changed (--newuse)

	newuse?: bool

	// Only merge packages but not their dependencies (--nodeps)

	nodeps?: bool

	// Update packages to the best version available (--update)

	update?: bool

	// Merge only binaries (no compiling). This sets getbinpkg=yes.

	usepkgonly?: bool

	// Run emerge in verbose mode (--verbose)

	verbose?: bool

	// Only merge packages' dependencies but not the packages (--onlydeps)

	onlydeps?: bool

	// Package atom or set, e.g. C(sys-apps/foo) or C(>foo-2.13) or C(@world)

	package?: [...string]

	// Run emerge in quiet mode (--quiet)

	quiet?: bool

	// State of the package atom

	state?: string

	// Redirect all build output to logs alone, and do not display it
	// on stdout (--quiet-build)

	quietbuild?: bool

	// Suppresses display of the build log on stdout (--quiet-fail)
	// Only the die message and the path of the build log will be
	// displayed on stdout.

	quietfail?: bool

	// Remove packages not needed by explicitly merged packages (--depclean)
	// If no package is specified, clean up the world's dependencies
	// Otherwise, --depclean serves as a dependency aware version of --unmerge

	depclean?: bool

	// Prefer packages specified at PORTAGE_BINHOST in make.conf

	getbinpkg?: bool

	// Specifies the number of packages to build simultaneously.
	// Since version 2.6: Value of 0 or False resets any previously added
	// --jobs setting values

	jobs?: string

	// Continue as much as possible after an error.

	keepgoing?: bool

	// Specifies that no new builds should be started if there are
	// other builds running and the load average is at least LOAD
	// Since version 2.6: Value of 0 or False resets any previously added
	// --load-average setting values

	loadavg?: string

	// Do not re-emerge installed packages (--noreplace)

	noreplace?: bool
}

snap :: {

	// Define which release of a snap is installed and tracked for updates. This option can only be specified if there is a single snap in the task.

	channel?: string

	// Confinement policy. The classic confinement allows a snap to have the same level of access to the system as "classic" packages, like those managed by APT. This option corresponds to the --classic argument. This option can only be specified if there is a single snap in the task.

	classic?: bool

	// Name of the snap to install or remove. Can be a list of snaps.

	name: string

	// Desired state of the package.

	state?: string
}

yum :: {

	// Disable the excludes defined in YUM config files.
	// If set to C(all), disables all excludes.
	// If set to C(main), disable excludes defined in [main] in yum.conf.
	// If set to C(repoid), disable excludes defined for given repo id.

	disable_excludes?: string

	// I(Plugin) name to disable for the install/update operation. The disabled plugins will not persist beyond the transaction.

	disable_plugin?: string

	// Package name to run the equivalent of yum list --show-duplicates <package> against. In addition to listing packages, use can also list the following: C(installed), C(updates), C(available) and C(repos).
	// This parameter is mutually exclusive with C(name).

	list?: string

	// Skip packages with broken dependencies(devsolve) and are causing problems.

	skip_broken?: bool

	// Whether to install (C(present) or C(installed), C(latest)), or remove (C(absent) or C(removed)) a package.
	// C(present) and C(installed) will simply ensure that a desired package is installed.
	// C(latest) will update the specified package if it's not of the latest available version.
	// C(absent) and C(removed) will remove the specified package.
	// Default is C(None), however in effect the default action is C(present) unless the C(autoremove) option is enabled for this module, then C(absent) is inferred.

	state?: string

	// The remote yum configuration file to use for the transaction.

	conf_file?: string

	// If set to C(yes), and C(state=latest) then only installs updates that have been marked bugfix related.

	bugfix?: string

	// Specifies an alternate directory to store packages.
	// Has an effect only if I(download_only) is specified.

	download_dir?: string

	// I(Plugin) name to enable for the install/update operation. The enabled plugin will not persist beyond the transaction.

	enable_plugin?: string

	// Will also install all packages linked by a weak dependency relation.
	// NOTE: This feature requires yum >= 4 (RHEL/CentOS 8+)

	install_weak_deps?: bool

	// Specifies an alternative installroot, relative to which all packages will be installed.

	installroot?: string

	// A package name or package specifier with version, like C(name-1.0).
	// If a previous version is specified, the task also needs to turn C(allow_downgrade) on. See the C(allow_downgrade) documentation for caveats with downgrading packages.
	// When using state=latest, this can be C('*') which means run C(yum -y update).
	// You can also pass a url or a local path to a rpm file (using state=present). To operate on several packages this can accept a comma separated string of packages or (as of 2.0) a list of packages.

	name?: string

	// Specify if the named package and version is allowed to downgrade a maybe already installed higher version of that package. Note that setting allow_downgrade=True can make this module behave in a non-idempotent way. The task could end up with a set of packages that does not match the complete list of specified packages to install (because dependencies between the downgraded package and others can cause changes to the packages which were in the earlier transaction).

	allow_downgrade?: bool

	// I(Repoid) of repositories to disable for the install/update operation. These repos will not persist beyond the transaction. When specifying multiple repos, separate them with a C(",").
	// As of Ansible 2.7, this can alternatively be a list instead of C(",") separated string

	disablerepo?: string

	// Only download the packages, do not install them.

	download_only?: bool

	// Specifies an alternative release from which all packages will be installed.

	releasever?: string

	// If set to C(yes), and C(state=latest) then only installs updates that have been marked security related.

	security?: bool

	// When using latest, only update installed packages. Do not install packages.
	// Has an effect only if state is I(latest)

	update_only?: bool

	// This module supports C(yum) (as it always has), this is known as C(yum3)/C(YUM3)/C(yum-deprecated) by upstream yum developers. As of Ansible 2.7+, this module also supports C(YUM4), which is the "new yum" and it has an C(dnf) backend.
	// By default, this module will select the backend based on the C(ansible_pkg_mgr) fact.

	use_backend?: string

	// This only applies if using a https url as the source of the rpm. e.g. for localinstall. If set to C(no), the SSL certificates will not be validated.
	// This should only set to C(no) used on personally controlled sites using self-signed certificates as it avoids verifying the source site.
	// Prior to 2.1 the code worked as if this was set to C(yes).

	validate_certs?: bool

	// If C(yes), removes all "leaf" packages from the system that were originally installed as dependencies of user-installed packages but which are no longer required by any such package. Should be used alone or when state is I(absent)
	// NOTE: This feature requires yum >= 3.4.3 (RHEL/CentOS 7+)

	autoremove?: bool

	// I(Repoid) of repositories to enable for the install/update operation. These repos will not persist beyond the transaction. When specifying multiple repos, separate them with a C(",").
	// As of Ansible 2.7, this can alternatively be a list instead of C(",") separated string

	enablerepo?: string

	// Package name(s) to exclude when state=present, or latest

	exclude?: string

	// Amount of time to wait for the yum lockfile to be freed.

	lock_timeout?: int

	// Force yum to check if cache is out of date and redownload if needed. Has an effect only if state is I(present) or I(latest).

	update_cache?: bool

	// Whether to disable the GPG checking of signatures of packages being installed. Has an effect only if state is I(present) or I(latest).

	disable_gpg_check?: bool
}

apt :: {

	// Ignore if packages cannot be authenticated. This is useful for bootstrapping environments that manage their own apt-key setup.
	// C(allow_unauthenticated) is only supported with state: I(install)/I(present)

	allow_unauthenticated?: bool

	// Force the exit code of /usr/sbin/policy-rc.d.
	// For example, if I(policy_rc_d=101) the installed package will not trigger a service start.
	// If /usr/sbin/policy-rc.d already exist, it is backed up and restored after the package installation.
	// If C(null), the /usr/sbin/policy-rc.d isn't created/changed.

	policy_rc_d?: int

	// Path to a .deb package on the remote machine.
	// If :// in the path, ansible will attempt to download deb before installing. (Version added 2.1)
	// Requires the C(xz-utils) package to extract the control file of the deb package to install.

	deb?: string

	// Run the equivalent of C(apt-get update) before the operation. Can be run as part of the package installation or as a separate step.

	update_cache?: bool

	// If C(yes), cleans the local repository of retrieved package files that can no longer be downloaded.

	autoclean?: bool

	// If C(yes), remove unused dependency packages for all module states except I(build-dep). It can also be used as the only option.
	// Previous to version 2.4, autoclean was also an alias for autoremove, now it is its own separate command. See documentation for further information.

	autoremove?: bool

	// Corresponds to the C(-t) option for I(apt) and sets pin priorities

	default_release?: string

	// Corresponds to the C(--force-yes) to I(apt-get) and implies C(allow_unauthenticated: yes)
	// This option will disable checking both the packages' signatures and the certificates of the web servers they are downloaded from.
	// This option *is not* the equivalent of passing the C(-f) flag to I(apt-get) on the command line
	// **This is a destructive operation with the potential to destroy your system, and it should almost never be used.** Please also see C(man apt-get) for more information.

	force?: bool

	// A list of package names, like C(foo), or package specifier with version, like C(foo=1.0). Name wildcards (fnmatch) like C(apt*) and version wildcards like C(foo=1.0*) are also supported.

	name?: [...string]

	// Only upgrade a package if it is already installed.

	only_upgrade?: bool

	// Will force purging of configuration files if the module state is set to I(absent).

	purge?: bool

	// If yes or safe, performs an aptitude safe-upgrade.
	// If full, performs an aptitude full-upgrade.
	// If dist, performs an apt-get dist-upgrade.
	// Note: This does not upgrade a specific package, use state=latest for that.
	// Note: Since 2.4, apt-get is used as a fall-back if aptitude is not present.

	upgrade?: string

	// Update the apt cache if its older than the I(cache_valid_time). This option is set in seconds.
	// As of Ansible 2.4, if explicitly set, this sets I(update_cache=yes).

	cache_valid_time?: string

	// Add dpkg options to apt command. Defaults to '-o "Dpkg::Options::=--force-confdef" -o "Dpkg::Options::=--force-confold"'
	// Options should be supplied as comma separated list

	dpkg_options?: string

	// Force usage of apt-get instead of aptitude

	force_apt_get?: bool

	// Corresponds to the C(--no-install-recommends) option for I(apt). C(yes) installs recommended packages.  C(no) does not install recommended packages. By default, Ansible will use the same defaults as the operating system. Suggested packages are never installed.

	install_recommends?: bool

	// Indicates the desired package state. C(latest) ensures that the latest version is installed. C(build-dep) ensures the package build dependencies are installed. C(fixed) attempt to correct a system with broken dependencies in place.

	state?: string

	// Amount of retries if the cache update fails. Also see I(update_cache_retry_max_delay).

	update_cache_retries?: int

	// Use an exponential backoff delay for each retry (see I(update_cache_retries)) up to this max delay in seconds.

	update_cache_retry_max_delay?: int
}

layman :: {

	// Whether to install (C(present)), sync (C(updated)), or uninstall (C(absent)) the overlay.

	state?: string

	// If C(no), SSL certificates will not be validated. This should only be set to C(no) when no other option exists.  Prior to 1.9.3 the code defaulted to C(no).

	validate_certs?: bool

	// An URL of the alternative overlays list that defines the overlay to install. This list will be fetched and saved under C(${overlay_defs})/${name}.xml), where C(overlay_defs) is readed from the Layman's configuration.

	list_url?: string

	// The overlay id to install, synchronize, or uninstall. Use 'ALL' to sync all of the installed overlays (can be used only when C(state=updated)).

	name: string
}

pulp_repo :: {

	// Wait for asynchronous tasks to complete before returning.

	wait_for_completion?: bool

	// Whether or not to add the export distributor to new C(rpm) repositories.

	add_export_distributor?: bool

	// Private key to the certificate specified in I(importer_ssl_client_cert), assuming it is not included in the certificate file itself. This can be the file content or the path to the file.
	// If not specified the default value will come from client_key. Which will change in Ansible 2.14.

	feed_client_key?: string

	// httplib2, the library used by the M(uri) module only sends authentication information when a webservice responds to an initial request with a 401 status. Since some basic auth services do not properly send a 401, logins will fail. This option forces the sending of the Basic authentication header upon initial request.

	force_basic_auth?: bool

	// Proxy url setting for the pulp repository importer. This is in the format scheme://host.

	proxy_host?: string

	// Make the repo available over HTTP.

	serve_http?: bool

	// Make the repo available over HTTPS.

	serve_https?: bool

	// Certificate used as the client certificate when synchronizing the repository. This is used to communicate authentication information to the feed source. The value to this option must be the full path to the certificate. The specified file may be the certificate itself or a single file containing both the certificate and private key. This can be the file content or the path to the file.
	// If not specified the default value will come from client_cert. Which will change in Ansible 2.14.

	feed_client_cert?: string

	// Proxy password for the pulp repository importer.

	proxy_password?: string

	// URL of the pulp server to connect to.

	pulp_host?: string

	// Repo plugin type to use (i.e. C(rpm), C(docker)).

	repo_type?: string

	// The username for use in HTTP basic authentication to the pulp API.

	url_username?: string

	// The repo state. A state of C(sync) will queue a sync of the repo. This is asynchronous but not delayed like a scheduled sync. A state of C(publish) will use the repository's distributor to publish the content.

	state?: string

	// The password for use in HTTP basic authentication to the pulp API. If the I(url_username) parameter is not specified, the I(url_password) parameter will not be used.

	url_password?: string

	// Upstream feed URL to receive updates from.

	feed?: string

	// Boolean flag to indicate whether sqlite files should be generated during a repository publish.

	generate_sqlite?: bool

	// Name of the repo to add or remove. This correlates to repo-id in Pulp.

	name: string

	// Proxy port setting for the pulp repository importer.

	proxy_port?: string

	// Distributor to use when state is C(publish). The default is to publish all distributors.

	publish_distributor?: string

	// Whether to generate repoview files for a published repository. Setting this to "yes" automatically activates `generate_sqlite`.

	repoview?: bool

	// If C(no), SSL certificates will not be validated. This should only be used on personally controlled sites using self-signed certificates.

	validate_certs?: bool

	// CA certificate string used to validate the feed source SSL certificate. This can be the file content or the path to the file. The ca_cert alias will be removed in Ansible 2.14.

	feed_ca_cert?: string

	// Proxy username for the pulp repository importer.

	proxy_username?: string

	// Relative URL for the local repository.

	relative_url: string
}

rhn_register :: {

	// If C(yes), the registered node will not upload its installed packages information to Satellite server.

	nopackages?: bool

	// Supply an profilename for use with registration.

	profilename?: string

	// Supply an activation key for use with registration.

	activationkey?: string

	// Supply a custom ssl CA certificate file for use with registration.

	ca_cert?: string

	// Red Hat Network password.

	password?: string

	// Specify an alternative Red Hat Network server URL.
	// The default is the current value of I(serverURL) from C(/etc/sysconfig/rhn/up2date).

	server_url?: string

	// Whether to register (C(present)), or unregister (C(absent)) a system.

	state?: string

	// Supply an organizational id for use with registration.

	systemorgid?: string

	// Red Hat Network username.

	username?: string

	// Optionally specify a list of channels to subscribe to upon successful registration.

	channels?: [..._]

	// If C(no), extended update support will be requested.

	enable_eus?: bool
}

slackpkg :: {

	// name of package to install/remove

	name: string

	// state of the package, you can use "installed" as an alias for C(present) and removed as one for C(absent).

	state?: string

	// update the package database first

	update_cache?: bool
}

swupd :: {

	// URL pointing to the contents of available bundles. If not specified, the contents are retrieved from clearlinux.org.

	contenturl?: string

	// Name of the (I)bundle to install or remove.

	name?: string

	// Updates the OS to the latest version.

	update?: bool

	// Overrides both I(contenturl) and I(versionurl).

	url?: string

	// The format suffix for version file downloads. For example [1,2,3,staging,etc]. If not specified, the default format is used.

	format?: string

	// The manifest contains information about the bundles at certain version of the OS. Specify a Manifest version to verify against that version or leave unspecified to verify against the current version.

	manifest?: string

	// Indicates the desired (I)bundle state. C(present) ensures the bundle is installed while C(absent) ensures the (I)bundle is not installed.

	state?: string

	// Verify content for OS version.

	verify?: bool

	// URL for version string download.

	versionurl?: string
}

xbps :: {

	// Desired state of the package.

	state?: string

	// Whether or not to refresh the master package lists. This can be run as part of a package installation or as a separate step.

	update_cache?: bool

	// Whether or not to upgrade whole system

	upgrade?: bool

	// Name of the package to install, upgrade, or remove.

	name?: string

	// When removing a package, also remove its dependencies, provided that they are not required by other packages and were not explicitly installed by a user.

	recurse?: bool
}

homebrew_tap :: {

	// state of the repository.

	state?: string

	// The optional git URL of the repository to tap. The URL is not assumed to be on GitHub, and the protocol doesn't have to be HTTP. Any location and protocol that git can handle is fine.
	// I(name) option may not be a list of multiple taps (but a single tap instead) when this option is provided.

	url?: string

	// The GitHub user/organization repository to tap.

	name: string
}

package_facts :: {

	// The package manager used by the system so we can query the package information.
	// Since 2.8 this is a list and can support multiple package managers per system.
	// The 'portage' and 'pkg' options were added in version 2.8.

	manager?: [..._]

	// This option controls how the module queries the package managers on the system. C(first) means it will return only information for the first supported package manager available. C(all) will return information for all supported and available package managers on the system.

	strategy?: string
}

redhat_subscription :: {

	// Specify a subscription pool name to consume.  Regular expressions accepted. Use I(pool_ids) instead if
possible, as it is much faster. Mutually exclusive with I(pool_ids).


	pool?: string

	// Enable or disable https server certificate verification when connecting to C(server_hostname)

	server_insecure?: string

	// Specify a HTTP proxy port

	server_proxy_port?: string

	// Name of the system to register, defaults to the hostname

	consumer_name?: string

	// The type of unit to register, defaults to system

	consumer_type?: string

	// Register the system even if it is already registered

	force_register?: bool

	// Set a release version

	release?: string

	// Specify an alternative location for a CA certificate for CDN

	rhsm_repo_ca_cert?: string

	// Specify a user for HTTP proxy with basic authentication

	server_proxy_user?: string

	// supply an activation key for use with registration

	activationkey?: string

	// Upon successful registration, auto-consume available subscriptions
	// Added in favor of deprecated autosubscribe in 2.5.

	auto_attach?: bool

	// Register with a specific environment in the destination org. Used with Red Hat Satellite 6.x or Katello

	environment?: string

	// Specify an alternative Red Hat Subscription Management or Sat6 server

	server_hostname?: string

	// Specify a HTTP proxy hostname

	server_proxy_hostname?: string

	// Specify a password for HTTP proxy with basic authentication

	server_proxy_password?: string

	// Set syspurpose attributes in file C(/etc/rhsm/syspurpose/syspurpose.json) and synchronize these attributes with RHSM server. Syspurpose attributes help attach the most appropriate subscriptions to the system automatically. When C(syspurpose.json) file already contains some attributes, then new attributes overwrite existing attributes. When some attribute is not listed in the new list of attributes, the existing attribute will be removed from C(syspurpose.json) file. Unknown attributes are ignored.

	syspurpose?: {...}

	// access.redhat.com or Sat6  username

	username?: string

	// Organization ID to use in conjunction with activationkey

	org_id?: string

	// Specify subscription pool IDs to consume. Prefer over I(pool) when possible as it is much faster.
A pool ID may be specified as a C(string) - just the pool ID (ex. C(0123456789abcdef0123456789abcdef)),
or as a C(dict) with the pool ID as the key, and a quantity as the value (ex.
C(0123456789abcdef0123456789abcdef: 2). If the quantity is provided, it is used to consume multiple
entitlements from a pool (the pool must support this). Mutually exclusive with I(pool).


	pool_ids?: string

	// Specify CDN baseurl

	rhsm_baseurl?: string

	// References an existing consumer ID to resume using a previous registration
for this system. If the  system's identity certificate is lost or corrupted,
this option allows it to resume using its previous identity and subscriptions.
The default is to not specify a consumer ID so a new ID is created.


	consumer_id?: string

	// access.redhat.com or Sat6 password

	password?: string

	// whether to register and subscribe (C(present)), or unregister (C(absent)) a system

	state?: string
}

rhsm_repository :: {

	// The ID of repositories to enable.
	// To operate on several repositories this can accept a comma separated list or a YAML list.

	name: string

	// Disable all currently enabled repositories that are not not specified in C(name). Only set this to C(True) if passing in a list of repositories to the C(name) field. Using this with C(loop) will most likely not have the desired result.

	purge?: bool

	// If state is equal to present or disabled, indicates the desired repository state.

	state: string
}

rpm_key :: {

	// The long-form fingerprint of the key being imported.
	// This will be used to verify the specified key.

	fingerprint?: string

	// Key that will be modified. Can be a url, a file on the managed node, or a keyid if the key already exists in the database.

	key: string

	// If the key will be imported or removed from the rpm db.

	state?: string

	// If C(no) and the C(key) is a url starting with https, SSL certificates will not be validated.
	// This should only be used on personally controlled sites using self-signed certificates.

	validate_certs?: bool
}

svr4pkg :: {

	// Whether to install the package only in the current zone, or install it into all zones.
	// The installation into all zones works only if you are working with the global zone.

	zone?: string

	// Install/Remove category instead of a single package.

	category?: bool

	// Package name, e.g. C(SUNWcsr)

	name: string

	// HTTP[s] proxy to be used if C(src) is a URL.

	proxy?: string

	// Specifies the location of a response file to be used if package expects input on install. (added in Ansible 1.4)

	response_file?: string

	// Specifies the location to install the package from. Required when C(state=present).
	// Can be any path acceptable to the C(pkgadd) command's C(-d) option. e.g.: C(somefile.pkg), C(/dir/with/pkgs), C(http:/server/mypkgs.pkg).
	// If using a file or directory, they must already be accessible by the host. See the M(copy) module for a way to get them there.

	src?: string

	// Whether to install (C(present)), or remove (C(absent)) a package.
	// If the package is to be installed, then I(src) is required.
	// The SVR4 package system doesn't provide an upgrade operation. You need to uninstall the old, then install the new package.

	state: string
}

zypper :: {

	// Package name C(name) or package specifier or a list of either.
	// Can include a version like C(name=1.0), C(name>3.4) or C(name<=2.7). If a version is given, C(oldpackage) is implied and zypper is allowed to update the package within the version range given.
	// You can also pass a url or a local path to a rpm file.
	// When using state=latest, this can be '*', which updates all installed packages.

	name: string

	// Adds C(--oldpackage) option to I(zypper). Allows to downgrade packages with less side-effects than force. This is implied as soon as a version is specified as part of the package name.

	oldpackage?: bool

	// The type of package to be operated on.

	type?: string

	// Whether to disable to GPG signature checking of the package signature being installed. Has an effect only if state is I(present) or I(latest).

	disable_gpg_check?: bool

	// Add additional options to C(zypper) command.
	// Options should be supplied in a single line as if given in the command line.

	extra_args?: string

	// Add additional global target options to C(zypper).
	// Options should be supplied in a single line as if given in the command line.

	extra_args_precommand?: string

	// Adds C(--force-resolution) option to I(zypper). Allows to (un)install packages with conflicting requirements (resolver will choose a solution).

	force_resolution?: bool

	// Corresponds to the C(--no-recommends) option for I(zypper). Default behavior (C(yes)) modifies zypper's default behavior; C(no) does install recommended packages.

	disable_recommends?: bool

	// Adds C(--force) option to I(zypper). Allows to downgrade packages and change vendor or architecture.

	force?: bool

	// C(present) will make sure the package is installed. C(latest)  will make sure the latest version of the package is installed. C(absent)  will make sure the specified package is not installed. C(dist-upgrade) will make sure the latest version of all installed packages from all enabled repositories is installed.
	// When using C(dist-upgrade), I(name) should be C('*').

	state?: string

	// Run the equivalent of C(zypper refresh) before the operation. Disabled in check mode.

	update_cache?: bool
}

apk :: {

	// During upgrade, reset versioned world dependencies and change logic to prefer replacing or downgrading packages (instead of holding them) if the currently installed package is no longer available from any repository.

	available?: bool

	// A package name, like C(foo), or multiple packages, like C(foo, bar).

	name?: [...string]

	// A package repository or multiple repositories. Unlike with the underlying apk command, this list will override the system repositories rather than supplement them.

	repository?: string

	// Indicates the desired package(s) state.
	// C(present) ensures the package(s) is/are present.
	// C(absent) ensures the package(s) is/are absent.
	// C(latest) ensures the package(s) is/are present and the latest version(s).

	state?: string

	// Update repository indexes. Can be run with other steps or on it's own.

	update_cache?: bool

	// Upgrade all installed packages to their latest version.

	upgrade?: bool
}

homebrew :: {

	// options flags to install a package

	install_options?: string

	// list of names of packages to install/remove

	name?: [...string]

	// A ':' separated list of paths to search for 'brew' executable. Since a package (I(formula) in homebrew parlance) location is prefixed relative to the actual path of I(brew) command, providing an alternative I(brew) path enables managing different set of packages in an alternative location in the system.

	path?: string

	// state of the package

	state?: string

	// update homebrew itself first

	update_homebrew?: bool

	// upgrade all homebrew packages

	upgrade_all?: bool
}

opkg :: {

	// opkg --force parameter used

	force?: string

	// name of package to install/remove

	name: string

	// state of the package

	state?: string

	// update the package db first

	update_cache?: bool
}

pacman :: {

	// Name or list of names of the package(s) or file(s) to install, upgrade, or remove. Can't be used in combination with C(upgrade).

	name?: [...string]

	// Desired state of the package.

	state?: string

	// Whether or not to refresh the master package lists.
	// This can be run as part of a package installation or as a separate step.

	update_cache?: bool

	// Additional option to pass to pacman when enforcing C(update_cache).

	update_cache_extra_args?: string

	// Whether or not to upgrade the whole system. Can't be used in combination with C(name).

	upgrade?: bool

	// Additional option to pass to pacman when enforcing C(upgrade).

	upgrade_extra_args?: string

	// Additional option to pass to pacman when enforcing C(state).

	extra_args?: string

	// When removing package, force remove package, without any checks. Same as `extra_args="--nodeps --nodeps"`. When update_cache, force redownload repo databases. Same as `update_cache_extra_args="--refresh --refresh"`.

	force?: bool
}

pkg5_publisher :: {

	// The publisher's name.

	name: string

	// A path or URL to the repository.
	// Multiple values may be provided.

	origin?: string

	// Whether to ensure that a publisher is present or absent.

	state?: string

	// Packages installed from a sticky repository can only receive updates from that repository.

	sticky?: bool

	// Is the repository enabled or disabled?

	enabled?: bool

	// A path or URL to the repository mirror.
	// Multiple values may be provided.

	mirror?: string
}

flatpak :: {

	// The path to the C(flatpak) executable to use.
	// By default, this module looks for the C(flatpak) executable on the path.

	executable?: string

	// The installation method to use.
	// Defines if the I(flatpak) is supposed to be installed globally for the whole C(system) or only for the current C(user).

	method?: string

	// The name of the flatpak to manage.
	// When used with I(state=present), I(name) can be specified as an C(http(s)) URL to a C(flatpakref) file or the unique reverse DNS name that identifies a flatpak.
	// When supplying a reverse DNS name, you can use the I(remote) option to specify on what remote to look for the flatpak. An example for a reverse DNS name is C(org.gnome.gedit).
	// When used with I(state=absent), it is recommended to specify the name in the reverse DNS format.
	// When supplying an C(http(s)) URL with I(state=absent), the module will try to match the installed flatpak based on the name of the flatpakref to remove it. However, there is no guarantee that the names of the flatpakref file and the reverse DNS name of the installed flatpak do match.

	name: string

	// The flatpak remote (repository) to install the flatpak from.
	// By default, C(flathub) is assumed, but you do need to add the flathub flatpak_remote before you can use this.
	// See the M(flatpak_remote) module for managing flatpak remotes.

	remote?: string

	// Indicates the desired package state.

	state?: string
}

installp :: {

	// One or more packages to install or remove.
	// Use C(all) to install all packages available on informed C(repository_path).

	name: [..._]

	// Path with AIX packages (required to install).

	repository_path?: string

	// Whether the package needs to be present on or absent from the system.

	state?: string

	// Whether to accept the license for the package(s).

	accept_license?: bool
}

pkgutil :: {

	// Package name, e.g. (C(CSWnrpe))

	name: string

	// Specifies the repository path to install the package from.
	// Its global definition is done in C(/etc/opt/csw/pkgutil.conf).

	site?: string

	// Whether to install (C(present)), or remove (C(absent)) a package.
	// The upgrade (C(latest)) operation will update/install the package to the latest version available.
	// Note: The module has a limitation that (C(latest)) only works for one package, not lists of them.

	state: string

	// If you want to refresh your catalog from the mirror, set this to (C(yes)).

	update_catalog?: bool
}

portinstall :: {

	// name of package to install/remove

	name: string

	// state of the package

	state?: string

	// use packages instead of ports whenever available

	use_packages?: bool
}

yum_repository :: {

	// A URL pointing to the ASCII-armored CA key file for the repository.

	gpgcakey?: string

	// Specifies a URL to a file containing a list of baseurls.
	// This, the I(baseurl) or I(metalink) parameters are required if I(state) is set to C(present).

	mirrorlist?: string

	// Maximum available network bandwidth in bytes/second. Used with the I(throttle) option.
	// If I(throttle) is a percentage and bandwidth is C(0) then bandwidth throttling will be disabled. If I(throttle) is expressed as a data rate (bytes/sec) then this option is ignored. Default is C(0) (no bandwidth throttling).

	bandwidth?: string

	// When the relative size of deltarpm metadata vs pkgs is larger than this, deltarpm metadata is not downloaded from the repo. Note that you can give values over C(100), so C(200) means that the metadata is required to be half the size of the packages. Use C(0) to turn off this check, and always download metadata.

	deltarpm_metadata_percentage?: string

	// List of packages to exclude from updates or installs. This should be a space separated list. Shell globs using wildcards (eg. C(*) and C(?)) are allowed.
	// The list can also be a regular YAML array.

	exclude?: string

	// List of packages you want to only use from a repository. This should be a space separated list. Shell globs using wildcards (eg. C(*) and C(?)) are allowed. Substitution variables (e.g. C($releasever)) are honored here.
	// The list can also be a regular YAML array.

	includepkgs?: string

	// Determines how yum resolves host names.
	// C(4) or C(IPv4) - resolve to IPv4 addresses only.
	// C(6) or C(IPv6) - resolve to IPv6 addresses only.

	ip_resolve?: string

	// This tells yum whether or not it should perform a GPG signature check on the repodata from this repository.

	repo_gpgcheck?: bool

	// Directory where the C(.repo) files will be stored.

	reposdir?: string

	// If set to C(yes) yum will continue running if this repository cannot be contacted for any reason. This should be set carefully as all repos are consulted for any given command.

	skip_if_unavailable?: bool

	// Path to the SSL client certificate yum should use to connect to repos/remote sites.

	sslclientcert?: string

	// Enable bandwidth throttling for downloads.
	// This option can be expressed as a absolute data rate in bytes/sec. An SI prefix (k, M or G) may be appended to the bandwidth value.

	throttle?: string

	// If set to C(yes) Yum will download packages and metadata from this repo in parallel, if possible.

	async?: bool

	// File name without the C(.repo) extension to save the repo in. Defaults to the value of I(name).

	file?: string

	// Tells yum whether or not it should perform a GPG signature check on packages.
	// No default setting. If the value is not set, the system setting from C(/etc/yum.conf) or system default of C(no) will be used.

	gpgcheck?: bool

	// Include external configuration file. Both, local path and URL is supported. Configuration file will be inserted at the position of the I(include=) line. Included files may contain further include lines. Yum will abort with an error if an inclusion loop is detected.

	include?: string

	// Filter the I(metadata_expire) time, allowing a trade of speed for accuracy if a command doesn't require it. Each yum command can specify that it requires a certain level of timeliness quality from the remote repos. from "I'm about to install/upgrade, so this better be current" to "Anything that's available is good enough".
	// C(never) - Nothing is filtered, always obey I(metadata_expire).
	// C(read-only:past) - Commands that only care about past information are filtered from metadata expiring. Eg. I(yum history) info (if history needs to lookup anything about a previous transaction, then by definition the remote package was available in the past).
	// C(read-only:present) - Commands that are balanced between past and future. Eg. I(yum list yum).
	// C(read-only:future) - Commands that are likely to result in running other commands which will require the latest metadata. Eg. I(yum check-update).
	// Note that this option does not override "yum clean expire-cache".

	metadata_expire_filter?: string

	// Password to use with the username for basic authentication.

	password?: string

	// Username to use for proxy.

	proxy_username?: string

	// Set the number of times any attempt to retrieve a file should retry before returning an error. Setting this to C(0) makes yum try forever.

	retries?: string

	// Path to the SSL client key yum should use to connect to repos/remote sites.

	sslclientkey?: string

	// When a repository id is displayed, append these yum variables to the string if they are used in the I(baseurl)/etc. Variables are appended in the order listed (and found).

	ui_repoid_vars?: string

	// When the relative size of delta vs pkg is larger than this, delta is not used. Use C(0) to turn off delta rpm processing. Local repositories (with file:// I(baseurl)) have delta rpms turned off by default.

	deltarpm_percentage?: string

	// Time (in seconds) after which the metadata will expire.
	// Default value is 6 hours.

	metadata_expire?: string

	// Time (in seconds) after which the mirrorlist locally cached will expire.
	// Default value is 6 hours.

	mirrorlist_expire?: string

	// Number of seconds to wait for a connection before timing out.

	timeout?: string

	// Username to use for basic authentication to a repo or really any url.

	username?: string

	// This tells yum whether or not use this repository.

	enabled?: bool

	// Path to the directory containing the databases of the certificate authorities yum should use to verify SSL certificates.

	sslcacert?: string

	// A URL pointing to the ASCII-armored GPG key file for the repository.
	// It can also be a list of multiple URLs.

	gpgkey?: string

	// URL to the proxy server that yum should use. Set to C(_none_) to disable the global proxy setting.

	proxy?: string

	// Password for this proxy.

	proxy_password?: string

	// Defines whether yum should verify SSL certificates/hosts at all.

	sslverify?: bool

	// URL to the directory where the yum repository's 'repodata' directory lives.
	// It can also be a list of multiple URLs.
	// This, the I(metalink) or I(mirrorlist) parameters are required if I(state) is set to C(present).

	baseurl?: string

	// Determines whether yum will allow the use of package groups for this repository.

	enablegroups?: bool

	// C(roundrobin) randomly selects a URL out of the list of URLs to start with and proceeds through each of them as it encounters a failure contacting the host.
	// C(priority) starts from the first I(baseurl) listed and reads through them sequentially.

	failovermethod?: string

	// Either C(1) or C(0). Determines whether or not yum keeps the cache of headers and packages after successful installation.

	keepcache?: string

	// Specifies a URL to a metalink file for the repomd.xml, a list of mirrors for the entire repository are generated by converting the mirrors for the repomd.xml file to a I(baseurl).
	// This, the I(baseurl) or I(mirrorlist) parameters are required if I(state) is set to C(present).

	metalink?: string

	// Protect packages from updates from other repositories.

	protect?: bool

	// Enables support for S3 repositories.
	// This option only works if the YUM S3 plugin is installed.

	s3_enabled?: bool

	// Whether yum should check the permissions on the paths for the certificates on the repository (both remote and local).
	// If we can't read any of the files then yum will force I(skip_if_unavailable) to be C(yes). This is most useful for non-root processes which use yum on repos that have client cert files which are readable only by root.

	ssl_check_cert_permissions?: bool

	// Relative cost of accessing this repository. Useful for weighing one repo's packages as greater/less than any other.

	cost?: string

	// A human readable string describing the repository. This option corresponds to the "name" property in the repo file.
	// This parameter is only required if I(state) is set to C(present).

	description?: string

	// Determines how upstream HTTP caches are instructed to handle any HTTP downloads that Yum does.
	// C(all) means that all HTTP downloads should be cached.
	// C(packages) means that only RPM package downloads should be cached (but not repository metadata downloads).
	// C(none) means that no HTTP downloads should be cached.

	http_caching?: string

	// This tells yum whether or not HTTP/1.1 keepalive should be used with this repository. This can improve transfer speeds by using one connection when downloading multiple files from a repository.

	keepalive?: bool

	// Unique repository ID. This option builds the section name of the repository in the repo file.
	// This parameter is only required if I(state) is set to C(present) or C(absent).

	name: string

	// Enforce ordered protection of repositories. The value is an integer from 1 to 99.
	// This option only works if the YUM Priorities plugin is installed.

	priority?: string

	// State of the repo file.

	state?: string
}

apt_repository :: {

	// Override the distribution codename to use for PPA repositories. Should usually only be set when working with a PPA on a non-Ubuntu target (e.g. Debian or Mint)

	codename?: string

	// The octal mode for newly created files in sources.list.d

	mode?: string

	// A source string state.

	state?: string

	// Use an exponential backoff delay for each retry (see I(update_cache_retries)) up to this max delay in seconds.

	update_cache_retry_max_delay?: int

	// If C(no), SSL certificates for the target repo will not be validated. This should only be used on personally controlled sites using self-signed certificates.

	validate_certs?: bool

	// Sets the name of the source list file in sources.list.d. Defaults to a file name based on the repository source url. The .list extension will be automatically added.

	filename?: string

	// A source string for the repository.

	repo: string

	// Run the equivalent of C(apt-get update) when a change occurs.  Cache updates are run after making changes.

	update_cache?: bool

	// Amount of retries if the cache update fails. Also see I(update_cache_retry_max_delay).

	update_cache_retries?: int
}

package :: {

	// Package name, or package specifier with version.
	// Syntax varies with package manager. For example C(name-1.0) or C(name=1.0).
	// Package names also vary with package manager; this module will not "translate" them per distro. For example C(libyaml-dev), C(libyaml-devel).

	name: string

	// Whether to install (C(present)), or remove (C(absent)) a package.
	// You can use other states like C(latest) ONLY if they are supported by the underlying package module(s) executed.

	state: string

	// The required package manager module to use (yum, apt, etc). The default 'auto' will use existing facts or try to autodetect it.
	// You should only use this field if the automatic selection is not working for some reason.

	use?: string
}

rhsm_release :: {

	// RHSM release version to use (use null to unset)

	release: string
}

sorcery :: {

	// Time in seconds to invalidate grimoire collection on update
	// especially useful for SCM and rsync grimoires
	// makes sense only in pair with C(update_cache)

	cache_valid_time?: string

	// Comma-separated list of _optional_ dependencies to build a spell (or make sure it is built) with; use +/- in front of dependency to turn it on/off ('+' is optional though)
	// this option is ignored if C(name) parameter is equal to '*' or contains more than one spell
	// providers must be supplied in the form recognized by Sorcery, e.g. 'openssl(SSL)'

	depends?: string

	// Name of the spell
	// multiple names can be given, separated by commas
	// special value '*' in conjunction with states C(latest) or C(rebuild) will update or rebuild the whole system respectively

	name?: string

	// Whether to cast, dispel or rebuild a package
	// state C(cast) is an equivalent of C(present), not C(latest)
	// state C(latest) always triggers C(update_cache=yes)
	// state C(rebuild) implies cast of all specified spells, not only those existed before

	state?: string

	// Whether or not to update sorcery scripts at the very first stage

	update?: bool

	// Whether or not to update grimoire collection before casting spells

	update_cache?: bool
}

apt_repo :: {

	// Remove other then added repositories
	// Used if I(state=present)

	remove_others?: bool

	// Name of the repository to add or remove.

	repo: string

	// Indicates the desired repository state.

	state?: string

	// Update the package database after changing repositories.

	update?: bool
}

dpkg_selections :: {

	// Name of the package

	name: string

	// The selection state to set the package to.

	selection: string
}

pkg5 :: {

	// Accept any licences.

	accept_licenses?: bool

	// Creates a new boot environment with the given name.

	be_name?: string

	// An FRMI of the package(s) to be installed/removed/updated.
	// Multiple packages may be specified, separated by C(,).

	name: string

	// Refresh publishers before execution.

	refresh?: bool

	// Whether to install (I(present), I(latest)), or remove (I(absent)) a package.

	state?: string
}

swdepot :: {

	// The source repository from which install or upgrade a package.

	depot?: string

	// package name.

	name: string

	// whether to install (C(present), C(latest)), or remove (C(absent)) a package.

	state: string
}

dnf :: {

	// If C(yes), removes all "leaf" packages from the system that were originally installed as dependencies of user-installed packages but which are no longer required by any such package. Should be used alone or when state is I(absent)

	autoremove?: bool

	// I(Plugin) name to disable for the install/update operation. The disabled plugins will not persist beyond the transaction.

	disable_plugin?: string

	// Amount of time to wait for the dnf lockfile to be freed.

	lock_timeout?: int

	// When using latest, only update installed packages. Do not install packages.
	// Has an effect only if state is I(latest)

	update_only?: bool

	// Specify if the named package and version is allowed to downgrade a maybe already installed higher version of that package. Note that setting allow_downgrade=True can make this module behave in a non-idempotent way. The task could end up with a set of packages that does not match the complete list of specified packages to install (because dependencies between the downgraded package and others can cause changes to the packages which were in the earlier transaction).

	allow_downgrade?: bool

	// The remote dnf configuration file to use for the transaction.

	conf_file?: string

	// I(Plugin) name to enable for the install/update operation. The enabled plugin will not persist beyond the transaction.

	enable_plugin?: string

	// Package name(s) to exclude when state=present, or latest. This can be a list or a comma separated string.

	exclude?: string

	// Specifies an alternative installroot, relative to which all packages will be installed.

	installroot?: string

	// Specifies an alternative release from which all packages will be installed.

	releasever?: string

	// Specifies an alternate directory to store packages.
	// Has an effect only if I(download_only) is specified.

	download_dir?: string

	// This is effectively a no-op in DNF as it is not needed with DNF, but is an accepted parameter for feature parity/compatibility with the I(yum) module.

	install_repoquery?: bool

	// Will also install all packages linked by a weak dependency relation.

	install_weak_deps?: bool

	// A package name or package specifier with version, like C(name-1.0). When using state=latest, this can be '*' which means run: dnf -y update. You can also pass a url or a local path to a rpm file. To operate on several packages this can accept a comma separated string of packages or a list of packages.

	name: string

	// If set to C(yes), and C(state=latest) then only installs updates that have been marked security related.

	security?: bool

	// Force dnf to check if cache is out of date and redownload if needed. Has an effect only if state is I(present) or I(latest).

	update_cache?: bool

	// This only applies if using a https url as the source of the rpm. e.g. for localinstall. If set to C(no), the SSL certificates will not be validated.
	// This should only set to C(no) used on personally controlled sites using self-signed certificates as it avoids verifying the source site.

	validate_certs?: bool

	// If set to C(yes), and C(state=latest) then only installs updates that have been marked bugfix related.

	bugfix?: bool

	// Disable the excludes defined in DNF config files.
	// If set to C(all), disables all excludes.
	// If set to C(main), disable excludes defined in [main] in dnf.conf.
	// If set to C(repoid), disable excludes defined for given repo id.

	disable_excludes?: string

	// Whether to disable the GPG checking of signatures of packages being installed. Has an effect only if state is I(present) or I(latest).

	disable_gpg_check?: bool

	// I(Repoid) of repositories to disable for the install/update operation. These repos will not persist beyond the transaction. When specifying multiple repos, separate them with a ",".

	disablerepo?: string

	// Only download the packages, do not install them.

	download_only?: bool

	// I(Repoid) of repositories to enable for the install/update operation. These repos will not persist beyond the transaction. When specifying multiple repos, separate them with a ",".

	enablerepo?: string

	// Various (non-idempotent) commands for usage with C(/usr/bin/ansible) and I(not) playbooks. See examples.

	list?: string

	// Skip packages with broken dependencies(devsolve) and are causing problems.

	skip_broken?: bool

	// Whether to install (C(present), C(latest)), or remove (C(absent)) a package.
	// Default is C(None), however in effect the default action is C(present) unless the C(autoremove) option is enabled for this module, then C(absent) is inferred.

	state?: string
}
