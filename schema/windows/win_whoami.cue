package ansible

module: win_whoami: {
	module:            "win_whoami"
	version_added:     "2.5"
	short_description: "Get information about the current user and process"
	description: [
		"Designed to return the same information as the C(whoami /all) command.",
		"Also includes information missing from C(whoami) such as logon metadata like logon rights, id, type.",
	]

	notes: [
		"If running this module with a non admin user, the logon rights will be an empty list as Administrator rights are required to query LSA for the information.",
	]

	seealso: [{
		module: "win_credential"
	}, {
		module: "win_group_membership"
	}, {
		module: "win_user_right"
	}]
	author: ["Jordan Borean (@jborean93)"]
}
