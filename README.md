Teamcity
===

Another vagrant box with a custom configuration.

**Table of Contents**

- [Overview](#overview)
- [Requirements](#require)
- [Quickstart](#quickstart)
- [License](#license)

## <a name="overview"></a>Overview

This project aims to facilitate the use of ``TeamCity`` avoiding Operative System dependence issues, in this way we can focus on our CI setup rather than installation configuration issues. 

**Tools on the box**

* [Ubuntu 12.04](http://releases.ubuntu.com/12.04/)
* [TeamCity 9.0.2](https://www.jetbrains.com/teamcity/)
* [Vagrant](https://www.vagrantup.com/)
* [My dot files configuration](https://github.com/iver/config)
* [OpenJDK-7](https://apps.ubuntu.com/cat/applications/precise/openjdk-7-jre/)

**About tools**


> **Vagrant** is computer software that creates and configures virtual [development environments](1). It can be seen as a higher-level [wrapper](2) around virtualization software such as [VirtualBox](3), [VMware](4), [KVM](5) and [Linux Containers](6) (LXC), and around configuration management software such as [Ansible](7), [Chef](8), [Salt](9), and [Puppet](10).

> Source: [Wikipedia](8)
    
[1]: https://en.wikipedia.org/wiki/Development_environment_(software_development_process)
[2]: https://en.wikipedia.org/wiki/Wrapper_library
[3]: https://en.wikipedia.org/wiki/VirtualBox
[4]: https://en.wikipedia.org/wiki/VMware
[5]: https://en.wikipedia.org/wiki/Kernel-based_Virtual_Machine
[6]: https://en.wikipedia.org/wiki/Linux_Containers
[7]: https://en.wikipedia.org/wiki/Ansible_(software)
[8]: https://en.wikipedia.org/wiki/Chef_(software)
[9]: https://en.wikipedia.org/wiki/Salt_(software)
[10]: https://en.wikipedia.org/wiki/Puppet_(software)
[11]: https://en.wikipedia.org/wiki/Vagrant_(software)


## <a name="require"></a>Requirements

1. You must have installed [Vagrant](http://www.vagrantup.com/downloads.html)
2. And [VirtualBox](https://www.virtualbox.org/wiki/Downloads)

## <a name="quickstart"></a>Quickstart

First at all clone our vagrant repository:

``` bash
$ git clone https://github.com/iver/teamcity.git teamcity
```

After that you can run your vagrant machine:

```
$ cd teamcity/
$ vagrant up --provision
```

Then the box will be downloaded for you with Ubuntu 12.04 VM in Virtual Box with vagrant and installs TeamCity server and a build agent as services

- TeamCity server will be running on port 8111
- TeamCity build agent will be running on port 9090

If you wish, you can learn more about it alter a [vagrant file](Vagrantfile) and its [configuration options](ConfigOptions).

## <a name="license"></a>Copyright and license

***

Copyright (c) 2017 Iván Jaimes. See [LICENSE](LICENSE) for details.

This repository was created based on [curzona's scripts repository](https://github.com/curzona/vagrant-teamcity).

## Feedback

Feedback is more than welcome; I probably got some things wrong so please tell me about it.


[Vagrant]: http://www.vagrantup.com/
[Vagrantfile]: https://github.com/iver/vagrant_golang/blob/master/Vagrantfile
[ConfigOptions]: http://docs.vagrantup.com/v2/vagrantfile/

