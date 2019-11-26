package ansible

module: htpasswd: {
	module:            "htpasswd"
	version_added:     "1.3"
	short_description: "manage user files for basic authentication"
	description: [
		"Add and remove username/password entries in a password file using htpasswd.",
		"This is used by web servers such as Apache and Nginx for basic authentication.",
	]
	options: {
		path: {
			required: true
			aliases: ["dest", "destfile"]
			description: [
				"Path to the file that contains the usernames and passwords",
			]
		}
		name: {
			required: true
			aliases: ["username"]
			description: [
				"User name to add or remove",
			]
		}
		password: {
			required: false
			description: [
				"Password associated with user.",
				"Must be specified if user does not exist yet.",
			]
		}
		crypt_scheme: {
			required: false
			choices: ["apr_md5_crypt", "des_crypt", "ldap_sha1", "plaintext"]
			default: "apr_md5_crypt"
			description: [
				"Encryption scheme to be used.  As well as the four choices listed here, you can also use any other hash supported by passlib, such as md5_crypt and sha256_crypt, which are linux passwd hashes.  If you do so the password file will not be compatible with Apache or Nginx",
			]
		}

		state: {
			required: false
			choices: ["present", "absent"]
			default: "present"
			description: [
				"Whether the user entry should be present or not",
			]
		}
		create: {
			required: false
			type:     "bool"
			default:  "yes"
			description: [
				"Used with C(state=present). If specified, the file will be created if it does not already exist. If set to \"no\", will fail if the file does not exist",
			]
		}
	}

	notes: [
		"This module depends on the I(passlib) Python library, which needs to be installed on all target systems.",
		"On Debian, Ubuntu, or Fedora: install I(python-passlib).",
		"On RHEL or CentOS: Enable EPEL, then install I(python-passlib).",
	]
	requirements: ["passlib>=1.6"]
	author:                         "Ansible Core Team"
	extends_documentation_fragment: "files"
}
