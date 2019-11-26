package ansible

module: udm_share: {
	module:        "udm_share"
	version_added: "2.2"
	author: ["Tobias Rüetschi (@keachi)"]
	short_description: "Manage samba shares on a univention corporate server"
	description: [
		"This module allows to manage samba shares on a univention corporate server (UCS). It uses the python API of the UCS to create a new object or edit it.",
	]

	requirements: ["Python >= 2.6"]
	options: {
		state: {
			default: "present"
			choices: ["present", "absent"]
			description: ["Whether the share is present or not."]
		}
		name: {
			required: true
			description: ["Name"]
		}
		host: {
			required: false
			description: [
				"Host FQDN (server which provides the share), e.g. C({{ ansible_fqdn }}). Required if C(state=present).",
			]
		}

		path: {
			required: false
			description: ["Directory on the providing server, e.g. C(/home). Required if C(state=present)."]
		}
		samba_name: {
			required: false
			description: ["Windows name. Required if C(state=present)."]
			aliases: ["sambaName"]
		}
		ou: {
			required: true
			description: ["Organisational unit, inside the LDAP Base DN."]
		}
		owner: {
			default: 0
			description: ["Directory owner of the share's root directory."]
		}
		group: {
			default: "0"
			description: ["Directory owner group of the share's root directory."]
		}
		directorymode: {
			default: "00755"
			description: ["Permissions for the share's root directory."]
		}
		root_squash: {
			default: "1"
			choices: ["0", "1"]
			description: ["Modify user ID for root user (root squashing)."]
		}
		subtree_checking: {
			default: "1"
			choices: ["0", "1"]
			description: ["Subtree checking."]
		}
		sync: {
			default: "sync"
			description: ["NFS synchronisation."]
		}
		writeable: {
			default: "1"
			choices: ["0", "1"]
			description: ["NFS write access."]
		}
		samba_block_size: {
			description: ["Blocking size."]
			aliases: ["sambaBlockSize"]
		}
		samba_blocking_locks: {
			default: "1"
			choices: ["0", "1"]
			description: ["Blocking locks."]
			aliases: ["sambaBlockingLocks"]
		}
		samba_browseable: {
			default: "1"
			choices: ["0", "1"]
			description: ["Show in Windows network environment."]
			aliases: ["sambaBrowseable"]
		}
		samba_create_mode: {
			default: "0744"
			description: ["File mode."]
			aliases: ["sambaCreateMode"]
		}
		samba_csc_policy: {
			default: "manual"
			description: ["Client-side caching policy."]
			aliases: ["sambaCscPolicy"]
		}
		samba_custom_settings: {
			default: []
			description: ["Option name in smb.conf and its value."]
			aliases: ["sambaCustomSettings"]
		}
		samba_directory_mode: {
			default: "0755"
			description: ["Directory mode."]
			aliases: ["sambaDirectoryMode"]
		}
		samba_directory_security_mode: {
			default: "0777"
			description: ["Directory security mode."]
			aliases: ["sambaDirectorySecurityMode"]
		}
		samba_dos_filemode: {
			default: "0"
			choices: ["0", "1"]
			description: ["Users with write access may modify permissions."]
			aliases: ["sambaDosFilemode"]
		}
		samba_fake_oplocks: {
			default: "0"
			choices: ["0", "1"]
			description: ["Fake oplocks."]
			aliases: ["sambaFakeOplocks"]
		}
		samba_force_create_mode: {
			default: "0"
			choices: ["0", "1"]
			description: ["Force file mode."]
			aliases: ["sambaForceCreateMode"]
		}
		samba_force_directory_mode: {
			default: "0"
			choices: ["0", "1"]
			description: ["Force directory mode."]
			aliases: ["sambaForceDirectoryMode"]
		}
		samba_force_directory_security_mode: {
			default: "0"
			choices: ["0", "1"]
			description: ["Force directory security mode."]
			aliases: ["sambaForceDirectorySecurityMode"]
		}
		samba_force_group: {
			description: ["Force group."]
			aliases: ["sambaForceGroup"]
		}
		samba_force_security_mode: {
			default: "0"
			choices: ["0", "1"]
			description: ["Force security mode."]
			aliases: ["sambaForceSecurityMode"]
		}
		samba_force_user: {
			description: ["Force user."]
			aliases: ["sambaForceUser"]
		}
		samba_hide_files: {
			description: ["Hide files."]
			aliases: ["sambaHideFiles"]
		}
		samba_hide_unreadable: {
			default: "0"
			choices: ["0", "1"]
			description: ["Hide unreadable files/directories."]
			aliases: ["sambaHideUnreadable"]
		}
		samba_hosts_allow: {
			default: []
			description: ["Allowed host/network."]
			aliases: ["sambaHostsAllow"]
		}
		samba_hosts_deny: {
			default: []
			description: ["Denied host/network."]
			aliases: ["sambaHostsDeny"]
		}
		samba_inherit_acls: {
			default: "1"
			choices: ["0", "1"]
			description: ["Inherit ACLs."]
			aliases: ["sambaInheritAcls"]
		}
		samba_inherit_owner: {
			default: "0"
			choices: ["0", "1"]
			description: ["Create files/directories with the owner of the parent directory."]
			aliases: ["sambaInheritOwner"]
		}
		samba_inherit_permissions: {
			default: "0"
			choices: ["0", "1"]
			description: ["Create files/directories with permissions of the parent directory."]
			aliases: ["sambaInheritPermissions"]
		}
		samba_invalid_users: {
			description: ["Invalid users or groups."]
			aliases: ["sambaInvalidUsers"]
		}
		samba_level_2_oplocks: {
			default: "1"
			choices: ["0", "1"]
			description: ["Level 2 oplocks."]
			aliases: ["sambaLevel2Oplocks"]
		}
		samba_locking: {
			default: "1"
			choices: ["0", "1"]
			description: ["Locking."]
			aliases: ["sambaLocking"]
		}
		samba_msdfs_root: {
			default: "0"
			choices: ["0", "1"]
			description: ["MSDFS root."]
			aliases: ["sambaMSDFSRoot"]
		}
		samba_nt_acl_support: {
			default: "1"
			choices: ["0", "1"]
			description: ["NT ACL support."]
			aliases: ["sambaNtAclSupport"]
		}
		samba_oplocks: {
			default: "1"
			choices: ["0", "1"]
			description: ["Oplocks."]
			aliases: ["sambaOplocks"]
		}
		samba_postexec: {
			description: ["Postexec script."]
			aliases: ["sambaPostexec"]
		}
		samba_preexec: {
			description: ["Preexec script."]
			aliases: ["sambaPreexec"]
		}
		samba_public: {
			default: "0"
			choices: ["0", "1"]
			description: ["Allow anonymous read-only access with a guest user."]
			aliases: ["sambaPublic"]
		}
		samba_security_mode: {
			default: "0777"
			description: ["Security mode."]
			aliases: ["sambaSecurityMode"]
		}
		samba_strict_locking: {
			default: "Auto"
			description: ["Strict locking."]
			aliases: ["sambaStrictLocking"]
		}
		samba_vfs_objects: {
			description: ["VFS objects."]
			aliases: ["sambaVFSObjects"]
		}
		samba_valid_users: {
			description: ["Valid users or groups."]
			aliases: ["sambaValidUsers"]
		}
		samba_write_list: {
			description: ["Restrict write access to these users/groups."]
			aliases: ["sambaWriteList"]
		}
		samba_writeable: {
			default: "1"
			choices: ["0", "1"]
			description: ["Samba write access."]
			aliases: ["sambaWriteable"]
		}
		nfs_hosts: {
			default: []
			description: ["Only allow access for this host, IP address or network."]
		}
		nfs_custom_settings: {
			default: []
			description: ["Option name in exports file."]
			aliases: ["nfsCustomSettings"]
		}
	}
}
