package playbook

import (
  "github.com/adieu/cue-ansible/module/utilities/logic"
  "github.com/adieu/cue-ansible/module/files"
  "github.com/adieu/cue-ansible/module/commands"
  "github.com/adieu/cue-ansible/module/system"
  "github.com/adieu/cue-ansible/module/packaging/os"
)

upgrade_tasks: [
  logic.debug & {
    debug: msg: "This server is running Ubuntu 16.04 LTS and will be upgraded to 18.04 LTS."
  },
  files.file & {
    name: "Remove the EOL message of the day if one exists."
    file: {
      path: "{{ item }}"
      state: "absent"
    }
    with_items: [
      "/etc/update-motd.d/99-esm",
      "/run/motd.dynamic"
    ]
  },
  os.apt & {
    name: "Upgrade all packages to the latest version"
    apt: {
      update_cache: true
      upgrade: "full"
    }
  },
  os.apt & {
    name: "Ensure update-manager-core is installed"
    apt: {
      name: ["update-manager-core"]
      state: "present"
    }
  },
  commands.command & {
    name: "Run do-release-upgrade non-interactively."
    command: cmd: "do-release-upgrade -f DistUpgradeViewNonInteractive"
  },
  // Note: In Ansible 2.7+, use the reboot module instead.
  system.reboot & {
    name: "Reboot the server."
    reboot: {}
  },
  logic.wait_for & {
    name: "Wait for server to reboot."
    wait_for: {
      host: "{{ ansible_ssh_host }}"
      port: 22
      state: "started"
    }
    connection: "local"
    become: false
  }
]


servers: legacyservers: {
  hosts: "legacyservers"
  user: "root"
  gather_facts: true
  become: true

  tasks: [
    {
      // Use a block to perform tasks conditionally—only if running Ubuntu 16.04.
      block: upgrade_tasks
      when: "ansible_distribution == 'Ubuntu' and ansible_distribution_version == '16.04'"
    }
  ]
}


playbook: [servers.legacyservers]
