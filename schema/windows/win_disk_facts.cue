package ansible

module: win_disk_facts: {
	module:            "win_disk_facts"
	version_added:     "2.5"
	short_description: "Show the attached disks and disk information of the target host"
	description: [
		"With the module you can retrieve and output detailed information about the attached disks of the target and its volumes and partitions if existent.",
	]

	requirements: [
		"Windows 8.1 / Windows 2012 (NT 6.2)",
	]
	notes: [
		"In order to understand all the returned properties and values please visit the following site and open the respective MSFT class U(https://msdn.microsoft.com/en-us/library/windows/desktop/hh830612.aspx)",
	]

	author: ["Marc Tschapek (@marqelme)"]
}
