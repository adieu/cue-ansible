package ansible

module: hg: {
	module:            "hg"
	short_description: "Manages Mercurial (hg) repositories"
	description: [
		"Manages Mercurial (hg) repositories. Supports SSH, HTTP/S and local address.",
	]
	version_added: "1.0"
	author:        "Yeukhon Wong (@yeukhon)"
	options: {
		repo: {
			description: [
				"The repository address.",
			]
			required: true
			aliases: ["name"]
		}
		dest: {
			description: [
				"Absolute path of where the repository should be cloned to. This parameter is required, unless clone and update are set to no",
			]

			required: true
		}
		revision: {
			description: [
				"Equivalent C(-r) option in hg command which could be the changeset, revision number, branch name or even tag.",
			]

			aliases: ["version"]
		}
		force: {
			description: [
				"Discards uncommitted changes. Runs C(hg update -C).  Prior to 1.9, the default was `yes`.",
			]

			type:    "bool"
			default: "no"
		}
		purge: {
			description: [
				"Deletes untracked files. Runs C(hg purge).",
			]
			type:    "bool"
			default: "no"
		}
		update: {
			description: [
				"If C(no), do not retrieve new revisions from the origin repository",
			]
			type:          "bool"
			default:       "yes"
			version_added: "2.0"
		}
		clone: {
			description: [
				"If C(no), do not clone the repository if it does not exist locally.",
			]
			type:          "bool"
			default:       "yes"
			version_added: "2.3"
		}
		executable: {
			description: [
				"Path to hg executable to use. If not supplied, the normal mechanism for resolving binary paths will be used.",
			]

			version_added: "1.4"
		}
	}
	notes: [
		"This module does not support push capability. See U(https://github.com/ansible/ansible/issues/31156).",
		"If the task seems to be hanging, first verify remote host is in C(known_hosts). SSH will prompt user to authorize the first contact with a remote host.  To avoid this prompt, one solution is to add the remote host public key in C(/etc/ssh/ssh_known_hosts) before calling the hg module, with the following command: ssh-keyscan remote_host.com >> /etc/ssh/ssh_known_hosts.",
		"As per 01 Dec 2018, Bitbucket has dropped support for TLSv1 and TLSv1.1 connections. As such, if the underlying system still uses a Python version below 2.7.9, you will have issues checking out bitbucket repositories. See U(https://bitbucket.org/blog/deprecating-tlsv1-tlsv1-1-2018-12-01).",
	]
}
