Role Name
=========

Installs consul-template as either an upstart or systemd service.

Requirements
------------

Any pre-requisites that may not be covered by Ansible itself or the role should be mentioned here. For instance, if the role uses the EC2 module, it may be a good idea to mention in this section that the boto package is required.

Role Variables
--------------

A description of the settable variables for this role should go here, including any variables that are in defaults/main.yml, vars/main.yml, and any variables that can/should be set via parameters to the role. Any variables that are read from other roles and/or the global scope (ie. hostvars, group vars, etc.) should be mentioned here as well.

Dependencies
------------

Depends on ansible-consul role if consul-template needs to talk to a local Consul server.

Example Playbook
----------------


- hosts: consul-template-servers
  sudo: yes
  roles:
    - ansible-consul
    - ansible-consul-template
  vars:
    consul_is_ui: false
    consul_is_server: true
    consul_datacenter: "gce-us-central1-a"
    consul_bootstrap: true
    consul_bind_address: "{{ ansible_default_ipv4['address'] }}"
    use_systemd: true
    use_upstart: false


License
-------

Apache v2.0

Author Information
------------------

Grig Gheorghiu
http://agiletesting.blogspot.com
