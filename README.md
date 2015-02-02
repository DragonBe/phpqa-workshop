This is the repository for our "QA for PHP projects" workshop. Please follow the instructions to get started.

## Requirements

In order to successfully participate in the workshop exercises, make sure you have the following tools installed (preferrably the latest versions):

- [VirtualBox]
- [Vagrant]

## Clone the repository

In order to get started, you need to clone this repository. The easiest way is to follow the following commands.

    git clone https://github.com/in2it/phpqa-workshop.git

If you would like to play yourself with the configurations and such, you can also fork [this project on GitHub] to your own account and clone from there.

## Start the Vagrant box

We have provided a virtual configuration that's suited for usage throughout the workshop using Vagrant (see requirements).

    cd phpqa-workshop
    vagrant up

**NOTE:** In some rare cases, it can be that you need to call `vagrant provision` to ensure all modules are installed

## SSH into the Vagrant box

    vagrant ssh

## Exercises

When you participate in the workshop, some exercises will be given. Follow the exercises as mentioned.

## Come prepared

If you participate in the workshop, please read the full [PREPARATION](PREPARATION.md) document for details.

## Licence

This workshop is part of the full [in2it] training course "QA for PHP professionals". Copyright 2006 - 2015 &copy; [in2it] vof. All rights reserved.

[VirtualBox]: https://www.virtualbox.org
[Vagrant]: https://www.vagrantup.com
[this project on GitHub]: https://github.com/in2it/phpqa-workshop
[in2it]: http://www.in2it.be
