package files

blockinfile :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	blockinfile: {

		// Create a backup file including the timestamp information so you can get the original file back if you somehow clobbered it incorrectly.

		backup?: bool

		// Create a new file if it does not exist.

		create?: bool

		// If specified, the block will be inserted before the last match of specified regular expression.
		// A special value is available; C(BOF) for inserting the block at the beginning of the file.
		// If specified regular expression has no matches, the block will be inserted at the end of the file.

		insertbefore?: string

		// Whether the block should be there or not.

		state?: string

		// The text to insert inside the marker lines.
		// If it is missing or an empty string, the block will be removed as if C(state) were specified to C(absent).

		block?: string

		// If specified, the block will be inserted after the last match of specified regular expression.
		// A special value is available; C(EOF) for inserting the block at the end of the file.
		// If specified regular expression has no matches, C(EOF) will be used instead.

		insertafter?: string

		// The marker line template.
		// C({mark}) will be replaced with the values C(in marker_begin) (default="BEGIN") and C(marker_end) (default="END").
		// Using a custom marker without the C({mark}) variable may result in the block being repeatedly inserted on subsequent playbook runs.

		marker?: string

		// This will be inserted at C({mark}) in the opening ansible block marker.

		marker_begin?: string

		// This will be inserted at C({mark}) in the closing ansible block marker.

		marker_end?: string

		// The file to modify.
		// Before Ansible 2.3 this option was only usable as I(dest), I(destfile) and I(name).

		path: string
	}
}

fetch :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	fetch: {

		// A directory to save the file into.
		// For example, if the I(dest) directory is C(/backup) a I(src) file named C(/etc/profile) on host C(host.example.com), would be saved into C(/backup/host.example.com/etc/profile). The host name is based on the inventory name.

		dest: string

		// When set to C(yes), the task will fail if the remote file cannot be read for any reason.
		// Prior to Ansible 2.5, setting this would only fail if the source file was missing.
		// The default was changed to C(yes) in Ansible 2.5.

		fail_on_missing?: bool

		// Allows you to override the default behavior of appending hostname/path/to/file to the destination.
		// If C(dest) ends with '/', it will use the basename of the source file, similar to the copy module.
		// This can be useful if working with a single host, or if retrieving files that are uniquely named per host.
		// If using multiple hosts with the same filename, the file will be overwritten for each host.

		flat?: bool

		// The file on the remote system to fetch.
		// This I(must) be a file, not a directory.
		// Recursive fetching may be supported in a later release.

		src: string

		// Verify that the source and destination checksums match after the files are fetched.

		validate_checksum?: bool
	}
}

iso_extract :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	iso_extract: {

		// The destination directory to extract files to.

		dest: string

		// The path to the C(7z) executable to use for extracting files from the ISO.

		executable?: string

		// A list of files to extract from the image.
		// Extracting directories does not work.

		files: [...]

		// If C(yes), which will replace the remote file when contents are different than the source.
		// If C(no), the file will only be extracted and copied if the destination does not already exist.
		// Alias C(thirsty) has been deprecated and will be removed in 2.13.

		force?: bool

		// The ISO image to extract files from.

		image: string
	}
}

patch :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	patch: {

		// Setting to C(yes) will disable patch's heuristic for transforming CRLF line endings into LF.
		// Line endings of src and dest must match.
		// If set to C(no), C(patch) will replace CRLF in C(src) files on POSIX.

		binary?: bool

		// Path of the file on the remote machine to be patched.
		// The names of the files to be patched are usually taken from the patch file, but if there's just one file to be patched it can specified with this option.

		dest?: string

		// If C(no), it will search for src at originating/master machine, if C(yes) it will go to the remote/target machine for the C(src).

		remote_src?: bool

		// Path of the patch file as accepted by the GNU patch tool. If C(remote_src) is 'no', the patch source file is looked up from the module's I(files) directory.

		src: string

		// Whether the patch should be applied or reverted.

		state?: string

		// Number that indicates the smallest prefix containing leading slashes that will be stripped from each file name found in the patch file.
		// For more information see the strip parameter of the GNU patch tool.

		strip?: int

		// Passes C(--backup --version-control=numbered) to patch, producing numbered backup copies.

		backup?: bool

		// Path of a base directory in which the patch file will be applied.
		// May be omitted when C(dest) option is specified, otherwise required.

		basedir?: string
	}
}

synchronize :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	synchronize: {

		// Transfer directories without recursing.

		dirs?: bool

		// Skip creating new files on receiver.

		existing_only?: bool

		// Preserve owner (super user only).
		// This parameter defaults to the value of the archive option.

		owner?: bool

		// Specify the private key to use for SSH-based rsync connections (e.g. C(~/.ssh/id_rsa)).

		private_key?: string

		// Specify the rsync command to run on the remote host. See C(--rsync-path) on the rsync man page.
		// To specify the rsync command to run on the local host, you need to set this your task var C(ansible_rsync_path).

		rsync_path?: string

		// Preserve modification times.
		// This parameter defaults to the value of the archive option.

		times?: bool

		// Delete files in C(dest) that don't exist (after transfer, not before) in the C(src) path.
		// This option requires C(recursive=yes).
		// This option ignores excluded files and behaves like the rsync opt --delete-excluded.

		delete?: bool

		// Path on the destination host that will be synchronized from the source.
		// The path can be absolute or relative.

		dest: string

		// Add a destination to hard link against during the rsync.

		link_dest?: [...]

		// Tells rsync to keep the partial file which should make a subsequent transfer of the rest of the file much faster.

		partial?: bool

		// Put user@ for the remote paths.
		// If you have a custom ssh config to define the remote user for a host that does not match the inventory user, you should set this parameter to C(no).

		set_remote_user?: bool

		// Verify destination host key.

		verify_host?: bool

		// Skip based on checksum, rather than mod-time & size; Note that that "archive" option is still enabled by default - the "checksum" option will not disable it.

		checksum?: bool

		// Port number for ssh on the destination host.
		// Prior to Ansible 2.0, the ansible_ssh_port inventory var took precedence over this value.
		// This parameter defaults to the value of C(ansible_ssh_port) or C(ansible_port), the C(remote_port) config setting or the value from ssh client configuration if none of the former have been set.

		dest_port?: int

		// Specify the direction of the synchronization.
		// In push mode the localhost or delegate is the source.
		// In pull mode the remote host in context is the source.

		mode?: string

		// Recurse into directories.
		// This parameter defaults to the value of the archive option.

		recursive?: bool

		// Specify additional rsync options by passing in an array.
		// Note that an empty string in C(rsync_opts) will end up transfer the current working directory.

		rsync_opts?: [...]

		// Path on the source host that will be synchronized to the destination.
		// The path can be absolute or relative.

		src: string

		// Preserve group.
		// This parameter defaults to the value of the archive option.

		group?: bool

		// Copy symlinks as symlinks.
		// This parameter defaults to the value of the archive option.

		links?: bool

		// Copy symlinks as the item that they point to (the referent) is copied, rather than the symlink.

		copy_links?: bool

		// Preserve permissions.
		// This parameter defaults to the value of the archive option.

		perms?: bool

		// Specify a C(--timeout) for the rsync command in seconds.

		rsync_timeout?: int

		// Use the ssh_args specified in ansible.cfg.

		use_ssh_args?: bool

		// Mirrors the rsync archive flag, enables recursive, links, perms, times, owner, group flags and -D.

		archive?: bool

		// Compress file data during the transfer.
		// In most cases, leave this enabled unless it causes problems.

		compress?: bool
	}
}

archive :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	archive: {

		// Remove any added source files and trees after adding to archive.

		remove?: bool

		// The file name of the destination archive.  The parent directory must exists on the remote host.
		// This is required when C(path) refers to multiple files by either specifying a glob, a directory or multiple paths in a list.

		dest?: string

		// Remote absolute path, glob, or list of paths or globs for the file or files to exclude from the archive.

		exclude_path?: [...]

		// Allow you to force the module to treat this as an archive even if only a single file is specified.
		// By default behaviour is maintained. i.e A when a single file is specified it is compressed only (not archived).

		force_archive?: bool

		// The type of compression to use.
		// Support for xz was added in Ansible 2.5.

		format?: string

		// Remote absolute path, glob, or list of paths or globs for the file or files to compress or archive.

		path: [...]
	}
}

assemble :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	assemble: {

		// A delimiter to separate the file contents.

		delimiter?: string

		// A file to create using the concatenation of all of the source files.

		dest: string

		// A boolean that controls if files that start with a '.' will be included or not.

		ignore_hidden?: bool

		// Assemble files only if C(regex) matches the filename.
		// If not set, all files are assembled.
		// Every "\" (backslash) must be escaped as "\\" to comply to YAML syntax.
		// Uses L(Python regular expressions,http://docs.python.org/2/library/re.html).

		regexp?: string

		// If C(no), it will search for src at originating/master machine.
		// If C(yes), it will go to the remote/target machine for the src.

		remote_src?: bool

		// An already existing directory full of source files.

		src: string

		// The validation command to run before copying into place.
		// The path to the file to validate is passed in via '%s' which must be present as in the sshd example below.
		// The command is passed securely so shell features like expansion and pipes won't work.

		validate?: string

		// Create a backup file (if C(yes)), including the timestamp information so you can get the original file back if you somehow clobbered it incorrectly.

		backup?: bool
	}
}

file :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	file: {

		// This parameter indicates the time the file's modification time should be set to.
		// Should be C(preserve) when no modification is required, C(YYYYMMDDHHMM.SS) when using default time format, or C(now).
		// Default is None meaning that C(preserve) is the default for C(state=[file,directory,link,hard]) and C(now) is default for C(state=touch).

		modification_time?: string

		// When used with C(modification_time), indicates the time format that must be used.
		// Based on default Python format (see time.strftime doc).

		modification_time_format?: string

		// Path to the file being managed.

		path: string

		// Recursively set the specified file attributes on directory contents.
		// This applies only when C(state) is set to C(directory).

		recurse?: bool

		// When used with C(access_time), indicates the time format that must be used.
		// Based on default Python format (see time.strftime doc).

		access_time_format?: string

		// This flag indicates that filesystem links, if they exist, should be followed.
		// Previous to Ansible 2.5, this was C(no) by default.

		follow?: bool

		// Path of the file to link to.
		// This applies only to C(state=link) and C(state=hard).
		// For C(state=link), this will also accept a non-existing path.
		// Relative paths are relative to the file being created (C(path)) which is how the Unix command C(ln -s SRC DEST) treats relative paths.

		src?: string

		// If C(absent), directories will be recursively deleted, and files or symlinks will be unlinked. In the case of a directory, if C(diff) is declared, you will see the files and folders deleted listed under C(path_contents). Note that C(absent) will not cause C(file) to fail if the C(path) does not exist as the state did not change.
		// If C(directory), all intermediate subdirectories will be created if they do not exist. Since Ansible 1.7 they will be created with the supplied permissions.
		// If C(file), without any other options this works mostly as a 'stat' and will return the current state of C(path). Even with other options (i.e C(mode)), the file will be modified but will NOT be created if it does not exist; see the C(touch) value or the M(copy) or M(template) module if you want that behavior.
		// If C(hard), the hard link will be created or changed.
		// If C(link), the symbolic link will be created or changed.
		// If C(touch) (new in 1.4), an empty file will be created if the C(path) does not exist, while an existing file or directory will receive updated file access and modification times (similar to the way C(touch) works from the command line).

		state?: string

		// This parameter indicates the time the file's access time should be set to.
		// Should be C(preserve) when no modification is required, C(YYYYMMDDHHMM.SS) when using default time format, or C(now).
		// Default is C(None) meaning that C(preserve) is the default for C(state=[file,directory,link,hard]) and C(now) is default for C(state=touch).

		access_time?: string

		// Force the creation of the symlinks in two cases: the source file does not exist (but will appear later); the destination exists and is a file (so, we need to unlink the C(path) file and create symlink to the C(src) file in place of it).

		force?: bool
	}
}

lineinfile :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	lineinfile: {

		// Create a backup file including the timestamp information so you can get the original file back if you somehow clobbered it incorrectly.

		backup?: bool

		// Used with C(insertafter) or C(insertbefore).
		// If set, C(insertafter) and C(insertbefore) will work with the first line that matches the given regular expression.

		firstmatch?: bool

		// Used with C(state=present).
		// If specified, the line will be inserted after the last match of specified regular expression.
		// If the first match is required, use(firstmatch=yes).
		// A special value is available; C(EOF) for inserting the line at the end of the file.
		// If specified regular expression has no matches, EOF will be used instead.
		// If C(insertbefore) is set, default value C(EOF) will be ignored.
		// If regular expressions are passed to both C(regexp) and C(insertafter), C(insertafter) is only honored if no match for C(regexp) is found.
		// May not be used with C(backrefs) or C(insertbefore).

		insertafter?: string

		// All arguments accepted by the M(file) module also work here.

		others?: string

		// Whether the line should be there or not.

		state?: string

		// Used with C(state=present).
		// If set, C(line) can contain backreferences (both positional and named) that will get populated if the C(regexp) matches.
		// This parameter changes the operation of the module slightly; C(insertbefore) and C(insertafter) will be ignored, and if the C(regexp) does not match anywhere in the file, the file will be left unchanged.
		// If the C(regexp) does match, the last matching line will be replaced by the expanded line parameter.

		backrefs?: bool

		// Used with C(state=present).
		// If specified, the file will be created if it does not already exist.
		// By default it will fail if the file is missing.

		create?: bool

		// Used with C(state=present).
		// If specified, the line will be inserted before the last match of specified regular expression.
		// If the first match is required, use C(firstmatch=yes).
		// A value is available; C(BOF) for inserting the line at the beginning of the file.
		// If specified regular expression has no matches, the line will be inserted at the end of the file.
		// If regular expressions are passed to both C(regexp) and C(insertbefore), C(insertbefore) is only honored if no match for C(regexp) is found.
		// May not be used with C(backrefs) or C(insertafter).

		insertbefore?: string

		// The line to insert/replace into the file.
		// Required for C(state=present).
		// If C(backrefs) is set, may contain backreferences that will get expanded with the C(regexp) capture groups if the regexp matches.

		line?: string

		// The file to modify.
		// Before Ansible 2.3 this option was only usable as I(dest), I(destfile) and I(name).

		path: string

		// The regular expression to look for in every line of the file.
		// For C(state=present), the pattern to replace if found. Only the last line found will be replaced.
		// For C(state=absent), the pattern of the line(s) to remove.
		// If the regular expression is not matched, the line will be added to the file in keeping with C(insertbefore) or C(insertafter) settings.
		// When modifying a line the regexp should typically match both the initial state of the line as well as its state after replacement by C(line) to ensure idempotence.
		// Uses Python regular expressions. See U(http://docs.python.org/2/library/re.html).

		regexp?: string
	}
}

stat :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	stat: {

		// Whether to follow symlinks.

		follow?: bool

		// Get file attributes using lsattr tool if present.

		get_attributes?: bool

		// Whether to return a checksum of the file.

		get_checksum?: bool

		// Use file magic and return data about the nature of the file. this uses the 'file' utility found on most Linux/Unix systems.
		// This will add both `mime_type` and 'charset' fields to the return, if possible.
		// In Ansible 2.3 this option changed from 'mime' to 'get_mime' and the default changed to 'Yes'.

		get_mime?: bool

		// The full path of the file/object to get the facts of.

		path: string

		// Algorithm to determine checksum of file.
		// Will throw an error if the host is unable to use specified algorithm.
		// The remote host has to support the hashing method specified, C(md5) can be unavailable if the host is FIPS-140 compliant.

		checksum_algorithm?: string
	}
}

xattr :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	xattr: {

		// The value to set the named name/key to, it automatically sets the C(state) to 'set'.

		value?: string

		// If C(yes), dereferences symlinks and sets/gets attributes on symlink target, otherwise acts on symlink itself.

		follow?: bool

		// The name of a specific Extended attribute key to set/retrieve.

		key?: string

		// Namespace of the named name/key.

		namespace?: string

		// The full path of the file/object to get the facts of.
		// Before 2.3 this option was only usable as I(name).

		path: string

		// defines which state you want to do. C(read) retrieves the current value for a C(key) (default) C(present) sets C(name) to C(value), default if value is set C(all) dumps all data C(keys) retrieves all keys C(absent) deletes the key

		state?: string
	}
}

acl :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	acl: {

		// If the target is a directory, setting this to C(yes) will make it the default ACL for entities created inside the directory.
		// Setting C(default) to C(yes) causes an error if the path is a file.

		default?: bool

		// The entity type of the ACL to apply, see C(setfacl) documentation for more info.

		etype?: string

		// The full path of the file or object.

		path: string

		// The permissions to apply/remove can be any combination of C(r), C(w) and C(x) (read, write and execute respectively)

		permissions?: string

		// Define whether the ACL should be present or not.
		// The C(query) state gets the current ACL without changing it, for use in C(register) operations.

		state?: string

		// Use NFSv4 ACLs instead of POSIX ACLs.

		use_nfsv4_acls?: bool

		// The actual user or group that the ACL applies to when matching entity types user or group are selected.

		entity?: string

		// DEPRECATED.
		// The ACL to set or remove.
		// This must always be quoted in the form of C(<etype>:<qualifier>:<perms>).
		// The qualifier may be empty for some types, but the type and perms are always required.
		// C(-) can be used as placeholder when you do not care about permissions.
		// This is now superseded by entity, type and permissions fields.

		entry?: string

		// Whether to follow symlinks on the path if a symlink is encountered.

		follow?: bool

		// Select if and when to recalculate the effective right masks of the files.
		// See C(setfacl) documentation for more info.
		// Incompatible with C(state=query).

		recalculate_mask?: string

		// Recursively sets the specified ACL.
		// Incompatible with C(state=query).

		recursive?: bool
	}
}

copy :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	copy: {

		// When used instead of C(src), sets the contents of a file directly to the specified value.
		// Works only when C(dest) is a file. Creates the file if it does not exist.
		// For advanced formatting or if C(content) contains a variable, use the M(template) module.

		content?: string

		// When doing a recursive copy set the mode for the directories.
		// If this is not set we will use the system defaults.
		// The mode is only set on directories which are newly created, and will not affect those that already existed.

		directory_mode?: _

		// Influence whether the remote file must always be replaced.
		// If C(yes), the remote file will be replaced when contents are different than the source.
		// If C(no), the file will only be transferred if the destination does not exist.
		// Alias C(thirsty) has been deprecated and will be removed in 2.13.

		force?: bool

		// The permissions of the destination file or directory.
		// For those used to C(/usr/bin/chmod) remember that modes are actually octal numbers. You must either add a leading zero so that Ansible's YAML parser knows it is an octal number (like C(0644) or C(01777))or quote it (like C('644') or C('1777')) so Ansible receives a string and can do its own conversion from string into number. Giving Ansible a number without following one of these rules will end up with a decimal number which will have unexpected results.
		// As of Ansible 1.8, the mode may be specified as a symbolic mode (for example, C(u+rwx) or C(u=rw,g=r,o=r)).
		// As of Ansible 2.3, the mode may also be the special string C(preserve).
		// C(preserve) means that the file will be given the same permissions as the source file.

		mode?: string

		// Local path to a file to copy to the remote server.
		// This can be absolute or relative.
		// If path is a directory, it is copied recursively. In this case, if path ends with "/", only inside contents of that directory are copied to destination. Otherwise, if it does not end with "/", the directory itself with all contents is copied. This behavior is similar to the C(rsync) command line tool.

		src?: string

		// Influence whether C(src) needs to be transferred or already is present remotely.
		// If C(no), it will search for C(src) at originating/master machine.
		// If C(yes) it will go to the remote/target machine for the C(src).
		// C(remote_src) supports recursive copying as of version 2.8.
		// C(remote_src) only works with C(mode=preserve) as of version 2.6.

		remote_src?: bool

		// Create a backup file including the timestamp information so you can get the original file back if you somehow clobbered it incorrectly.

		backup?: bool

		// SHA1 checksum of the file being transferred.
		// Used to validate that the copy of the file was successful.
		// If this is not provided, ansible will use the local calculated checksum of the src file.

		checksum?: string

		// Remote absolute path where the file should be copied to.
		// If C(src) is a directory, this must be a directory too.
		// If C(dest) is a non-existent path and if either C(dest) ends with "/" or C(src) is a directory, C(dest) is created.
		// If I(dest) is a relative path, the starting directory is determined by the remote host.
		// If C(src) and C(dest) are files, the parent directory of C(dest) is not created and the task fails if it does not already exist.

		dest: string

		// This flag indicates that filesystem links in the destination, if they exist, should be followed.

		follow?: bool

		// This flag indicates that filesystem links in the source tree, if they exist, should be followed.

		local_follow?: bool
	}
}

tempfile :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	tempfile: {

		// Suffix of file/directory name created by module.

		suffix?: string

		// Location where temporary file or directory should be created.
		// If path is not specified, the default system temporary directory will be used.

		path?: string

		// Prefix of file/directory name created by module.

		prefix?: string

		// Whether to create file or directory.

		state?: string
	}
}

unarchive :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	unarchive: {

		// If C(remote_src=no) (default), local path to archive file to copy to the target server; can be absolute or relative. If C(remote_src=yes), path on the target server to existing archive file to unpack.
		// If C(remote_src=yes) and C(src) contains C(://), the remote machine will download the file from the URL first. (version_added 2.0). This is only for simple cases, for full download support use the M(get_url) module.

		src: string

		// If true, the file is copied from local 'master' to the target machine, otherwise, the plugin will look for src archive at the target machine.
		// This option has been deprecated in favor of C(remote_src).
		// This option is mutually exclusive with C(remote_src).

		copy?: bool

		// If the specified absolute path (file or directory) already exists, this step will B(not) be run.

		creates?: string

		// Remote absolute path where the archive should be unpacked.

		dest: string

		// Do not replace existing files that are newer than files from the archive.

		keep_newer?: bool

		// This only applies if using a https URL as the source of the file.
		// This should only set to C(no) used on personally controlled sites using self-signed certificate.
		// Prior to 2.2 the code worked as if this was set to C(yes).

		validate_certs?: bool

		// List the directory and file entries that you would like to exclude from the unarchive action.

		exclude?: [...]

		// Specify additional options by passing in an array.
		// Each space-separated command-line option should be a new element of the array. See examples.
		// Command-line options with multiple elements must use multiple lines in the array, one for each element.

		extra_opts?: [...]

		// If set to True, return the list of files that are contained in the tarball.

		list_files?: bool

		// Set to C(yes) to indicate the archived file is already on the remote system and not local to the Ansible controller.
		// This option is mutually exclusive with C(copy).

		remote_src?: bool
	}
}

find :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	find: {

		// Select files whose age is equal to or greater than the specified time.
		// Use a negative age to find files equal to or less than the specified time.
		// You can choose seconds, minutes, hours, days, or weeks by specifying the first letter of any of those words (e.g., "1w").

		age?: string

		// Type of file to select.
		// The 'link' and 'any' choices were added in Ansible 2.3.

		file_type?: string

		// Set this to C(yes) to include hidden files, otherwise they will be ignored.

		hidden?: bool

		// Set this to C(yes) to retrieve a file's SHA1 checksum.

		get_checksum?: bool

		// Select files whose size is equal to or greater than the specified size.
		// Use a negative size to find files equal to or less than the specified size.
		// Unqualified values are in bytes but b, k, m, g, and t can be appended to specify bytes, kilobytes, megabytes, gigabytes, and terabytes, respectively.
		// Size is not evaluated for directories.

		size?: string

		// One or more (shell or regex) patterns, which type is controlled by C(use_regex) option.
		// Items whose basenames match an C(excludes) pattern are culled from C(patterns) matches. Multiple patterns can be specified using a list.

		excludes?: [...]

		// List of paths of directories to search. All paths must be fully qualified.

		paths: [...]

		// If target is a directory, recursively descend into the directory looking for files.

		recurse?: bool

		// One or more (shell or regex) patterns, which type is controlled by C(use_regex) option.
		// The patterns restrict the list of files to be returned to those whose basenames match at least one of the patterns specified. Multiple patterns can be specified using a list.
		// The pattern is matched against the file base name, excluding the directory.
		// When using regexen, the pattern MUST match the ENTIRE file name, not just parts of it. So if you are looking to match all files ending in .default, you'd need to use '.*\.default' as a regexp and not just '\.default'.
		// This parameter expects a list, which can be either comma separated or YAML. If any of the patterns contain a comma, make sure to put them in a list to avoid splitting the patterns in undesirable ways.

		patterns?: [...]

		// If C(no), the patterns are file globs (shell).
		// If C(yes), they are python regexes.

		use_regex?: bool

		// Choose the file property against which we compare age.

		age_stamp?: string

		// A regular expression or pattern which should be matched against the file content.

		contains?: string

		// Set the maximum number of levels to descend into.
		// Setting recurse to C(no) will override this value, which is effectively depth 1.
		// Default is unlimited depth.

		depth?: int

		// Set this to C(yes) to follow symlinks in path for systems with python 2.6+.

		follow?: bool
	}
}

ini_file :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	ini_file: {

		// If set to C(absent) the option or section will be removed if present instead of created.

		state?: string

		// Allow option without value and without '=' symbol.

		allow_no_value?: bool

		// Create a backup file including the timestamp information so you can get the original file back if you somehow clobbered it incorrectly.

		backup?: bool

		// If set to C(no), the module will fail if the file does not already exist.
		// By default it will create the file if it is missing.

		create?: bool

		// Do not insert spaces before and after '=' symbol.

		no_extra_spaces?: bool

		// If set (required for changing a I(value)), this is the name of the option.
		// May be omitted if adding/removing a whole I(section).

		option?: string

		// Path to the INI-style file; this file is created if required.
		// Before Ansible 2.3 this option was only usable as I(dest).

		path: string

		// Section name in INI file. This is added if C(state=present) automatically when a single value is being set.
		// If left empty or set to C(null), the I(option) will be placed before the first I(section).
		// Using C(null) is also required if the config format does not support sections.

		section: string

		// The string value to be associated with an I(option).
		// May be omitted when removing an I(option).

		value?: string
	}
}

read_csv :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	read_csv: {

		// The CSV filename to read data from.

		path: string

		// Whether to ignore any whitespaces immediately following the delimiter.
		// When using this parameter, you change the default value used by C(dialect).
		// The default value depends on the dialect used.

		skipinitialspace?: bool

		// Whether to raise an exception on bad CSV input.
		// When using this parameter, you change the default value used by C(dialect).
		// The default value depends on the dialect used.

		strict?: bool

		// Whether the C(key) used is expected to be unique.

		unique?: bool

		// A one-character string used to separate fields.
		// When using this parameter, you change the default value used by C(dialect).
		// The default value depends on the dialect used.

		delimiter?: string

		// The CSV dialect to use when parsing the CSV file.
		// Possible values include C(excel), C(excel-tab) or C(unix).

		dialect?: string

		// A list of field names for every column.
		// This is needed if the CSV does not have a header.

		fieldnames?: [...]

		// The column name used as a key for the resulting dictionary.
		// If C(key) is unset, the module returns a list of dictionaries, where each dictionary is a row in the CSV file.

		key?: string
	}
}

replace :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	replace: {

		// If specified, only content before this match will be replaced/removed.
		// Can be used in combination with C(after).
		// Uses Python regular expressions; see U(http://docs.python.org/2/library/re.html).
		// Uses DOTALL, which means the C(.) special character I(can match newlines).

		before?: string

		// The character encoding for reading and writing the file.

		encoding?: string

		// All arguments accepted by the M(file) module also work here.

		others?: string

		// The file to modify.
		// Before Ansible 2.3 this option was only usable as I(dest), I(destfile) and I(name).

		path: string

		// The regular expression to look for in the contents of the file.
		// Uses Python regular expressions; see U(http://docs.python.org/2/library/re.html).
		// Uses MULTILINE mode, which means C(^) and C($) match the beginning and end of the file, as well as the beginning and end respectively of I(each line) of the file.
		// Does not use DOTALL, which means the C(.) special character matches any character I(except newlines). A common mistake is to assume that a negated character set like C([^#]) will also not match newlines.
		// In order to exclude newlines, they must be added to the set like C([^#\n]).
		// Note that, as of Ansible 2.0, short form tasks should have any escape sequences backslash-escaped in order to prevent them being parsed as string literal escapes. See the examples.

		regexp: string

		// The string to replace regexp matches.
		// May contain backreferences that will get expanded with the regexp capture groups if the regexp matches.
		// If not set, matches are removed entirely.
		// Backreferences can be used ambiguously like C(\1), or explicitly like C(\g<1>).

		replace?: string

		// If specified, only content after this match will be replaced/removed.
		// Can be used in combination with C(before).
		// Uses Python regular expressions; see U(http://docs.python.org/2/library/re.html).
		// Uses DOTALL, which means the C(.) special character I(can match newlines).

		after?: string

		// Create a backup file including the timestamp information so you can get the original file back if you somehow clobbered it incorrectly.

		backup?: bool
	}
}

template :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	template: {

		follow?: bool

		// Determine whether symbolic links should be followed.
		// When set to C(yes) symbolic links will be followed, if they exist.
		// When set to C(no) symbolic links will not be followed.
		// Previous to Ansible 2.4, this was hardcoded as C(yes).
	}
}

xml :: {
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	xml: {

		// Create a backup file including the timestamp information so you can get the original file back if you somehow clobbered it incorrectly.

		backup?: bool

		// Add additional child-element(s) before the first selected element for a given C(xpath).
		// Child elements must be given in a list and each item may be either a string (eg. C(children=ansible) to add an empty C(<ansible/>) child element), or a hash where the key is an element name and the value is the element value.
		// This parameter requires C(xpath) to be set.

		insertbefore?: bool

		// The namespace C(prefix:uri) mapping for the XPath expression.
		// Needs to be a C(dict), not a C(list) of items.

		namespaces?: {...}

		// Pretty print XML output.

		pretty_print?: bool

		// Desired state of the selected attribute.
		// Either a string, or to unset a value, the Python C(None) keyword (YAML Equivalent, C(null)).
		// Elements default to no value (but present).
		// Attributes default to an empty string.

		value?: _

		// A valid XPath expression describing the item(s) you want to manipulate.
		// Operates on the document root, C(/), by default.

		xpath?: string

		// Search for a given C(xpath) and get content.
		// This parameter requires C(xpath) to be set.

		content?: string

		// Search for a given C(xpath) and provide the count of any matches.
		// This parameter requires C(xpath) to be set.

		count?: bool

		// Path to the file to operate on.
		// This file must exist ahead of time.
		// This parameter is required, unless C(xmlstring) is given.

		path: string

		// Search for a given C(xpath) and print out any matches.
		// This parameter requires C(xpath) to be set.

		print_match?: bool

		// A string containing XML on which to operate.
		// This parameter is required, unless C(path) is given.

		xmlstring: string

		// Add additional child-element(s) to a selected element for a given C(xpath).
		// Child elements must be given in a list and each item may be either a string (eg. C(children=ansible) to add an empty C(<ansible/>) child element), or a hash where the key is an element name and the value is the element value.
		// This parameter requires C(xpath) to be set.

		add_children?: [...]

		// Set the child-element(s) of a selected element for a given C(xpath).
		// Removes any existing children.
		// Child elements must be specified as in C(add_children).
		// This parameter requires C(xpath) to be set.

		set_children?: [...]

		// Set or remove an xpath selection (node(s), attribute(s)).

		state?: string

		// The attribute to select when using parameter C(value).
		// This is a string, not prepended with C(@).

		attribute?: _

		// Type of input for C(add_children) and C(set_children).

		input_type?: string

		// Add additional child-element(s) after the last selected element for a given C(xpath).
		// Child elements must be given in a list and each item may be either a string (eg. C(children=ansible) to add an empty C(<ansible/>) child element), or a hash where the key is an element name and the value is the element value.
		// This parameter requires C(xpath) to be set.

		insertafter?: bool

		// Remove CDATA tags surrounding text values.
		// Note that this might break your XML file if text values contain characters that could be interpreted as XML.

		strip_cdata_tags?: bool
	}
}
