package ansible

module: xattr: {
	module:            "xattr"
	version_added:     "1.3"
	short_description: "Manage user defined extended attributes"
	description: [
		"Manages filesystem user defined extended attributes.",
		"Requires that extended attributes are enabled on the target filesystem and that the setfattr/getfattr utilities are present.",
	]

	options: {
		path: {
			description: [
				"The full path of the file/object to get the facts of.",
				"Before 2.3 this option was only usable as I(name).",
			]
			type:     "path"
			required: true
			aliases: ["name"]
		}
		namespace: {
			description: [
				"Namespace of the named name/key.",
			]
			type:          "str"
			default:       "user"
			version_added: "2.7"
		}
		key: {
			description: [
				"The name of a specific Extended attribute key to set/retrieve.",
			]
			type: "str"
		}
		value: {
			description: [
				"The value to set the named name/key to, it automatically sets the C(state) to 'set'.",
			]
			type: "str"
		}
		state: {
			description: [
				"defines which state you want to do. C(read) retrieves the current value for a C(key) (default) C(present) sets C(name) to C(value), default if value is set C(all) dumps all data C(keys) retrieves all keys C(absent) deletes the key",
			]

			type: "str"
			choices: ["absent", "all", "keys", "present", "read"]
			default: "read"
		}
		follow: {
			description: [
				"If C(yes), dereferences symlinks and sets/gets attributes on symlink target, otherwise acts on symlink itself.",
			]

			type:    "bool"
			default: true
		}
	}
	notes: [
		"As of Ansible 2.3, the I(name) option has been changed to I(path) as default, but I(name) still works as well.",
	]
	author: ["Brian Coca (@bcoca)"]
}
