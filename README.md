==========================
Windows Packer Templates
==========================

Packer templates for building base VM boxes.

Usage
=====

Installing Packer using Chocolatey
----------------------------------

    $ cinst -y packer
    $ cinst -y packer-windows-scripts

Running Packer
--------------



    $ git clone https://github.com/skylock/packer-windows
    $ cd packer-windows
    $ packer build template_name.json


If you want to build only vmware.



    $ packer build -only=vmware-iso template_name.json

Supported versions
------------------

This templates where tested using a packer 0.7.5 and VMware Workstation 8

### credits

These examples borrow heavily from [this blog post](http://engineering.daptiv.com/building-a-windows-vagrant-base-box-with-packer/) and also these two fine repos:

- [joefitzgerald/packer-windows](https://github.com/joefitzgerald/packer-windows)
- [box-cutter/windows-vm](https://github.com/box-cutter/windows-vm)

I expect any advances made here to get rolled into [joefitzgerald/packer-windows](https://github.com/joefitzgerald/packer-windows) when WinRM in [Packer](http://packer.io) is stable enough.
