### Cluster launch sequence

This document assumes that you already have clean CentOS 7 installed onto nodes. At least, we have :))

Before we start:

- add all SSH keys you need to _user.sh_ script
- change IPs so they match yours
- place distributives into _~/hadoop___distfiles/_ on management machine
- generate/place keypair for __cluster user__ and for nodes interoperability into _~/nuvex.key/_ on management machine


1\. Create user for cluster management by executing command on each node.

`~# curl -sL https://raw.githubusercontent.com/hadoopTrainingDc/hadoopHASetup/master/user.sh | bash`

2\. Set up Ansible on any workstation you'll consider management machine.

   Just like `~# yum install -y ansible`. Or apt. Or pkg - we won't judge.

3\. Clone repository / copy its contents to management machine and `cd` into _clone-dir/new_.  
4\. Play consequently:

`~$ ansible -i hosts -m ping` to check that all nodes working, responding, accessible and ready.  
`~$ ansible-playbook -i hosts prerequisites.yml` to prepare OS on nodes.  
`~$ ansible-playbook -i hosts download.yml` to get Hadoop. Apache download center has daily limit, so tarballs are copied from local.  
`~$ ansible-playbook -i hosts copykeys.yml` to distribute SSH key for cluster user to all nodes and to make nodes trust each other.  
`~$ ansible-playbook -i hosts copyconf.yml` to place settings for Hadoop and its components to where they should be.  