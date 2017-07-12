### JBoos Wildfly -> Vagrant (*Unstable*)
---

JBoss Wildfly setup for dev environment.

### Packages / Tools
* OpenJdk8
* Packages
    * git-core
    * build-essential
    * openssl
    * libssl-dev
    * curl
    * htop
    * links
    * bsdtar
    * unzip
* vim
* Jboss Wildfly v10.1.0

### Installation
Before you can start using this project, you have to install the vagrant-reload plugin:
```bash
$ vagrant plugin install vagrant-reload
```

In order to check if it was installed succesfull or if it is already installed, you can execute the following command:

```bash
$ vagrant plugin list
```

### Usage
After you checked out this repository and added the dependencies as explained above, you can setup and start your development VM using the following command:

```bash
$ vagrant up
```

### Credits
This project is inspired by [vagrant-javaee-wildfly](https://github.com/Phidelux/vagrant-javaee-wildfly).
