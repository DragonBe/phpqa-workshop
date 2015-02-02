# PHPQA Workshop Instructions

![PHPQA Workshop](http://plopster.blob.core.windows.net/in2it/phpqa-header.png)

Hi there,


Thank you for participating in the workshop "QA for PHP projects". In order to ensure you have a great workshop experience we would like to ask you to prepare yourself so you can participate in the exercises.

This will ease the network of the venue and saves time to get started.

## Requirements

All exercises are made for PHP 5.5 or higher on a *NIX environment. If you run Windows or you don't have upgraded to PHP 5.5 or higher yet, please follow the instructions below to prepare a virtual machine we prepared for you.

## Installation instructions

### Clone the repositories

To follow along with the exercises, two repositories are available on GitHub. The easiest way is to clone them directly into your workspace.

- phpqa-workshop: https://github.com/in2it/phpqa-workshop
- phpqa-testing: https://github.com/in2it/phpqa-testing

These instructions will clone them into your workspace.

    cd /path/to/workspace
    git clone https://github.com/in2it/phpqa-workshop.git
    git clone https://github.com/in2it/phpqa-testing.git

If all is done properly, you will have now two directories:

- phpqa-workshop
- phpqa-testing

If you have renamed them into something else, please remember which labels you've given them.


### Prepare for virtual Machine


**NOTE: you can skip this step if you run PHP 5.5 or higher on a *NIX (Linux, Mac OS) system**

Ensure you download the latest versions of [VirtualBox] & [Vagrant] and have them installed on your workstation you bring to the tutorial.

If you go into the `phpqa-workshop` directory you will find a `Vagrantfile` present, which is the configuration required to start the virtual machine using Vagrant.

Start up your virtual machine

    cd phpqa-workshop
    vagrant up

You will see it's starting to download the VM and starts to provision it with the required tools.

**NOTE: in some rare occasions you see some failures to provision the VM**

If provisioning failed the first run, you can initiate it manually.

    vagrant provision

When the provisioning is done, you can SSH into the VM.

    vagrant ssh

### Run composer on both directories

During the workshop we'll discuss a couple of tools which can be installed using [Composer], the package manager for PHP. In order for you to follow along with the workshop and try things out yourself, we encourage you to install these tools as well.

Since both repositories require [Composer], we install it in the workspace you've cloned both repositories in.

    cd /path/to/workspace    

Get the latest version of composer.

    curl -sS https://getcomposer.org/installer | php

Now install required development packages in both projects

    cd phpqa-workshop/
    php ../composer.phar install
    
    cd ../phpqa-testing/
    php ../composer.phar install

## Other requirements

If there are specific topics you also want to see during the workshop, shoot me an email to [training@in2it.be].

[VirtualBox]: https://www.virtualbox.org
[Vagrant]: https://www.vagrantup.com
[Composer]: https://getcomposer.org
[training@in2it.be]: mailto://training@in2it.be
[SunshinePHP]: http://2015.sunshinephp.com

